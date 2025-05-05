import 'package:flutter/material.dart';
import '../ast/ast.dart';
import 'dart:ui' as ui;

class ActorState {
  final String name;
  ui.Offset position;
  Direction direction;
  bool carryingBox;

  ActorState({
    required this.name,
    required this.position,
    required this.direction,
    this.carryingBox = false,
  });

  // Конвертация из AST Position в Flutter Offset
  ActorState.fromAst({
    required this.name,
    required Position astPosition, 
    required Direction astDirection,
  }) : 
    position = ui.Offset(astPosition.x.toDouble(), astPosition.y.toDouble()),
    direction = astDirection,
    carryingBox = false;

  void turnLeft() {
    direction = switch (direction) {
      Direction.up => Direction.left,
      Direction.left => Direction.down,
      Direction.down => Direction.right,
      Direction.right => Direction.up,
    };
  }

  void turnRight() {
    direction = switch (direction) {
      Direction.up => Direction.right,
      Direction.right => Direction.down,
      Direction.down => Direction.left,
      Direction.left => Direction.up,
    };
  }

  ui.Offset nextPosition() {
    return switch (direction) {
      Direction.up => position.translate(0, -1),
      Direction.down => position.translate(0, 1),
      Direction.left => position.translate(-1, 0),
      Direction.right => position.translate(1, 0),
    };
  }

  // Преобразование в AST Position
  Position toAstPosition() {
    return Position(position.dx.toInt(), position.dy.toInt());
  }
}
