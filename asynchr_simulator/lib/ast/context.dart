import 'dart:ui';
import 'ast_node.dart';

/// Направление
enum Direction {
  up,
  down,
  left,
  right;

  @override
  String toString() {
    return switch (this) {
      Direction.up => 'ВВЕРХ',
      Direction.down => 'ВНИЗ',
      Direction.left => 'ВЛЕВО',
      Direction.right => 'ВПРАВО',
    };
  }
}

/// Контекст выполнения
class Context extends AstNode {
  final int width;
  final int height;
  final Set<Offset> walls;
  final Set<Offset> boxes;
  final Map<String, ActorPosition> actors;

  Context({
    required this.width,
    required this.height,
    required this.walls,
    required this.boxes,
    required this.actors,
  });

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('Context(\n');
    buffer.write('  size: ${width}x$height,\n');

    buffer.write('  walls: [');
    if (walls.isNotEmpty) {
      buffer.write('\n');
      for (var wall in walls) {
        buffer.write('    (${wall.dx.toInt()}, ${wall.dy.toInt()}),\n');
      }
      buffer.write('  ');
    }
    buffer.write('],\n');

    buffer.write('  boxes: [');
    if (boxes.isNotEmpty) {
      buffer.write('\n');
      for (var box in boxes) {
        buffer.write('    (${box.dx.toInt()}, ${box.dy.toInt()}),\n');
      }
      buffer.write('  ');
    }
    buffer.write('],\n');

    buffer.write('  actors: {');
    if (actors.isNotEmpty) {
      buffer.write('\n');
      actors.forEach((name, pos) {
        buffer.write('    "$name": (${pos.position.dx.toInt()}, ${pos.position.dy.toInt()}) ${_directionToString(pos.direction)},\n');
      });
      buffer.write('  ');
    }
    buffer.write('}\n');

    buffer.write(')');

    return buffer.toString();
  }

  String _directionToString(Direction direction) {
    switch (direction) {
      case Direction.up:
        return 'ВВЕРХ';
      case Direction.down:
        return 'ВНИЗ';
      case Direction.left:
        return 'ВЛЕВО';
      case Direction.right:
        return 'ВПРАВО';
    }
  }
}

/// Позиция актора
class ActorPosition {
  final Offset position;
  final Direction direction;

  ActorPosition(this.position, this.direction);
}

/// Контекстный блок
class ContextBlock extends AstNode {
  final List<ContextStatement> statements;

  ContextBlock(this.statements);

  @override
  String toString() => 'ContextBlock(${statements.join(', ')})';
}

/// Контекстное утверждение
abstract class ContextStatement extends AstNode {}

/// Определение доски
class BoardDefinition extends ContextStatement {
  final int width;
  final int height;

  BoardDefinition(this.width, this.height);

  @override
  String toString() => 'Board($width * $height)';
}

/// Определение стены
class WallDefinition extends ContextStatement {
  final List<Position> positions;

  WallDefinition(this.positions);

  @override
  String toString() => 'Walls(${positions.join(', ')})';
}

/// Определение коробки
class BoxDefinition extends ContextStatement {
  final List<Position> positions;

  BoxDefinition(this.positions);

  @override
  String toString() => 'Boxes(${positions.join(', ')})';
}

/// Определение актора
class ActorDefinition extends ContextStatement {
  final String name;
  final Position position;
  final Direction direction;

  ActorDefinition(this.name, this.position, this.direction);

  @override
  String toString() => 'Actor("$name", $position, $direction)';
}

/// Позиция
class Position extends AstNode {
  final int x;
  final int y;

  Position(this.x, this.y);

  @override
  String toString() => '($x, $y)';
}
