import 'dart:async';
import 'dart:isolate';
import 'dart:ui';

import '../ast/ast.dart';
import '../model/world_state.dart';
import '../model/actor_state.dart';

/// Коллбек для обработки изменений состояния актора
typedef StateChangeCallback = void Function(String actorName, ActorState newState, Set<Offset>? worldBoxes);

/// Коллбек для обработки сообщений
typedef MessageCallback = void Function(String sender, String recipient, String content);

/// Класс, управляющий изолятом одного актора
class ActorIsolate {
  final String actorName;
  final List<Action> actions;
  final WorldState worldState;
  final StateChangeCallback onStateChange;
  final MessageCallback onMessage;
  
  Isolate? _isolate;
  ReceivePort? _receivePort;
  SendPort? _isolateSendPort;
  
  ActorIsolate({
    required this.actorName,
    required this.actions, 
    required this.worldState,
    required this.onStateChange,
    required this.onMessage,
  });
  
  /// Запуск изолята актора
  Future<void> start() async {
    try {
      // Создаем порт для приема сообщений от изолята
      _receivePort = ReceivePort();
      
      // Подготавливаем данные для изолята
      final isolateData = {
        'actorName': actorName,
        'actions': actions,
        'worldState': worldState,
        'sendPort': _receivePort!.sendPort,
      };
      
      // Запускаем изолят с отдельным потоком выполнения
      _isolate = await Isolate.spawn(
        _isolateEntryPoint, 
        isolateData,
        debugName: 'Actor_$actorName',
      );
      
      // Настраиваем обработку сообщений от изолята
      _receivePort!.listen(_handleIsolateMessage);
    } catch (e) {
      print('Ошибка при запуске изолята для актора $actorName: $e');
      rethrow;
    }
  }
  
  /// Обработка сообщений, поступающих от изолята
  void _handleIsolateMessage(dynamic message) {
    if (message is! Map<String, dynamic>) return;
    
    final type = message['type'] as String?;
    if (type == null) return;
    
    switch (type) {
      case 'init':
        // Получаем порт для отправки сообщений в изолят
        _isolateSendPort = message['sendPort'] as SendPort;
        break;
      
      case 'stateChanged':
        // Обработка изменения состояния актора
        final actorState = message['actorState'] as ActorState;
        final worldBoxes = message['worldBoxes'] as Set<Offset>?;
        onStateChange(actorName, actorState, worldBoxes);
        break;
      
      case 'actionExecuted':
        // Логирование выполненного действия (для UI)
        final description = message['description'] as String;
        print('$actorName: $description'); // Можно удалить в продакшене
        break;
        
      case 'sendMessage':
        // Обработка отправки сообщения другому актору
        final recipient = message['recipient'] as String;
        final content = message['content'] as String;
        onMessage(actorName, recipient, content);
        break;
      
      case 'completed':
        // Актор завершил выполнение программы
        print('Актор $actorName завершил выполнение программы');
        break;
    }
  }
  
  /// Отправка сообщения в изолят актора
  void notifyMessage(String sender, String content) {
    if (_isolateSendPort == null) return;
    
    _isolateSendPort!.send({
      'type': 'messageReceived',
      'sender': sender,
      'content': content,
    });
  }
  
  /// Обновление состояния мира в изоляте
  void updateWorldState(WorldState newState) {
    if (_isolateSendPort == null) return;
    
    _isolateSendPort!.send({
      'type': 'updateWorldBoxes',
      'boxes': newState.boxes,
    });
  }
  
  /// Остановка изолята
  void stop() {
    _isolate?.kill(priority: Isolate.immediate);
    _receivePort?.close();
    
    _isolate = null;
    _receivePort = null;
    _isolateSendPort = null;
  }
  
  /// Точка входа для изолята
  static void _isolateEntryPoint(Map<String, dynamic> data) {
    final actorName = data['actorName'] as String;
    final actions = data['actions'] as List<Action>;
    final worldState = data['worldState'] as WorldState;
    final mainSendPort = data['sendPort'] as SendPort;
    
    // Создаем порт для приема сообщений от основного потока
    final receivePort = ReceivePort();
    
    // Отправляем порт обратно в основной поток
    mainSendPort.send({
      'type': 'init',
      'sendPort': receivePort.sendPort,
    });
    
    // Создаем исполнитель действий для актора
    final executor = _ActorExecutor(
      actorName: actorName,
      worldState: worldState,
      mainSendPort: mainSendPort,
    );
    
    // Настраиваем обработку сообщений от основного потока
    receivePort.listen((message) {
      if (message is Map<String, dynamic>) {
        final type = message['type'] as String?;
        if (type == null) return;
        
        switch (type) {
          case 'messageReceived':
            // Обработка входящего сообщения от другого актора
            executor.handleMessage(
              message['sender'] as String,
              message['content'] as String,
            );
            break;
            
          case 'updateWorldBoxes':
            // Обновление состояния коробок в мире
            if (message.containsKey('boxes')) {
              executor.updateWorldBoxes(message['boxes'] as Set<Offset>);
            }
            break;
        }
      }
    });
    
    // Запускаем выполнение действий
    executor.executeActions(actions).then((_) {
      // Сообщаем о завершении выполнения
      mainSendPort.send({'type': 'completed'});
      
      // Закрываем порт перед выходом
      receivePort.close();
    });
  }
}

