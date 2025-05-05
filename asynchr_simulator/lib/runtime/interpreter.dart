import 'dart:collection';
import 'dart:ui';
import '../ast/ast.dart';
import '../model/world_state.dart';
import '../model/actor_state.dart';

class Interpreter {
  final Program program;
  late WorldState world;

  // Основные структуры данных для исполнения
  final Map<String, List<Action>> _behaviors = {};
  final Map<String, int> _pc = {};
  
  // Новая структура для хранения стека вложенных действий
  final Map<String, List<Map<String, dynamic>>> _nestedActions = {};
  
  // Добавьте новую карту для отслеживания бесконечных циклов
  final Map<String, List<Action>> _repeatForeverCycles = {};
  
  // Структуры для сообщений и состояний
  final Map<String, Queue<String>> _messageQueues = {};
  final Map<String, bool> _waiting = {};
  final Map<String, bool> _isExecuting = {};

  Interpreter(this.program) {
    _initWorld();
    _initBehaviors();
  }

  void _initWorld() {
    // Инициализация мира из блока контекста
    final boardSize = _findBoardSize();
    final walls = _findWalls();
    final boxes = _findBoxes();
    final actors = _findActors();

    world = WorldState(
      width: boardSize.x, 
      height: boardSize.y,
      walls: walls.map((p) => Offset(p.x.toDouble(), p.y.toDouble())).toSet(),
      boxes: boxes.map((p) => Offset(p.x.toDouble(), p.y.toDouble())).toSet(),
      actors: actors,
    );
    
    // Инициализация очередей сообщений
    for (final actorName in actors.keys) {
      _messageQueues[actorName] = Queue<String>();
      _waiting[actorName] = false;
      _isExecuting[actorName] = true;
    }
  }

  void _initBehaviors() {
    // Инициализация поведений акторов
    if (program.behavior == null) return;
    
    for (final statement in program.behavior!.statements) {
      final actorId = statement.actor;
      final actions = statement.actions;
      
      // Проверка корректности данных
      if (actions == null || actions.isEmpty) {
        print("WARNING: Пустой список действий для актора $actorId");
        continue;
      }
      
      if (!world.actors.containsKey(actorId)) {
        print("WARNING: Поведение определено для несуществующего актора: $actorId");
        // Можно продолжить, если нужно инициализировать поведение для акторов,
        // которые могут появиться позже
      }
      
      _behaviors[actorId] = actions;
      _pc[actorId] = 0;
      _waiting[actorId] = false;
      _isExecuting[actorId] = true;
    }
  }

  Position _findBoardSize() {
    for (final stmt in program.context.statements) {
      if (stmt is BoardDefinition) {
        return Position(stmt.width, stmt.height);
      }
    }
    return Position(10, 10); // Значение по умолчанию
  }

  Set<Position> _findWalls() {
    final walls = <Position>{};
    for (final stmt in program.context.statements) {
      if (stmt is WallDefinition) {
        walls.addAll(stmt.positions);
      }
    }
    return walls;
  }

  Set<Position> _findBoxes() {
    final boxes = <Position>{};
    for (final stmt in program.context.statements) {
      if (stmt is BoxDefinition) {
        boxes.addAll(stmt.positions);
      }
    }
    return boxes;
  }

  Map<String, ActorState> _findActors() {
    final actors = <String, ActorState>{};
    for (final stmt in program.context.statements) {
      if (stmt is ActorDefinition) {
        actors[stmt.name] = ActorState.fromAst(
          name: stmt.name,
          astPosition: stmt.position,
          astDirection: stmt.direction,
        );
      }
    }
    return actors;
  }

