import 'package:antlr4/antlr4.dart';
import '../parser/AsynchrGrammarLexer.dart';
import '../parser/AsynchrGrammarParser.dart';
import '../visitor/ast_builder.dart';
import '../ast/ast.dart';

class DslRunner {
  static Program parse(String code) {
    final input = InputStream.fromString(code);
    final lexer = AsynchrGrammarLexer(input);
    final tokens = CommonTokenStream(lexer);
    final parser = AsynchrGrammarParser(tokens);

    final tree = parser.program();
    final builder = AstBuilder();
    return builder.visitProgram(tree);
  }
}
