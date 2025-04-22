import 'package:flutter/foundation.dart';
import '../runtime/interpreter.dart';
import '../model/world_state.dart';

class SimulatorController extends ChangeNotifier {
  final Interpreter interpreter;

  SimulatorController(this.interpreter);

  WorldState get world => interpreter.world;

  void step() {
    interpreter.step();
    notifyListeners();
  }

  void reset() {
    interpreter.reset();
    notifyListeners();
  }

  Future<void> runSimulation() async {
  await interpreter.runWithDelay(
    delay: const Duration(milliseconds: 500),
    onStep: notifyListeners,
  );
}

}

