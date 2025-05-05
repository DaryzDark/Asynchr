import 'dart:ui';
import '../ast/ast.dart';
import 'actor_state.dart';

class WorldState {
  final int width;
  final int height;
  final Set<Offset> walls;
  final Set<Offset> boxes;
  final Map<String, ActorState> actors;

  WorldState({
    required this.width,
    required this.height,
    Set<Offset>? walls,
    Set<Offset>? boxes,
    Map<String, ActorState>? actors,
  })  : walls = walls ?? {},
        boxes = boxes ?? {},
        actors = actors ?? {};

  // Конструктор из AST-объектов
  WorldState.fromAst({
    required int boardWidth,
    required int boardHeight,
    required Set<Position> astWalls,
    required Set<Position> astBoxes,
    required Map<String, ActorState> astActors,
  })  : width = boardWidth,
        height = boardHeight,
        walls = astWalls.map((p) => Offset(p.x.toDouble(), p.y.toDouble())).toSet(),
        boxes = astBoxes.map((p) => Offset(p.x.toDouble(), p.y.toDouble())).toSet(),
        actors = astActors;

  bool isInsideBounds(Offset pos) {
    return pos.dx >= 0 &&
        pos.dy >= 0 &&
        pos.dx < width &&
        pos.dy < height;
  }

  bool isWall(Offset pos) => walls.contains(pos);
  bool isBox(Offset pos) => boxes.contains(pos);
  bool isActorAt(Offset pos) => actors.values.any((a) => 
      a.position.dx.toInt() == pos.dx.toInt() && 
      a.position.dy.toInt() == pos.dy.toInt());

  ActorState? actorAt(int x, int y) {
    for (final actor in actors.values) {
      if (actor.position.dx.toInt() == x && actor.position.dy.toInt() == y) {
        return actor;
      }
    }
    return null;
  }

  // Конвертация AST Position в Offset
  Offset positionToOffset(Position position) {
    return Offset(position.x.toDouble(), position.y.toDouble());
  }

  // Конвертация Offset в AST Position
  Position offsetToPosition(Offset offset) {
    return Position(offset.dx.toInt(), offset.dy.toInt());
  }

  // Получение копии состояния мира
  WorldState copy() {
    return WorldState(
      width: width,
      height: height,
      walls: Set.from(walls),
      boxes: Set.from(boxes),
      actors: Map.fromEntries(actors.entries.map(
        (e) => MapEntry(
          e.key,
          ActorState(
            name: e.value.name,
            position: e.value.position,
            direction: e.value.direction,
            carryingBox: e.value.carryingBox,
          ),
        ),
      )),
    );
  }
}
