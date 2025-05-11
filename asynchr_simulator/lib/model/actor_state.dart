import 'dart:ui' as ui;
import '../ast/ast.dart';

/// Состояние актора в игровом мире
class ActorState {
  String name;
  ui.Offset position;
  Direction direction;
  int boxesCarrying; // Изменен тип с boolean на int для хранения количества коробок
  
  ActorState({
    required this.name,
    required this.position,
    required this.direction,
    this.boxesCarrying = 0, // Изначально актор не несет коробок
  });
  
  // Копирование состояния
  ActorState copy() {
    return ActorState(
      name: name,
      position: ui.Offset(position.dx, position.dy),
      direction: direction,
      boxesCarrying: boxesCarrying,
    );
  }
  
  // Поворот налево
  void turnLeft() {
    direction = switch (direction) {
      Direction.up => Direction.left,
      Direction.right => Direction.up,
      Direction.down => Direction.right,
      Direction.left => Direction.down,
    };
  }
  
  // Поворот направо
  void turnRight() {
    direction = switch (direction) {
      Direction.up => Direction.right,
      Direction.right => Direction.down,
      Direction.down => Direction.left,
      Direction.left => Direction.up,
    };
  }
  
  // Получить позицию впереди актора
  ui.Offset nextPosition() {
    return switch (direction) {
      Direction.up => position.translate(0, -1),
      Direction.right => position.translate(1, 0),
      Direction.down => position.translate(0, 1),
      Direction.left => position.translate(-1, 0),
    };
  }
  
  // Проверка, несет ли актор хотя бы одну коробку
  bool get isCarryingBox => boxesCarrying > 0;
  
  @override
  String toString() => 
    'ActorState($name at (${position.dx}, ${position.dy}), $direction, carrying $boxesCarrying boxes)';
}
