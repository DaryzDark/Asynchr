import 'dart:async';
import '../ast/ast.dart';
import '../interpreter/interpreter.dart';
import '../model/world_state.dart';
import '../ui/action_log.dart';

class Simulator {
  final Program program;
  late final Interpreter interpreter;
  
  StreamSubscription? _stateSubscription;
  StreamSubscription? _actionSubscription;
  bool _isRunning = false;
  
  // Добавляем контроллер логов
  ActionLogController? _logController;
  
  Simulator(this.program) {
    interpreter = Interpreter(program);
  }
  
  Future<void> start({
    Function(WorldState)? onStateChange,
    ActionLogController? logController
  }) async {
    if (_isRunning) return;
    
    // Сохраняем ссылку на контроллер логов
    _logController = logController;
    
    // Подписываемся на изменения состояния
    if (onStateChange != null) {
      _stateSubscription = interpreter.onStateChange.listen(onStateChange);
    }
    
    // Подписываемся на события действий
    if (_logController != null) {
      _actionSubscription = interpreter.onActionExecuted.listen((event) {
        _logController!.addEntry('${event.actorName}: ${event.actionDescription}', LogType.action);
      });
    }
    
    // Логируем запуск интерпретатора
    _logController?.addEntry('Запуск симуляции...', LogType.info);
    
    // Запускаем интерпретатор со всеми акторами
    await interpreter.start();
    _isRunning = true;
  }
  
  Future<void> startSingleThread(String threadName, {
    Function(WorldState)? onStateChange,
    ActionLogController? logController
  }) async {
    if (_isRunning) return;
    
    // Сохраняем ссылку на контроллер логов
    _logController = logController;
    
    // Подписываемся на изменения состояния
    if (onStateChange != null) {
      _stateSubscription = interpreter.onStateChange.listen(onStateChange);
    }
    
    // Подписываемся на события действий
    if (_logController != null) {
      _actionSubscription = interpreter.onActionExecuted.listen((event) {
        _logController!.addEntry('${event.actorName}: ${event.actionDescription}', LogType.action);
      });
    }
    
    // Логируем запуск потока
    _logController?.addEntry('Запуск потока $threadName...', LogType.info);
    
    // Запускаем только конкретный поток
    await interpreter.startThread(threadName);
    _isRunning = true;
  }
  
  void stop() {
    if (!_isRunning) return;
    
    interpreter.stop();
    _stateSubscription?.cancel();
    _actionSubscription?.cancel();
    _stateSubscription = null;
    _actionSubscription = null;
    _isRunning = false;
    
    // Логируем остановку
    _logController?.addEntry('Симуляция остановлена', LogType.info);
    _logController = null;
  }
  
  // Текущее состояние мира
  WorldState get currentState => interpreter.worldState;
  
  // Индикатор выполнения
  bool get isRunning => _isRunning;
}