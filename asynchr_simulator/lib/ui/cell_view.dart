import 'package:flutter/material.dart';
import 'dart:ui';
import '../model/actor_state.dart';
import '../model/world_state.dart';
import '../ast/ast.dart';

class CellView extends StatelessWidget {
  final int x;
  final int y;
  final WorldState world;

  const CellView({
    super.key,
    required this.x,
    required this.y,
    required this.world,
  });

  @override
  Widget build(BuildContext context) {
    final offset = Offset(x.toDouble(), y.toDouble());
    final actor = world.actorAt(x, y);
    final isWall = world.isWall(offset);
    final isBox = world.isBox(offset);

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (isWall)
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 2,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
            ),
          if (isBox)
            Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: Colors.brown.shade300,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.shade800.withOpacity(0.4),
                    blurRadius: 2,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
            ),
          if (actor != null)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _directionIcon(actor.direction),
                  color: Colors.blueAccent,
                  size: 28,
                ),
                if (actor.carryingBox)
                  const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Icon(Icons.backpack, size: 16, color: Colors.amber),
                  ),
                Text(
                  actor.name,
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey.shade800,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
        ],
      ),
    );
  }

  // Обновленный метод для использования Direction из AST вместо FacingDirection
  IconData _directionIcon(Direction dir) {
    switch (dir) {
      case Direction.up:
        return Icons.arrow_upward;
      case Direction.down:
        return Icons.arrow_downward;
      case Direction.left:
        return Icons.arrow_back;
      case Direction.right:
        return Icons.arrow_forward;
    }
  }
}
