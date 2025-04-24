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
        Шаг Вперёд;
        Повернуть Влево;
        Шаг Вперёд;
        Шаг Вперёд

    };

    Для Второй_Робот = {
      Шаг Вперёд;
      Повернуть Вправо;
      Шаг Вперёд
    };

    ? (4,1)
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
