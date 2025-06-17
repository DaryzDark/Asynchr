import 'ast_node.dart';

/// Базовый класс для условий
abstract class Condition extends AstNode {}

/// Условие наличия сообщения
class MessageCondition extends Condition {
  final String? messagePattern;
  
  MessageCondition({this.messagePattern});
  
  @override
  String toString() => 'MessageCondition(pattern: ${messagePattern != null ? '"$messagePattern"' : '*'})';
}

/// Условие "Впереди свободно"
class PathClearCondition extends Condition {
  @override
  String toString() => 'PathClearCondition(Впереди_Свободно)';
}

/// Условие "Есть коробка впереди"
class BoxAheadCondition extends Condition {
  @override
  String toString() => 'BoxAheadCondition(Впереди_Коробка)';
}

/// Условие "Несу коробку"
class CarryingBoxCondition extends Condition {
  @override
  String toString() => 'CarryingBoxCondition(Несу_Коробку)';
}

/// Условие "Коллега впереди"
class ActorAheadCondition extends Condition {
  @override
  String toString() => 'ActorAheadCondition(Впереди_Агент)';
}

/// Условие идентификатора (для переменных)
class IdentifierCondition extends Condition {
  final String identifier;
  
  IdentifierCondition(this.identifier);
  
  @override
  String toString() => 'IdentifierCondition(id: "$identifier")';
}

/// Условие позиции
class PositionCondition extends Condition {
  final int x;
  final int y;
  
  PositionCondition(this.x, this.y);
  
  @override
  String toString() => 'PositionCondition(x: $x, y: $y)';
}
