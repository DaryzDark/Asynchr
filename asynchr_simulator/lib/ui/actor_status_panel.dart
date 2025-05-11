import 'package:flutter/material.dart';
import '../model/world_state.dart';
import '../ast/ast.dart';
import '../model/actor_state.dart';
import 'simulation_view.dart';

class ActorStatusPanel extends StatelessWidget {
  final WorldState? worldState;
  
  const ActorStatusPanel({
    Key? key,
    required this.worldState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Статус акторов',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Divider(),
          worldState != null
              ? Expanded(
                  child: ListView.builder(
                    itemCount: worldState!.actors.length,
                    itemBuilder: (context, index) {
                      final actor = worldState!.actors.entries.elementAt(index);
                      return ActorStatusItem(
                        name: actor.key,
                        state: actor.value,
                      );
                    },
                  ),
                )
              : const Expanded(
                  child: Center(
                    child: Text('Нет данных об акторах'),
                  ),
                ),
        ],
      ),
    );
  }
}

class ActorStatusItem extends StatelessWidget {
  final String name;
  final ActorState state;

  const ActorStatusItem({
    Key? key,
    required this.name,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actorColor = StringColor.fromString(name);
    
    // Создаем иконку для направления
    Widget directionIcon;
    switch (state.direction) {
      case Direction.up:
        directionIcon = const Icon(Icons.arrow_upward, size: 16);
        break;
      case Direction.down:
        directionIcon = const Icon(Icons.arrow_downward, size: 16);
        break;
      case Direction.left:
        directionIcon = const Icon(Icons.arrow_back, size: 16);
        break;
      case Direction.right:
        directionIcon = const Icon(Icons.arrow_forward, size: 16);
        break;
    }
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: actorColor, width: 4),
        ),
        color: Colors.grey.shade50,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: Row(
          children: [
            // Цветовой индикатор и имя актора
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: actorColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        name[0], // Первая буква имени
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            
            // Позиция
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  const Icon(Icons.location_on, size: 16, color: Colors.grey),
                  const SizedBox(width: 2),
                  Text(
                    "(${state.position.dx.toInt()}, ${state.position.dy.toInt()})",
                    style: const TextStyle(fontSize: 13),
                  ),
                  const SizedBox(width: 8),
                  
                  // Направление
                  directionIcon,
                ],
              ),
            ),
            
            // Коробки
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.inventory,
                    size: 16,
                    color: state.boxesCarrying > 0 ? Colors.amber.shade700 : Colors.grey,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    state.boxesCarrying > 0 ? state.boxesCarrying.toString() : "-",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: state.boxesCarrying > 0 ? FontWeight.bold : FontWeight.normal,
                      color: state.boxesCarrying > 0 ? Colors.amber.shade800 : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}