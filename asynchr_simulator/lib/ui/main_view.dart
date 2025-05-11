import 'package:flutter/material.dart';
import '../ast/ast.dart';
import '../simulator/simulator.dart';
import '../parser/AsynchrGrammarLexer.dart';
import '../parser/AsynchrGrammarParser.dart';
import '../visitor/ast_builder.dart';
import '../model/world_state.dart';
import 'package:antlr4/antlr4.dart';

import 'code_editor.dart';
import 'simulation_view.dart';
import 'actor_status_panel.dart';
import 'control_panel.dart';
import 'action_log.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final codeController = TextEditingController(text: _defaultProgram);
  final actionLogController = ActionLogController();
  
  Program? program;
  Simulator? simulator;
  bool isRunning = false;
  
  // Состояние для синхронизации UI
  WorldState? worldState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Симулятор Асинхр'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Левая панель - редактор кода
                Expanded(
                  flex: 2,
                  child: CodeEditor(
                    controller: codeController,
                    onParsePressed: _parseProgram,
                  ),
                ),
                
                // Средняя панель - симуляция и контроль
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      // Визуализация симуляции
                      Expanded(
                        flex: 3,
                        child: SimulationView(
                          worldState: worldState,
                        ),
                      ),
                      
                      // Панель управления
                      ControlPanel(
                        isRunning: isRunning,
                        program: program,
                        onStartAll: _startAllThreads,
                        onStopAll: _stopAllThreads,
                        onStartThread: _startThread,
                      ),
                    ],
                  ),
                ),
                
                // Правая панель - статус и логи
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      // Панель статуса акторов
                      Expanded(
                        child: ActorStatusPanel(
                          worldState: worldState,
                        ),
                      ),
                      
                      // Лог действий
                      Expanded(
                        child: ActionLog(
                          controller: actionLogController,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _parseProgram() {
    try {
      final input = codeController.text;
      final charStream = InputStream.fromString(input);
      final lexer = AsynchrGrammarLexer(charStream);
      final tokens = CommonTokenStream(lexer);
      final parser = AsynchrGrammarParser(tokens);
      final tree = parser.program();

      final builder = AstBuilder();
      final ast = builder.visitProgram(tree);

      setState(() {
        program = ast;
        simulator = Simulator(program!);
        worldState = simulator!.currentState;
        
        // Логируем успешный разбор
        actionLogController.addEntry(
          'Программа успешно разобрана. Готово к запуску.',
          LogType.success
        );
      });
    } catch (e) {
      actionLogController.addEntry(
        'Ошибка при разборе программы: $e',
        LogType.error
      );
    }
  }

  void _startAllThreads() async {
    if (simulator == null || isRunning) return;
    
    setState(() {
      isRunning = true;
    });
    
    actionLogController.addEntry(
      'Запуск всех потоков...',
      LogType.info
    );
    
    try {
      await simulator!.start(
        onStateChange: (state) {
          setState(() {
            worldState = state;
          });
        },
        logController: actionLogController // Передаем контроллер логов
      );
    } catch (e) {
      setState(() {
        isRunning = false;
      });
      
      actionLogController.addEntry(
        'Ошибка при запуске потоков: $e',
        LogType.error
      );
    }
  }
  
  void _stopAllThreads() {
    if (simulator == null || !isRunning) return;
    
    simulator!.stop();
    
    setState(() {
      isRunning = false;
    });
    
    actionLogController.addEntry(
      'Все потоки остановлены.',
      LogType.info
    );
  }
  
  void _startThread(String threadName) async {
    if (simulator == null || isRunning) return;
    
    actionLogController.addEntry(
      'Запуск потока $threadName...',
      LogType.info
    );
    
    try {
      await simulator!.startSingleThread(
        threadName,
        onStateChange: (state) {
          setState(() {
            worldState = state;
          });
        },
        logController: actionLogController // Передаем контроллер логов
      );
    } catch (e) {
      actionLogController.addEntry(
        'Ошибка при запуске потока $threadName: $e',
        LogType.error
      );
    }
  }
}

// Пример программы по умолчанию
const _defaultProgram = '''
Доска = 10 * 1;

Коробки ( (4,0), (5,0) );

Фил1 = (0,0) ВПРАВО;                
Фил2 = (9,0) ВЛЕВО;                

Набор (
  Фил1 = {
    ПОКА Впереди_Свободно {
        Шаг_Вперед
    };
    Шаг_Вперед;
    Поднять_Коробку;
    Шаг_Вперед;
    Поднять_Коробку;
    Повернуть_Вправо;
    Повернуть_Вправо;
    Опустить_Коробку;
    Шаг_Вперед;
    Опустить_Коробку;
    Шаг_Вперед;
    ОТПРАВИТЬ "Ресурсы_Освобождены" -> Фил2;
    ПОКА Впереди_Свободно {
        Шаг_Вперед
    }
  },
  Фил2 = {
    ПОЛУЧИТЬ "Ресурсы_Освобождены";
    ПОКА Впереди_Свободно {
        Шаг_Вперед
    };
    Шаг_Вперед;
    Поднять_Коробку;
    Шаг_Вперед;
    Поднять_Коробку;
    Повернуть_Вправо;
    Повернуть_Вправо;
    Опустить_Коробку;
    Шаг_Вперед;
    Опустить_Коробку;
    Шаг_Вперед;
    ПОКА Впереди_Свободно {
        Шаг_Вперед
    }
  }
);
''';