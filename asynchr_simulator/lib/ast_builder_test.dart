import 'package:antlr4/antlr4.dart';
import '../parser/AsynchrGrammarLexer.dart';
import '../parser/AsynchrGrammarParser.dart';
import '../visitor/ast_builder.dart';

void main() async {
  final input = '''
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
