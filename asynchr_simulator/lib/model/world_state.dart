import 'dart:ui';

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

  bool isInsideBounds(Offset pos) {
    return pos.dx >= 0 &&
        pos.dy >= 0 &&
        pos.dx < width &&
        pos.dy < height;
  }

  bool isWall(Offset pos) => walls.contains(pos);
  bool isBox(Offset pos) => boxes.contains(pos);

  ActorState? actorAt(int x, int y) {
  for (final actor in actors.values) {
    if (actor.position.dx.toInt() == x && actor.position.dy.toInt() == y) {
      return actor;
    }
  }
  return null;
}


}
