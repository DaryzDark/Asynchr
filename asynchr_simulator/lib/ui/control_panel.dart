import 'package:flutter/material.dart';
import '../controller/simulator_controller.dart';

class ControlPanel extends StatelessWidget {
  final SimulatorController controller;

  const ControlPanel({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildControlButton(Icons.skip_next, 'Шаг', controller.step, Colors.blue),
            _buildControlButton(Icons.play_arrow, 'Всё', controller.runSimulation, Colors.green),
            _buildControlButton(Icons.replay, 'Сброс', controller.reset, Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget _buildControlButton(
    IconData icon,
    String label,
    VoidCallback onPressed,
    Color color,
  ) {
    return ElevatedButton.icon(
      icon: Icon(icon, size: 20),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
    );
  }
}
