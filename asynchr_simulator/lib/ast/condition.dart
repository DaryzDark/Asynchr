import 'ast_node.dart';
import 'context.dart';

abstract class Condition extends AstNode {}

class HasMessageCondition extends Condition {
  @override
  String toString() => 'hasMessage()';
}

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

// Новые условия для асинхронной работы
class IsActiveCondition extends Condition {
  final String threadId;

  IsActiveCondition(this.threadId);

  @override
  String toString() => 'isActive("$threadId")';
}

class IsCompletedCondition extends Condition {
  final String threadId;

  IsCompletedCondition(this.threadId);

  @override
  String toString() => 'isCompleted("$threadId")';
}
