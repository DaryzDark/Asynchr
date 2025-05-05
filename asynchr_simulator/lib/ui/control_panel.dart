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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildControlButton(Icons.skip_next, 'Шаг', controller.step, Colors.blue),
                _buildControlButton(
                  controller.isRunning && !controller.isPaused ? Icons.pause : Icons.play_arrow,
                  controller.isRunning && !controller.isPaused ? 'Пауза' : 'Старт',
                  controller.isRunning && !controller.isPaused 
                    ? controller.pauseSimulation 
                    : controller.runSimulation,
                  Colors.green,
                ),
                _buildControlButton(Icons.replay, 'Сброс', controller.reset, Colors.orange),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.fast_rewind),
                  onPressed: controller.canStepBack() ? controller.stepBack : null,
                  tooltip: 'Предыдущее состояние',
                  color: Colors.indigo,
                ),
                const Spacer(), // Заменяет слайдер
                IconButton(
                  icon: const Icon(Icons.fast_forward),
                  onPressed: controller.canStepForward() ? controller.stepForward : null,
                  tooltip: 'Следующее состояние',
                  color: Colors.indigo,
                ),
              ],
            ),
            const SizedBox(height: 8),
            _buildActorsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildActorsList() {
    final actorsList = controller.getActors();
    
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: actorsList.length,
        itemBuilder: (context, index) {
          final actorId = actorsList[index];
          final isActive = controller.isActorActive(actorId);
          
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Chip(
              label: Text(actorId),
              backgroundColor: isActive ? Colors.green.shade100 : Colors.grey.shade300,
              avatar: Icon(
                isActive ? Icons.play_circle_filled : Icons.stop_circle,
                color: isActive ? Colors.green : Colors.grey,
                size: 16,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildControlButton(
    IconData icon,
    String label,
    Function() onPressed,
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