  /// Выполняет действие актора
  void _execute(String actorName, Action action) {
    // Проверка существования актора
    final actor = world.actors[actorName];
    if (actor == null) {
      print("WARNING: Актор $actorName не найден");
      return;
    }

    if (action is StepCommand) {
      final next = actor.nextPosition();
      if (!world.isInsideBounds(next) || world.isWall(next)) return;
      actor.position = next;
    }
    else if (action is TurnLeftCommand) {
      actor.turnLeft();
    }
    else if (action is TurnRightCommand) {
      actor.turnRight();
    }
    else if (action is PickUpCommand) {
      if (world.boxes.contains(actor.position)) {
        world.boxes.remove(actor.position);
        actor.carryingBox = true;
      }
    }
    else if (action is DropCommand) {
      if (actor.carryingBox) {
        world.boxes.add(actor.position);
        actor.carryingBox = false;
      }
    }
    else if (action is PauseCommand) {
      // Неблокирующая пауза - просто продолжаем
    }
    else if (action is SendMessageCommand) {
      final recipientId = action.recipientId;
      if (_messageQueues.containsKey(recipientId)) {
        _messageQueues[recipientId]!.add(action.message);
        
        // Разблокировать получателя, если он ждал сообщение
        if (_waiting[recipientId] == true) {
          _waiting[recipientId] = false;
        }
      }
    }
    else if (action is ReceiveMessageCommand) {
      if (_messageQueues[actorName]!.isEmpty) {
        // Блокируем до получения сообщения
        _waiting[actorName] = true;
      } else {
        // Получаем сообщение
        final message = _messageQueues[actorName]!.removeFirst();
        // Проверяем шаблон, если нужно
        if (!action.anyMessage && message != action.pattern) {
          _waiting[actorName] = true; // Блокируем, т.к. не то сообщение
        }
      }
    }
    else if (action is WaitAction) {
      // Ждём другого актора
      final targetId = action.actorId;
      if (_isExecuting[targetId] == true) {
        _waiting[actorName] = true; // Блокируем, пока другой актор выполняется
      }
    }
    else if (action is WhileLoop) {
      final condition = action.condition;
      if (_evaluateCondition(actorName, condition)) {
        // Создаем новую структуру для текущего актора
        if (!_nestedActions.containsKey(actorName)) {
          _nestedActions[actorName] = [];
        }
        
        // Добавляем действия цикла в начало списка действий актора
        final currentActions = List<Action>.from(_behaviors[actorName] ?? []);
        final currentPos = _pc[actorName] ?? 0;
        
        // Сохраняем текущий контекст в стеке вложенных действий
        _nestedActions[actorName]!.add({
          'actions': currentActions,
          'position': currentPos + 1 // +1 чтобы пропустить текущее действие при возврате
        });
        
        // Заменяем действия актора на действия цикла
        _behaviors[actorName] = action.body;
        _pc[actorName] = 0;
      }
    }
    else if (action is RepeatForever) {
      // Храним тело цикла в специальной карте для этого актора
      _repeatForeverCycles[actorName] = action.body;
      
      // Устанавливаем действия тела цикла как текущие
      _behaviors[actorName] = action.body;
      _pc[actorName] = 0;
    }
    else if (action is ConditionalAction) {
      final condition = action.condition;
      if (_evaluateCondition(actorName, condition)) {
        _execute(actorName, action.thenAction);
      } else if (action.elseAction != null) {
        _execute(actorName, action.elseAction!);
      }
    }
    else {
      print("Неизвестное действие: $action");
    }
  }

  /// Оценивает условие
  bool _evaluateCondition(String actorName, Condition condition) {
    final actor = world.actors[actorName]!;
    
    if (condition is HasMessageCondition) {
      return _messageQueues[actorName]!.isNotEmpty;
    }
    else if (condition is PositionCondition) {
      final positionOffset = world.positionToOffset(condition.position);
      return actor.position.dx.toInt() == positionOffset.dx.toInt() && 
             actor.position.dy.toInt() == positionOffset.dy.toInt();
    }
    else if (condition is IdentifierCondition) {
      // Можно расширить для определённых переменных
      final id = condition.name;  // Было condition.identifier
      return _isExecuting[id] == false; // Проверка завершения другого актора
    }
    
    return false;
  }

  /// Выполнение одного шага всех акторов
  Future<void> step({
    Function? onStep,
    Duration delay = const Duration(milliseconds: 500),
  }) async {
    bool hasMore = false;

    for (final actor in _behaviors.keys) {
      // Пропускаем временные и заблокированные акторы
      if (actor.startsWith('_temp_') || _waiting[actor] == true) continue;
      
      final actions = _behaviors[actor]!;
      final idx = _pc[actor]!;

      if (idx < actions.length) {
        _execute(actor, actions[idx]);
        _pc[actor] = idx + 1;
        hasMore = true;

        onStep?.call();
      } else {
        // Проверяем, есть ли вложенные действия для этого актора
        if (_nestedActions.containsKey(actor) && _nestedActions[actor]!.isNotEmpty) {
          // Получаем последний контекст, но НЕ удаляем его если это бесконечный цикл
          final nestedContext = _nestedActions[actor]!.last;
          
          // Проверяем, является ли это бесконечным циклом
          if (nestedContext['is_repeat_forever'] == true) {
            // Для бесконечного цикла мы не удаляем контекст,
            // а просто сбрасываем указатель действий на начало тела цикла
            final repeatAction = nestedContext['repeat_action'] as RepeatForever;
            _behaviors[actor] = repeatAction.body;
            _pc[actor] = 0;
          } else {
            // Для обычных вложенных действий - восстанавливаем контекст и удаляем его из стека
            _nestedActions[actor]!.removeLast();
            _behaviors[actor] = nestedContext['actions'] as List<Action>;
            _pc[actor] = nestedContext['position'] as int;
          }
          
          hasMore = true;
        } else {
          // Актор завершил выполнение
          _isExecuting[actor] = false;
          
          // Разблокируем акторы, ждущие этого актора
          for (final waitingActor in _waiting.keys) {
            if (_waiting[waitingActor] == true && 
                _behaviors[waitingActor]![_pc[waitingActor]!-1] is WaitAction &&
                (_behaviors[waitingActor]![_pc[waitingActor]!-1] as WaitAction).actorId == actor) {
              _waiting[waitingActor] = false;
            }
          }
        }
      }
    }

    if (delay.inMilliseconds > 0) {
      await Future.delayed(delay);
    }

    return;
  }

