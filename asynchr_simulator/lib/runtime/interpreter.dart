import 'dart:ui';
import '../ast/ast.dart';
import '../model/world_state.dart';
import '../model/actor_state.dart';

class Interpreter {
  final Program program;
  late WorldState world;

  final Map<String, List<Action>> _behaviors = {};
  final Map<String, int> _pc = {};

  Interpreter(this.program) {
    _initWorld();
    _initBehaviors();
  }
    void _execute(String actorName, Action action) {
    final actor = world.actors[actorName]!;

    if (action is SimpleCommand) {
      switch (action.command) {
        case Command.stepForward:
          final next = actor.nextPosition();
          if (!world.isInsideBounds(next) || world.isWall(next)) return;
          actor.position = next;
          break;

        case Command.turnLeft:
          actor.turnLeft();
          break;

        case Command.turnRight:
          actor.turnRight();
          break;

        case Command.pickUp:
          if (world.boxes.remove(actor.position)) actor.carryingBox = true;
          break;

        case Command.drop:
          if (actor.carryingBox && !world.isBox(actor.position)) {
            world.boxes.add(actor.position);
            actor.carryingBox = false;
          }
          break;
      }
    }
  }

  Offset _toOffset(Position p) => Offset(p.x.toDouble(), p.y.toDouble());

  FacingDirection _toDirection(Direction d) {
    switch (d) {
      case Direction.up: return FacingDirection.up;
      case Direction.down: return FacingDirection.down;
      case Direction.left: return FacingDirection.left;
      case Direction.right: return FacingDirection.right;
    }
  }


  void _initWorld() {
    final ctx = program.context;
    final board = ctx.statements.whereType<BoardDefinition>().first;
    final walls = ctx.statements.whereType<WallDefinition>().expand((e) => e.positions).map(_toOffset).toSet();
    final boxes = ctx.statements.whereType<BoxDefinition>().expand((e) => e.positions).map(_toOffset).toSet();
    final actors = <String, ActorState>{};

    for (final actor in ctx.statements.whereType<ActorDefinition>()) {
      actors[actor.name] = ActorState(
        name: actor.name,
        position: _toOffset(actor.position),
        direction: _toDirection(actor.direction),
      );
    }

    world = WorldState(
      width: board.width,
      height: board.height,
      walls: walls,
      boxes: boxes,
      actors: actors,
    );
  }

  void _initBehaviors() {
    final behaviorBlock = program.behavior;
    if (behaviorBlock == null) return;

    for (final stmt in behaviorBlock.statements) {
      _behaviors[stmt.actor] = stmt.actions;
      _pc[stmt.actor] = 0;
    }
  }

  void step() {
    for (final actor in _behaviors.keys) {
      final pc = _pc[actor]!;
      final actions = _behaviors[actor]!;
      if (pc >= actions.length) continue;

      final action = actions[pc];
      _execute(actor, action);
      _pc[actor] = pc + 1;
    }
  }

  void reset() {
    _initWorld();
    _pc.updateAll((_, __) => 0);
  }

  void run() {
  bool anyRunning;

  do {
    anyRunning = false;
    for (final actor in _behaviors.keys) {
      final pc = _pc[actor]!;
      final actions = _behaviors[actor]!;

      if (pc < actions.length) {
        final action = actions[pc];
        _execute(actor, action);
        _pc[actor] = pc + 1;
        anyRunning = true;
      }
    }
  } while (anyRunning);
}
Future<void> runWithDelay({
    Duration delay = const Duration(milliseconds: 500),
    void Function()? onStep,
  }) async {
    bool hasMore;

    do {
      hasMore = false;
      for (final actor in _behaviors.keys) {
        final actions = _behaviors[actor]!;
        final idx = _pc[actor]!;

        if (idx < actions.length) {
          _execute(actor, actions[idx]);
          _pc[actor] = idx + 1;
          hasMore = true;

          onStep?.call(); // уведомим UI
        }
      }

      if (hasMore) {
        await Future.delayed(delay);
      }
    } while (hasMore);
  }
}

