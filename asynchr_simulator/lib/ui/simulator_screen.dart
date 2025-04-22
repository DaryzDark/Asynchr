import 'package:flutter/material.dart';
import '../controller/simulator_controller.dart';
import 'control_panel.dart';
import 'world_grid.dart';

class SimulatorScreen extends StatelessWidget {
  final SimulatorController controller;

  const SimulatorScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Симулятор')),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: WorldGrid(controller: controller),
            ),
          ),
          ControlPanel(controller: controller),
        ],
      ),
    );
  }
}
