import 'ast_node.dart';
import 'context.dart';

abstract class Condition extends AstNode {}

class IdentifierCondition extends Condition {
  final String name;

  IdentifierCondition(this.name);

  @override
  String toString() => 'id("$name")';
}

class PositionCondition extends Condition {
  final Position position;

  PositionCondition(this.position);

  @override
  String toString() => 'pos($position)';
}
