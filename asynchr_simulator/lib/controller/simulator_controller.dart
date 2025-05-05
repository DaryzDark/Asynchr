import 'package:flutter/foundation.dart';
import '../runtime/interpreter.dart';
import '../model/world_state.dart';

class SimulatorController extends ChangeNotifier {
  final Interpreter interpreter;
  bool _isRunning = false;
  bool _isPaused = false;
  
  // Для отслеживания истории состояний
  final List<WorldState> _history = [];
  int _historyPosition = 0;
  
  // Фиксированная скорость выполнения симуляции
  final Duration _simulationSpeed = const Duration(milliseconds: 500);

  SimulatorController(this.interpreter) {
    // Сохраняем начальное состояние
    _addToHistory(interpreter.world);
  }

  WorldState get world => interpreter.world;
  
  bool get isRunning => _isRunning;
  bool get isPaused => _isPaused;

  // Получение информации о сообщениях для UI
  Map<String, List<String>> getMessageQueues() {
    return interpreter.getMessageQueues();
  }

  // Выполнение одного шага симуляции
  Future<void> step() async {
    if (_isPaused) _isPaused = false;
    
    await interpreter.step(onStep: () {
      _addToHistory(interpreter.world.copy());
      notifyListeners();
    });
    
    notifyListeners();
  }

  // Сброс симуляции
  void reset() {
    _isRunning = false;
    _isPaused = false;
    interpreter.reset();
    
    // Очищаем историю и добавляем начальное состояние
    _history.clear();
    _historyPosition = 0;
    _addToHistory(interpreter.world);
    
    notifyListeners();
  }

  // Запуск непрерывной симуляции
  Future<void> runSimulation() async {
    if (_isPaused) {
      _isPaused = false;
      notifyListeners();
      return;
    }
    
    _isRunning = true;
    notifyListeners();
    
    try {
      await interpreter.run(
        delay: _simulationSpeed,
        onStep: () {
          _addToHistory(interpreter.world.copy());
          notifyListeners();
          
          // Проверка на паузу
          if (_isPaused) {
            throw _PauseSimulationException();
          }
        },
      );
    } on _PauseSimulationException {
      // Симуляция приостановлена, ничего не делаем
    } finally {
      _isRunning = false;
      notifyListeners();
    }
  }

  // Пауза симуляции
  void pauseSimulation() {
    _isPaused = true;
    notifyListeners();
  }

  // Переход к предыдущему состоянию (для отладки)
  bool canStepBack() => _historyPosition > 0;
  
  void stepBack() {
    if (!canStepBack()) return;
    
    _historyPosition--;
    _applyHistoryState();
    notifyListeners();
  }

  // Переход к следующему состоянию (для отладки)
  bool canStepForward() => _historyPosition < _history.length - 1;
  
  void stepForward() {
    if (!canStepForward()) return;
    
    _historyPosition++;
    _applyHistoryState();
    notifyListeners();
  }

  // Получить список всех акторов
  List<String> getActors() {
    return interpreter.world.actors.keys.toList();
  }

  // Проверить активность актора
  bool isActorActive(String actorId) {
    return interpreter.isActorActive(actorId);
  }

  // Внутренние методы для работы с историей
  void _addToHistory(WorldState state) {
    // Если мы в середине истории, удаляем все состояния после текущего
    if (_historyPosition < _history.length - 1) {
      _history.removeRange(_historyPosition + 1, _history.length);
    }
    
    _history.add(state);
    _historyPosition = _history.length - 1;
    
    // Ограничиваем историю, чтобы не потреблять слишком много памяти
    if (_history.length > 100) {
      _history.removeAt(0);
      _historyPosition--;
    }
  }
  
  void _applyHistoryState() {
    interpreter.setWorldState(_history[_historyPosition]);
  }
}

// Исключение для контролируемой паузы симуляции
class _PauseSimulationException implements Exception {}

