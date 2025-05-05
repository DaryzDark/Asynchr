import 'context.dart';
import 'behavior.dart';
import 'query.dart';
import 'ast_node.dart';

class Program extends AstNode {
  final ContextBlock context;
  final BehaviorBlock? behavior;
  final AsyncBlock? async;
  final QueryBlock? query;

  Program({
    required this.context,
    this.behavior,
    this.async,
    this.query,
  });

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('Program(');
    buffer.writeln('  Context: $context,');
    if (behavior != null) buffer.writeln('  Behavior: $behavior,');
    if (async != null) buffer.writeln('  Async: $async,');
    if (query != null) buffer.writeln('  Query: $query,');
    buffer.write(')');
    return buffer.toString();
  }
}