  /// Запускает выполнение программы до завершения
  Future<void> run({
    Function? onStep,
    Duration delay = const Duration(milliseconds: 500),
  }) async {
    bool hasMore;

    do {
      hasMore = false;
      
      for (final actor in _behaviors.keys.toList()) {
        // Пропускаем заблокированные акторы
        if (_waiting[actor] == true) continue;
        
        // Проверка существования действий для актора
        final actions = _behaviors[actor];
        if (actions == null || actions.isEmpty) {
          print("WARNING: Действия для актора $actor отсутствуют или пусты");
          continue;
        }
        
        final idx = _pc[actor] ?? 0; // Безопасное получение счетчика
        
        if (idx < actions.length) {
          _execute(actor, actions[idx]);
          _pc[actor] = idx + 1;
          hasMore = true;

          onStep?.call();
        } else {
          // ⚠️ Ключевое изменение: проверка на бесконечный цикл
          if (_repeatForeverCycles.containsKey(actor)) {
            // Это бесконечный цикл - сбрасываем счетчик и повторяем
            _behaviors[actor] = _repeatForeverCycles[actor]!;
            _pc[actor] = 0;
            hasMore = true;
          } else if (_nestedActions.containsKey(actor) && _nestedActions[actor]!.isNotEmpty) {
            // Восстанавливаем предыдущий контекст выполнения
            final nestedContext = _nestedActions[actor]!.removeLast();
            _behaviors[actor] = nestedContext['actions'] as List<Action>;
            _pc[actor] = nestedContext['position'] as int;
            hasMore = true;
          } else {
            // Актор завершил выполнение
            _isExecuting[actor] = false;
            
            // Разблокируем акторы, ждущие этого актора
            for (final waitingActor in _waiting.keys) {
              if (_waiting[waitingActor] == true && 
                  _behaviors[waitingActor]![_pc[waitingActor]!-1] is WaitAction &&
                  (_behaviors[waitingActor]![_pc[waitingActor]!-1] as WaitAction).actorId == actor) {
                _waiting[waitingActor] = false;
                hasMore = true; // Есть что выполнять после разблокировки
              }
            }
          }
        }
      }

      if (hasMore && delay.inMilliseconds > 0) {
        await Future.delayed(delay);
      }
    } while (hasMore);
  }

  /// Возвращает копию очередей сообщений для всех акторов
  Map<String, List<String>> getMessageQueues() {
    // Конвертируем каждую очередь в список и создаём новый Map
    return Map.fromEntries(
      _messageQueues.entries.map((entry) => 
        MapEntry(entry.key, List<String>.from(entry.value))
      )
    );
  }

  /// Сбрасывает интерпретатор в начальное состояние
  void reset() {
    // Очищаем переменные состояния
    _pc.clear();
    _behaviors.clear();
    _isExecuting.clear();
    _waiting.clear();
    _messageQueues.clear();
    _nestedActions.clear(); // Очищаем стек вложенных действий
    _repeatForeverCycles.clear(); // Очищаем карту бесконечных циклов
    
    // Реинициализируем мир и поведения
    _initWorld();
    _initBehaviors();
  }

  /// Проверяет, активен ли актор (всё ещё выполняется)
  bool isActorActive(String actorId) {
    return _isExecuting[actorId] == true;
  }

  /// Устанавливает состояние мира интерпретатора
  void setWorldState(WorldState state) {
    // Создаём глубокую копию переданного состояния
    world = state.copy();
    
    // Обновляем очереди сообщений в соответствии с акторами в новом состоянии
    for (final actorName in world.actors.keys) {
      if (!_messageQueues.containsKey(actorName)) {
        _messageQueues[actorName] = Queue<String>();
      }
    }
  }
}

