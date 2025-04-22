import 'ast_node.dart';

class ContextBlock extends AstNode {
  final List<ContextStatement> statements;

  ContextBlock(this.statements);

  @override
  String toString() => 'ContextBlock(${statements.join(', ')})';
}

abstract class ContextStatement extends AstNode {}

class BoardDefinition extends ContextStatement {
  final int width;
  final int height;

  BoardDefinition(this.width, this.height);

  @override
  String toString() => 'Board($width * $height)';
}

class WallDefinition extends ContextStatement {
  final List<Position> positions;

  WallDefinition(this.positions);

  @override
  String toString() => 'Walls(${positions.join(', ')})';
}

class BoxDefinition extends ContextStatement {
  final List<Position> positions;

  BoxDefinition(this.positions);

  @override
  String toString() => 'Boxes(${positions.join(', ')})';
}

class ActorDefinition extends ContextStatement {
  final String name;
  final Position position;
  final Direction direction;

  ActorDefinition(this.name, this.position, this.direction);

  @override
  String toString() => 'Actor("$name", $position, $direction)';
}

class Position extends AstNode {
  final int x;
  final int y;

  Position(this.x, this.y);

  @override
  String toString() => '($x, $y)';
}

enum Direction { up, down, left, right }
