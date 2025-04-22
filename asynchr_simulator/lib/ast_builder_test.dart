import 'package:antlr4/antlr4.dart';
import '../parser/AsynchrGrammarLexer.dart';
import '../parser/AsynchrGrammarParser.dart';
import '../visitor/ast_builder.dart';

void main() async {
  final input = '''
    Доска = 5 * 5;
    Стены ((1,2), (3,3));
    Коробки ((4,1));
    Робот = (0,0) ВПРАВО;
    Второй_Робот = (4,4) ВЛЕВО;

    Для Робот = {
      ПОВТРОИТЬ {
        Шаг Вперёд;
        Повернуть Вправо
      }
    };

    Для Второй_Робот = {
      Шаг Вперёд;
      Повернуть Вправо;
      Шаг Вперёд
    };

    ? (4,1)
  ''';

  // 1. Создаём CharStream
  final charStream = InputStream.fromString(input);

  // 2. Лексер
  final lexer = AsynchrGrammarLexer(charStream);
  final tokens = CommonTokenStream(lexer);

  // 3. Парсер
  final parser = AsynchrGrammarParser(tokens);
  final tree = parser.program();

  // 4. Построение AST
  final builder = AstBuilder();
  final ast = builder.visitProgram(tree);

  // 5. Вывод AST (нужен toString в моделях!)
  print('--- AST ---');
  print(ast);
}
