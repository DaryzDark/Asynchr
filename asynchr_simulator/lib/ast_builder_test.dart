import 'package:antlr4/antlr4.dart';
import '../parser/AsynchrGrammarLexer.dart';
import '../parser/AsynchrGrammarParser.dart';
import '../visitor/ast_builder.dart';

void main() async {
  final input = '''
Доска = 1 * 10;

Коробки ( (1,5), (1,6) );

Фил1 = (1,1) ВПРАВО;                
Фил2 = (1,10) ВЛЕВО;                

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

  final charStream = InputStream.fromString(input);
  final lexer = AsynchrGrammarLexer(charStream);
  final tokens = CommonTokenStream(lexer);
  final parser = AsynchrGrammarParser(tokens);
  final tree = parser.program();

  final builder = AstBuilder();
  final ast = builder.visitProgram(tree);
  print('--- AST ---');
  print(ast);
}
