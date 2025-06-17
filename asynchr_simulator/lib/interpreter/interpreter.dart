import 'dart:async';
import 'dart:ui';

import '../ast/ast.dart';
import '../model/world_state.dart';
import '../model/actor_state.dart';
import 'message_bus.dart';
import 'actor_executor.dart';

/// События, генерируемые при выполнении действий актора
class ActionExecutedEvent {
  final String actorName;
  final String actionDescription;
  
  ActionExecutedEvent(this.actorName, this.actionDescription);
  
  @override
  String toString() => '$actorName: $actionDescription';
}

/// Главный интерпретатор программы Asynchr
class Interpreter {
  final Program program;
  late WorldState worldState;
  final Map<String, ActorIsolate> _actorIsolates = {};
  final MessageBus messageBus = MessageBus();
  
  // Контроллер для уведомлений об изменениях состояния мира
  final _stateController = StreamController<WorldState>.broadcast();
  Stream<WorldState> get onStateChange => _stateController.stream;
  
  // Контроллер для уведомлений о выполненных действиях
  final _actionController = StreamController<ActionExecutedEvent>.broadcast();
  Stream<ActionExecutedEvent> get onActionExecuted => _actionController.stream;
  
  Interpreter(this.program) {
    _initializeWorldState();
    
    // Настраиваем обработку сообщений через шину сообщений
    messageBus.onMessageSent.listen((message) {
      _handleMessageBusEvent(message.sender, message.recipient, message.content);
    });
  }
  
  /// Инициализация начального состояния мира из программы
  void _initializeWorldState() {
    final context = program.context;
    
    // Создаем состояние для каждого актора
    final actorStates = <String, ActorState>{};
    for (final entry in context.actors.entries) {
      final name = entry.key;
      final actorDef = entry.value;
      
      actorStates[name] = ActorState(
        name: name,
        position: actorDef.position,
        direction: actorDef.direction,
      );
    }
    
    // Создаем начальное состояние мира
    worldState = WorldState(
      width: context.width,
      height: context.height,
      walls: context.walls,
      boxes: context.boxes,
      actors: actorStates,
    );
  }
  
  /// Запуск всех потоков программы
  Future<void> start() async {
    try {
      // Запускаем все потоки для акторов
      for (var threadSet in program.threadSets) {
        for (var thread in threadSet.threads) {
          final actorName = thread.name;
          
          if (worldState.actors.containsKey(actorName)) {
            await _startActorThread(actorName, thread.actions.actions);
          } else {
            _notifyAction('Система', 'Ошибка: актор $actorName не найден');
          }
        }
      }
    } catch (e) {
      _notifyAction('Система', 'Ошибка при запуске потоков: $e');
      rethrow;
    }
  }
  
  /// Запуск одного потока для актора
  Future<void> startThread(String threadName) async {
    try {
      // Ищем поток с указанным именем
      for (var threadSet in program.threadSets) {
        for (var thread in threadSet.threads) {
          if (thread.name == threadName) {
            final actorName = thread.name;
            
            if (worldState.actors.containsKey(actorName)) {
              await _startActorThread(actorName, thread.actions.actions);
              _notifyAction(actorName, 'Поток запущен');
              return;
            } else {
              _notifyAction('Система', 'Ошибка: актор $actorName не найден');
              return;
            }
          }
        }
      }
      
      _notifyAction('Система', 'Поток $threadName не найден');
    } catch (e) {
      _notifyAction('Система', 'Ошибка при запуске потока $threadName: $e');
      rethrow;
    }
  }
  
  /// Запуск изолята для конкретного актора
  Future<void> _startActorThread(String actorName, List<Action> actions) async {
    // Создаем и запускаем изолят для актора
    final isolate = ActorIsolate(
      actorName: actorName,
      actions: actions,
      worldState: worldState.copy(),
      onStateChange: _handleStateChange,
      onMessage: _handleMessage,
    );
    
    // Сохраняем изолят и запускаем его
    _actorIsolates[actorName] = isolate;
    await isolate.start();
    
    _notifyAction(actorName, 'Поток запущен');
  }
  
  /// Обработка изменений состояния актора
  void _handleStateChange(String actorName, ActorState newState, Set<Offset>? worldBoxes) {
    // Обновляем состояние актора в общем состоянии мира
    worldState.actors[actorName] = newState;
    
    // Если получили обновленное состояние коробок, обновляем его
    if (worldBoxes != null) {
      worldState = WorldState(
        width: worldState.width,
        height: worldState.height,
        walls: worldState.walls,
        boxes: worldBoxes, // Новое состояние коробок
        actors: worldState.actors,
      );
      
      // Синхронизируем состояние коробок со всеми акторами
      _syncWorldBoxesWithActors(actorName);
    }
    
    // Проверяем взаимодействия между акторами
    _checkActorInteractions(actorName);
    
    // Уведомляем подписчиков об изменении состояния мира
    _stateController.add(worldState.copy());
  }
  
  /// Обработка сообщений от акторов
  void _handleMessage(String sender, String recipient, String content) {
    // Передаем сообщение через шину сообщений
    messageBus.sendMessage(sender, recipient, content);
    
    // Уведомляем о событии отправки сообщения
    _notifyAction(sender, 'Отправлено сообщение "$content" -> $recipient');
  }
  
  /// Обработка события получения сообщения из шины сообщений
  void _handleMessageBusEvent(String sender, String recipient, String content) {
    // Находим изолят получателя и передаем ему сообщение
    final isolate = _actorIsolates[recipient];
    if (isolate != null) {
      isolate.notifyMessage(sender, content);
      _notifyAction(recipient, 'Получено сообщение "$content" от $sender');
    } else {
      _notifyAction('Система', 'Ошибка: актор $recipient не найден для доставки сообщения');
    }
  }
  
  /// Синхронизация состояния коробок между всеми акторами
  void _syncWorldBoxesWithActors(String excludeActor) {
    for (final entry in _actorIsolates.entries) {
      if (entry.key != excludeActor) {
        entry.value.updateWorldState(worldState.copy());
      }
    }
  }
  
  /// Проверка взаимодействий между акторами
  void _checkActorInteractions(String actorName) {
    // Получаем состояние актора
    final actor = worldState.actors[actorName];
    if (actor == null) return;
    
    // Проверяем столкновения с другими акторами
    for (final entry in worldState.actors.entries) {
      if (entry.key != actorName && actor.position == entry.value.position) {
        // Обрабатываем столкновение
        _handleCollision(actorName, entry.key);
      }
    }
  }
  
  /// Обработка столкновения между акторами
  void _handleCollision(String actor1, String actor2) {
    _notifyAction(actor1, 'Столкновение с $actor2');
    _notifyAction(actor2, 'Столкновение с $actor1');
  }
  
  /// Отправка уведомления о выполнении действия
  void _notifyAction(String actorName, String actionDescription) {
    _actionController.add(ActionExecutedEvent(actorName, actionDescription));
  }
  
  /// Остановка всех потоков и освобождение ресурсов
  void stop() {
    // Останавливаем все изоляты акторов
    for (final isolate in _actorIsolates.values) {
      isolate.stop();
    }
    
    _actorIsolates.clear();
    
    // Закрываем контроллеры потоков
    _stateController.close();
    _actionController.close();
    
    // Освобождаем ресурсы шины сообщений
    messageBus.dispose();
    
    _notifyAction('Система', 'Симуляция остановлена');
  }
}