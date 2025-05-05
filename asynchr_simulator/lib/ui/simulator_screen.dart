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
      appBar: AppBar(
        title: const Text('Симулятор Асинхр'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _showHelp(context),
            tooltip: 'Справка',
          ),
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () => _showMessageQueues(context),
            tooltip: 'Сообщения',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: WorldGrid(controller: controller),
            ),
          ),
          AnimatedBuilder(
            animation: controller, 
            builder: (context, _) => ControlPanel(controller: controller)
          ),
        ],
      ),
    );
  }

  void _showHelp(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Справка'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Управление симуляцией:'),
              SizedBox(height: 8),
              ListTile(
                leading: Icon(Icons.skip_next),
                title: Text('Шаг'),
                subtitle: Text('Выполнить один шаг симуляции'),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.play_arrow),
                title: Text('Старт'),
                subtitle: Text('Запустить симуляцию до завершения'),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.replay),
                title: Text('Сброс'),
                subtitle: Text('Сбросить симуляцию в начальное состояние'),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.fast_rewind),
                title: Text('Предыдущее состояние'),
                subtitle: Text('Перейти к предыдущему состоянию симуляции'),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.fast_forward),
                title: Text('Следующее состояние'),
                subtitle: Text('Перейти к следующему состоянию симуляции'),
                dense: true,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Закрыть'),
          ),
        ],
      ),
    );
  }

  void _showMessageQueues(BuildContext context) {
    final messages = controller.getMessageQueues();
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Сообщения акторов'),
        content: SizedBox(
          width: double.maxFinite,
          child: messages.isEmpty
              ? const Center(child: Text('Нет активных сообщений'))
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final entry = messages.entries.elementAt(index);
                    return ExpansionTile(
                      title: Text('${entry.key} (${entry.value.length})'),
                      children: entry.value
                          .map((msg) => ListTile(
                                title: Text(msg),
                                dense: true,
                              ))
                          .toList(),
                    );
                  },
                ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Закрыть'),
          ),
        ],
      ),
    );
  }
}