/// Класс исполнения действий актора внутри изолята
class _ActorExecutor {
  final String actorName;
  WorldState worldState;
  final SendPort mainSendPort;
  
  // Быстрый доступ к состоянию текущего актора
  ActorState get actorState => worldState.actors[actorName]!;
  
  // Для асинхронного ожидания сообщений
  Completer<void>? _messageCompleter;
  String? _expectedMessagePattern;
  
  _ActorExecutor({
    required this.actorName,
    required this.worldState,
    required this.mainSendPort,
  });
  
  /// Последовательное выполнение списка действий
  Future<void> executeActions(List<Action> actions) async {
    for (final action in actions) {
      await executeAction(action);
      
      // Задержка для визуализации и предотвращения перегрузки
      await Future.delayed(const Duration(milliseconds: 500));
    }
  }
  
  /// Выполнение одного действия
  Future<void> executeAction(Action action) async {
    // Отправляем уведомление о выполняемом действии
    _notifyAction('Выполняется: ${_getActionDescription(action)}');
    
    try {
      if (action is MoveAction) {
        _moveForward();
      } 
      else if (action is TurnLeftAction) {
        _turnLeft();
      } 
      else if (action is TurnRightAction) {
        _turnRight();
      } 
      else if (action is PickUpAction) {
        _pickUpBox();
      } 
      else if (action is DropAction) {
        _dropBox();
      } 
      else if (action is SendAction) {
        _sendMessage(action.recipient, action.message);
      } 
      else if (action is ReceiveAction) {
        await _receiveMessage(action.messagePattern);
      } 
      else if (action is PauseAction) {
        await Future.delayed(Duration(milliseconds: (action.duration * 1000).toInt()));
      } 
      else if (action is WhileLoop) {
        // Ограничение количества итераций для предотвращения зависаний
        int maxIterations = 1000;
        int iteration = 0;
        
        while (_evaluateCondition(action.condition) && iteration < maxIterations) {
          await executeActions(action.body.actions);
          iteration++;
          // Маленькая пауза для предотвращения блокировки UI
          await Future.delayed(const Duration(milliseconds: 10));
        }
        
        if (iteration >= maxIterations) {
          _notifyAction('Превышено максимальное количество итераций цикла');
        }
      } 
      else if (action is ConditionalAction) {
        if (_evaluateCondition(action.condition)) {
          await executeActions(action.thenBlock.actions);
        } else if (action.elseBlock != null) {
          await executeActions(action.elseBlock!.actions);
        }
      }
    } catch (e) {
      _notifyAction('Ошибка при выполнении действия: $e');
    }
  }
  
  /// Получение текстового описания действия для логирования
  String _getActionDescription(Action action) {
    if (action is MoveAction) return 'Шаг вперед';
    if (action is TurnLeftAction) return 'Поворот налево';
    if (action is TurnRightAction) return 'Поворот направо';
    if (action is PickUpAction) return 'Поднять коробку';
    if (action is DropAction) return 'Опустить коробку';
    if (action is SendAction) return 'Отправить сообщение ${action.recipient}: ${action.message}';
    if (action is ReceiveAction) return 'Получить сообщение ${action.messagePattern ?? "*"}';
    if (action is PauseAction) return 'Пауза ${action.duration}с';
    if (action is WhileLoop) return 'Цикл пока';
    if (action is ConditionalAction) return 'Условие если';
    return action.runtimeType.toString();
  }
  
  /// Вычисление значения условия
  bool _evaluateCondition(Condition condition) {
    if (condition is PathClearCondition) {
      final nextPos = actorState.nextPosition();
      return worldState.isInsideBounds(nextPos) && 
             !worldState.isWall(nextPos) && 
             !worldState.isBox(nextPos) && 
             !worldState.isActorAt(nextPos);
    } 
    else if (condition is BoxAheadCondition) {
      final nextPos = actorState.nextPosition();
      return worldState.isBox(nextPos);
    } 
    else if (condition is CarryingBoxCondition) {
      return actorState.boxesCarrying > 0;
    } 
    else if (condition is ActorAheadCondition) {
      final nextPos = actorState.nextPosition();
      return worldState.isActorAt(nextPos);
    } 
    else if (condition is PositionCondition) {
      final pos = actorState.position;
      return pos.dx.toInt() == condition.x && pos.dy.toInt() == condition.y;
    }
    
    return false;
  }
  
