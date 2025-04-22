import 'package:antlr4/antlr4.dart';

import '../lib/parser/AsynchrGrammarLexer.dart';
import '../lib/parser/AsynchrGrammarParser.dart';
import '../lib/src/visitor/ast_builder.dart';
import '../lib/src/interpreter/interpreter.dart';

Future<void> main() async {
  final input = '''
    Доска = 5 * 5;
    Исполнитель A = (0, 0) ВПРАВО;
    Исполнитель B = (4, 4) ВЛЕВО;

    ПрограммаA = {
      ШАГ;
      ПАУЗА 1;
      ПОВЕРНИ_НАЛЕВО;
    };

    ПрограммаB = {
      ЖДУ A;
      ПОВТОРИТЬ ШАГ 2;
    };

    main = {
      A = ПрограммаA;
      B = ПрограммаB;
    };
    ?0
  ''';

  final inputStream = InputStream.fromString(input); // 👈 исправлено
  final lexer = AsynchrGrammarLexer(inputStream);
  final tokens = CommonTokenStream(lexer);
  final parser = AsynchrGrammarParser(tokens);

  final tree = parser.program();
  final program = AstBuilder().visitProgram(tree);

  final interpreter = Interpreter(program);
  interpreter.run();
}
