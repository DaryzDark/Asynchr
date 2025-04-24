import 'package:asynchr_simulator/runner/dsl_runner.dart';
import 'package:flutter/material.dart';
import 'package:asynchr_simulator/controller/simulator_controller.dart';
import 'package:asynchr_simulator/ui/simulator_screen.dart';
import 'package:asynchr_simulator/runtime/interpreter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asynchr Simulator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const CodeInputScreen(),
    );
  }
}

class CodeInputScreen extends StatefulWidget {
  const CodeInputScreen({super.key});

  @override
  State<CodeInputScreen> createState() => _CodeInputScreenState();
}

class _CodeInputScreenState extends State<CodeInputScreen> {
  final TextEditingController _controller = TextEditingController(text: '''
Доска = 10 * 10;
Стены ((1,2), (3,3));
Коробки ((4,1));
Робот1 = (0,0) ВПРАВО;
Робот2 = (5,5) ВПРАВО;

Для Робот1 = {
  Шаг Вперёд;
  Повернуть Вправо;
  Шаг Вперёд;
  Повернуть Вправо;
  Шаг Вперёд;
  Повернуть Вправо;
  Шаг Вперёд
};

Для Робот2 = {
  Шаг Вперёд;
  Повернуть Вправо;
  Шаг Вперёд;
  Повернуть Вправо;
  Шаг Вперёд;
  Повернуть Вправо;
  Шаг Вперёд
};

? (4,1)
''');

  String? _error;

  void _runCode() {
    try {
      final program = DslRunner.parse(_controller.text);
      final interpreter = Interpreter(program);
      final simController = SimulatorController(interpreter);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SimulatorScreen(controller: simController),
        ),
      );
    } catch (e) {
      setState(() {
        _error = 'Ошибка при разборе: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Редактор DSL'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    controller: _controller,
                    maxLines: null,
                    expands: true,
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 14,
                      height: 1.5,
                    ),
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Введите DSL-код...',
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            if (_error != null)
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _error!,
                  style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                ),
              ),

            
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.play_arrow),
                label: const Text('Запустить симуляцию'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: _runCode,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

