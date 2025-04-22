import 'package:flutter/material.dart';

enum FacingDirection { up, down, left, right }

class ActorState {
  final String name;
  Offset position;
  FacingDirection direction;
  bool carryingBox;

  ActorState({
    required this.name,
    required this.position,
    required this.direction,
    this.carryingBox = false,
  });

  void turnLeft() {
    direction = switch (direction) {
      FacingDirection.up => FacingDirection.left,
      FacingDirection.left => FacingDirection.down,
      FacingDirection.down => FacingDirection.right,
      FacingDirection.right => FacingDirection.up,
    };
  }

  void turnRight() {
    direction = switch (direction) {
      FacingDirection.up => FacingDirection.right,
      FacingDirection.right => FacingDirection.down,
      FacingDirection.down => FacingDirection.left,
      FacingDirection.left => FacingDirection.up,
    };
  }

  Offset nextPosition() {
    return switch (direction) {
      FacingDirection.up => position.translate(0, -1),
      FacingDirection.down => position.translate(0, 1),
      FacingDirection.left => position.translate(-1, 0),
      FacingDirection.right => position.translate(1, 0),
    };
  }
}
