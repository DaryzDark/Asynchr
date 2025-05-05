import 'package:flutter/material.dart';
import 'package:asynchr_simulator/runner/dsl_runner.dart';
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
      title: 'Асинхр Симулятор',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const CodeInputScreen(),
      debugShowCheckedModeBanner: false,
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
// Определение доски и объектов
Доска = 10 * 10;
Стены ((1,2), (3,3), (5,7), (6,7), (7,7));
Коробки ((4,1), (7,3));
Робот1 = (0,0) ВПРАВО;
Робот2 = (9,9) ВЛЕВО;

// Поведение первого робота - циклически движется по квадрату
Для Робот1 = {
  ПОВТОРИТЬ {
    Шаг Вперёд;
    Шаг Вперёд;
    Повернуть Вправо;
    Шаг Вперёд;
    Шаг Вперёд;
    Повернуть Вправо
  }
};
''');

  String? _error;

  Future<void> _runCode() async {
    setState(() {
      _error = null; // Очищаем предыдущую ошибку
    });
    
    try {
      // Анализ и построение AST
      final program = await DslRunner.parse(_controller.text);
      
      // Инициализация интерпретатора и контроллера
      final interpreter = Interpreter(program);
      final simController = SimulatorController(interpreter);
      
      // Переход на экран симуляции
      if (!mounted) return;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SimulatorScreen(controller: simController),
        ),
      );
    } catch (e) {
      setState(() {
        _error = 'Ошибка: ${e.toString()}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text('Асинхр - Редактор'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 2,
        actions: [
          Tooltip(
            message: 'Информация о языке',
            child: IconButton(
              icon: const Icon(Icons.help_outline),
              onPressed: () => _showLanguageInfo(context),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Редактор кода
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: _controller,
                    maxLines: null,
                    expands: true,
                    style: const TextStyle(
                      fontFamily: 'Consolas, Monaco, monospace',
                      fontSize: 14,
                      height: 1.5,
                    ),
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Введите код Асинхр...',
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Отображение ошибок
            if (_error != null)
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  border: Border.all(color: Colors.red.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.error_outline, color: Colors.red.shade700),
                        const SizedBox(width: 8),
                        Text(
                          'Ошибка компиляции',
                          style: TextStyle(
                            color: Colors.red.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _error!,
                      style: TextStyle(color: Colors.red.shade800),
                    ),
                  ],
                ),
              ),

            // Кнопка запуска
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.play_arrow),
                label: const Text('Запустить симуляцию'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
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

  void _showLanguageInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Справка по языку Асинхр'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Структура программы:', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text('1. Блок контекста - определяет доску, стены, коробки и акторов'),
              Text('2. Блок поведения - определяет поведение каждого актора'),
              SizedBox(height: 16),
              Text('Примеры команд:', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text('• Шаг Вперёд - передвинуть актора вперёд'),
              Text('• Повернуть Влево/Вправо - изменить направление'),
              Text('• Поднять_коробку/Опустить_коробку - работа с коробками'),
              Text('• ОТПРАВИТЬ "сообщение" -> Актор - отправить сообщение'),
              Text('• ПОЛУЧИТЬ "сообщение" - получить конкретное сообщение'),
              Text('• ПОЛУЧИТЬ * - получить любое сообщение'),
              SizedBox(height: 16),
              Text('Управляющие конструкции:', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text('• ЦИКЛ {...} ПОКА условие - цикл с постусловием'),
              Text('• ПОВТОРИТЬ {...} - бесконечное повторение'),
              Text('• ЕСЛИ условие ТО действие ИНАЧЕ действие - условное выражение'),
              Text('• ЖДАТЬ Актор - ожидание завершения другого актора')
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
}

