import 'package:flutter/material.dart';
import '../controller/simulator_controller.dart';
import 'cell_view.dart';

class WorldGrid extends StatelessWidget {
  final SimulatorController controller;

  const WorldGrid({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        final world = controller.world;
        return AspectRatio(
          aspectRatio: world.width / world.height,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: world.width,
            ),
            itemCount: world.width * world.height,
            itemBuilder: (context, index) {
              final x = index % world.width;
              final y = index ~/ world.width;
              return CellView(x: x, y: y, world: world);
            },
          ),
        );
      },
    );
  }
}