  /// Шаг вперед
  void _moveForward() {
    final nextPos = actorState.nextPosition();
    
    // Проверка возможности шага
    if (!worldState.isInsideBounds(nextPos)) {
      _notifyAction('Невозможно сделать шаг: край поля');
      return;
    }
    
    if (worldState.isWall(nextPos)) {
      _notifyAction('Невозможно сделать шаг: стена');
      return;
    }
    
    if (worldState.isActorAt(nextPos)) {
      _notifyAction('Невозможно сделать шаг: другой актор');
      return;
    }
    
    // Перемещаем актора
    actorState.position = nextPos;
    
    // Проверяем, есть ли на новой позиции коробка
    if (worldState.isBox(nextPos)) {
      _notifyAction('Шаг вперед (на клетку с коробкой)');
    } else {
      _notifyAction('Шаг вперед');
    }
    
    // Уведомляем об изменении состояния
    _notifyStateChange();
  }
  
  /// Поворот налево
  void _turnLeft() {
    actorState.turnLeft();
    _notifyAction('Поворот налево');
    _notifyStateChange();
  }
  
  /// Поворот направо
  void _turnRight() {
    actorState.turnRight();
    _notifyAction('Поворот направо');
    _notifyStateChange();
  }
  
  /// Поднятие коробки
  void _pickUpBox() {
    // Проверяем наличие коробки в текущей клетке
    final currentPos = actorState.position;
    
    if (!worldState.boxes.contains(currentPos)) {
      _notifyAction('Нет коробки для поднятия');
      return;
    }
    
    // Поднимаем коробку
    actorState.boxesCarrying++;
    worldState.boxes.remove(currentPos);
    
    _notifyAction('Коробка поднята');
    
    // Уведомляем об изменении состояния мира
    _notifyStateChange();
  }
  
  /// Опускание коробки
  void _dropBox() {
    if (actorState.boxesCarrying <= 0) {
      _notifyAction('Нет коробки для опускания');
      return;
    }
    
    // Опускаем коробку в текущей клетке
    final currentPos = actorState.position;
    actorState.boxesCarrying--;
    worldState.boxes.add(currentPos);
    
    _notifyAction('Коробка опущена');
    
    // Уведомляем об изменении состояния мира
    _notifyStateChange();
  }
  
  /// Отправка сообщения другому актору
  void _sendMessage(String recipient, String content) {
    mainSendPort.send({
      'type': 'sendMessage',
      'recipient': recipient,
      'content': content,
    });
    
    _notifyAction('Отправлено сообщение "$content" актору $recipient');
  }
  
  /// Ожидание получения сообщения
  Future<void> _receiveMessage(String? pattern) async {
    _notifyAction('Ожидание сообщения' + (pattern != null ? ' "$pattern"' : ''));
    
    // Создаем Completer для асинхронного ожидания
    _messageCompleter = Completer<void>();
    _expectedMessagePattern = pattern ?? '*';
    
    // Ожидаем получения сообщения с таймаутом
    try {
      await _messageCompleter!.future.timeout(
        const Duration(seconds: 30),
        onTimeout: () {
          _notifyAction('Таймаут ожидания сообщения');
          _messageCompleter = null;
          _expectedMessagePattern = null;
          throw TimeoutException('Timeout waiting for message');
        },
      );
    } catch (e) {
      if (e is! TimeoutException) {
        rethrow;
      }
    }
  }
  
  /// Обработка входящего сообщения
  void handleMessage(String sender, String content) {
    _notifyAction('Получено сообщение от $sender: "$content"');
    
    if (_messageCompleter != null && !_messageCompleter!.isCompleted) {
      if (_expectedMessagePattern == '*' || content == _expectedMessagePattern) {
        _messageCompleter!.complete();
        _messageCompleter = null;
        _expectedMessagePattern = null;
      }
    }
  }
  
  /// Отправка уведомления об изменении состояния
  void _notifyStateChange() {
    mainSendPort.send({
      'type': 'stateChanged',
      'actorName': actorName,
      'actorState': actorState,
      'worldBoxes': worldState.boxes,
    });
  }
  
  /// Отправка уведомления о выполненном действии
  void _notifyAction(String description) {
    mainSendPort.send({
      'type': 'actionExecuted',
      'actorName': actorName,
      'description': description
    });
  }
  
  /// Обновление состояния коробок в мире
  void updateWorldBoxes(Set<Offset> newBoxes) {
    worldState = WorldState(
      width: worldState.width,
      height: worldState.height,
      walls: worldState.walls,
      boxes: newBoxes,
      actors: worldState.actors,
    );
  }
}