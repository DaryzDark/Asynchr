import 'package:flutter/material.dart';
import '../ast/ast.dart';

typedef ThreadCallback = void Function(String threadName);

class ControlPanel extends StatelessWidget {
  final bool isRunning;
  final Program? program;
  final VoidCallback onStartAll;
  final VoidCallback onStopAll;
  final ThreadCallback onStartThread;
  
  const ControlPanel({
    Key? key,
    required this.isRunning,
    required this.program,
    required this.onStartAll,
    required this.onStopAll,
    required this.onStartThread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Управление',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: isRunning ? null : onStartAll,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Запустить все'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: isRunning ? onStopAll : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Остановить'),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          if (program != null && program!.threadSets.isNotEmpty)
            Row(
              children: [
                const Text('Отдельные потоки: '),
                const SizedBox(width: 8),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var threadSet in program!.threadSets)
                          for (var thread in threadSet.threads)
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: OutlinedButton(
                                onPressed: isRunning
                                    ? null
                                    : () => onStartThread(thread.name),
                                child: Text(thread.name),
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}