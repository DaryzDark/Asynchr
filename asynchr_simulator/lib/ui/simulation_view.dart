import 'package:flutter/material.dart';
import '../model/world_state.dart';
import '../ast/ast.dart';

class SimulationView extends StatelessWidget {
  final WorldState? worldState;
  
  const SimulationView({
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
              'Симуляция',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Divider(),
          Expanded(
            child: worldState != null
                ? Center(child: WorldRenderer(worldState: worldState!)) // Центрирование
                : const Center(child: Text('Загрузите программу для начала симуляции')),
          ),
        ],
      ),
    );
  }
}

class WorldRenderer extends StatelessWidget {
  final WorldState worldState;

  const WorldRenderer({
    Key? key,
    required this.worldState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Получаем размеры доступного пространства
    final availableSize = MediaQuery.of(context).size;
    
    // Размер нашей сетки в пикселях
    final gridWidth = worldState.width * 40.0;
    final gridHeight = worldState.height * 40.0;
    
    return LayoutBuilder(
      builder: (context, constraints) {
        // Вычисляем масштаб по умолчанию, чтобы сетка помещалась в экран
        final defaultScale = 1.0;
        
        return InteractiveViewer(
          // Позволяем InteractiveViewer быть ограниченным своим родителем для центрирования
          constrained: true,
          // Начальное преобразование для центрирования
          transformationController: TransformationController(),
          // Границы для жеста
          boundaryMargin: const EdgeInsets.all(50),
          minScale: 0.1,
          maxScale: 5.0,
          // Центрируем холст внутри контейнера
          child: Center(
            child: Container(
              // Явно задаем размер контейнера, чтобы иметь достаточно места для центрирования
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Center(
                child: CustomPaint(
                  size: Size(gridWidth, gridHeight),
                  painter: WorldPainter(worldState),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}

class WorldPainter extends CustomPainter {
  final WorldState worldState;
  static const double cellSize = 40.0;

  WorldPainter(this.worldState);

  @override
  void paint(Canvas canvas, Size size) {
    final cellWidth = cellSize;
    final cellHeight = cellSize;

    // Рисуем сетку с МЕНЕЕ ПРОЗРАЧНОЙ обводкой
    final gridPaint = Paint()
      ..color = Colors.grey.withOpacity(0.9) // Увеличена непрозрачность с 0.3 до 0.6
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    for (int x = 0; x <= worldState.width; x++) {
      canvas.drawLine(
        Offset(x * cellWidth, 0), 
        Offset(x * cellWidth, worldState.height * cellHeight), 
        gridPaint
      );
    }
    
    for (int y = 0; y <= worldState.height; y++) {
      canvas.drawLine(
        Offset(0, y * cellHeight), 
        Offset(worldState.width * cellWidth, y * cellHeight), 
        gridPaint
      );
    }

    // Рисуем стены
    final wallPaint = Paint()
      ..color = Colors.brown.shade800
      ..style = PaintingStyle.fill;

    for (final wall in worldState.walls) {
      final rect = Rect.fromLTWH(
        wall.dx * cellWidth,
        wall.dy * cellHeight,
        cellWidth,
        cellHeight
      );
      canvas.drawRect(rect, wallPaint);
    }

    // Рисуем коробки
    final boxPaint = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.fill;
    
    final boxBorderPaint = Paint()
      ..color = Colors.amber.shade900
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    for (final box in worldState.boxes) {
      final center = Offset(
        (box.dx + 0.5) * cellWidth,
        (box.dy + 0.5) * cellHeight,
      );
      final rect = Rect.fromCenter(
        center: center,
        width: cellWidth * 0.7,
        height: cellHeight * 0.7,
      );
      canvas.drawRect(rect, boxPaint);
      canvas.drawRect(rect, boxBorderPaint);
    }

    // Рисуем акторов
    worldState.actors.forEach((name, actor) {
      final center = Offset(
        (actor.position.dx + 0.5) * cellWidth,
        (actor.position.dy + 0.5) * cellHeight,
      );
      
      // Определяем цвет актора по его имени
      final Color actorColor = StringColor.fromString(name);
      
      // НОВАЯ РЕАЛИЗАЦИЯ: Полноценная стрелка с хвостом
      final arrowPaint = Paint()
        ..color = actorColor
        ..style = PaintingStyle.fill;
      
      final borderPaint = Paint()
        ..color = Colors.black
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5;
      
      // Рисуем стрелку с хвостом для каждого направления
      final path = Path();
      
      switch (actor.direction) {
        case Direction.up:
          // Стрелка вверх с хвостом
          // Наконечник стрелки
          path.moveTo(center.dx, center.dy - cellHeight * 0.3); // Острие
          path.lineTo(center.dx - cellWidth * 0.2, center.dy - cellHeight * 0.05); // Левый угол
          path.lineTo(center.dx - cellWidth * 0.1, center.dy - cellHeight * 0.05); // Переход к хвосту
          
          // Хвост
          path.lineTo(center.dx - cellWidth * 0.1, center.dy + cellHeight * 0.2); // Левая сторона хвоста
          path.lineTo(center.dx + cellWidth * 0.1, center.dy + cellHeight * 0.2); // Нижняя часть хвоста
          path.lineTo(center.dx + cellWidth * 0.1, center.dy - cellHeight * 0.05); // Правая сторона хвоста
          
          // Завершение наконечника
          path.lineTo(center.dx + cellWidth * 0.2, center.dy - cellHeight * 0.05); // Правый угол наконечника
          path.close();
          break;
        
        case Direction.down:
          // Стрелка вниз с хвостом
          // Наконечник стрелки
          path.moveTo(center.dx, center.dy + cellHeight * 0.3); // Острие
          path.lineTo(center.dx - cellWidth * 0.2, center.dy + cellHeight * 0.05); // Левый угол
          path.lineTo(center.dx - cellWidth * 0.1, center.dy + cellHeight * 0.05); // Переход к хвосту
          
          // Хвост
          path.lineTo(center.dx - cellWidth * 0.1, center.dy - cellHeight * 0.2); // Левая сторона хвоста
          path.lineTo(center.dx + cellWidth * 0.1, center.dy - cellHeight * 0.2); // Верхняя часть хвоста
          path.lineTo(center.dx + cellWidth * 0.1, center.dy + cellHeight * 0.05); // Правая сторона хвоста
          
          // Завершение наконечника
          path.lineTo(center.dx + cellWidth * 0.2, center.dy + cellHeight * 0.05); // Правый угол наконечника
          path.close();
          break;
        
        case Direction.left:
          // Стрелка влево с хвостом
          // Наконечник стрелки
          path.moveTo(center.dx - cellWidth * 0.3, center.dy); // Острие
          path.lineTo(center.dx - cellWidth * 0.05, center.dy - cellHeight * 0.2); // Верхний угол
          path.lineTo(center.dx - cellWidth * 0.05, center.dy - cellHeight * 0.1); // Переход к хвосту
          
          // Хвост
          path.lineTo(center.dx + cellWidth * 0.2, center.dy - cellHeight * 0.1); // Верхняя сторона хвоста
          path.lineTo(center.dx + cellWidth * 0.2, center.dy + cellHeight * 0.1); // Правая часть хвоста
          path.lineTo(center.dx - cellWidth * 0.05, center.dy + cellHeight * 0.1); // Нижняя сторона хвоста
          
          // Завершение наконечника
          path.lineTo(center.dx - cellWidth * 0.05, center.dy + cellHeight * 0.2); // Нижний угол наконечника
          path.close();
          break;
        
        case Direction.right:
          // Стрелка вправо с хвостом
          // Наконечник стрелки
          path.moveTo(center.dx + cellWidth * 0.3, center.dy); // Острие
          path.lineTo(center.dx + cellWidth * 0.05, center.dy - cellHeight * 0.2); // Верхний угол
          path.lineTo(center.dx + cellWidth * 0.05, center.dy - cellHeight * 0.1); // Переход к хвосту
          
          // Хвост
          path.lineTo(center.dx - cellWidth * 0.2, center.dy - cellHeight * 0.1); // Верхняя сторона хвоста
          path.lineTo(center.dx - cellWidth * 0.2, center.dy + cellHeight * 0.1); // Левая часть хвоста
          path.lineTo(center.dx + cellWidth * 0.05, center.dy + cellHeight * 0.1); // Нижняя сторона хвоста
          
          // Завершение наконечника
          path.lineTo(center.dx + cellWidth * 0.05, center.dy + cellHeight * 0.2); // Нижний угол наконечника
          path.close();
          break;
      }
      
      // Рисуем стрелку с заливкой
      canvas.drawPath(path, arrowPaint);
      
      // Добавляем контур для лучшей видимости
      canvas.drawPath(path, borderPaint);
      
      // Показываем состояние "несу коробку"
      if (actor.boxesCarrying > 0) {
        // Базовая позиция для отображения коробок
        final baseOffset = center.translate(0, -cellHeight * 0.5);
        
        // Если коробок мало (1-3), рисуем их отдельно
        if (actor.boxesCarrying <= 3) {
          for (int i = 0; i < actor.boxesCarrying; i++) {
            final offset = i - (actor.boxesCarrying - 1) / 2.0;
            final boxRect = Rect.fromCenter(
              center: baseOffset.translate(offset * cellWidth * 0.25, 0),
              width: cellWidth * 0.2,
              height: cellHeight * 0.2,
            );
            canvas.drawRect(boxRect, boxPaint);
            canvas.drawRect(boxRect, boxBorderPaint);
          }
        } else {
          // Если коробок много, рисуем стопку и отображаем число
          final boxRect = Rect.fromCenter(
            center: baseOffset,
            width: cellWidth * 0.35,
            height: cellHeight * 0.35,
          );
          canvas.drawRect(boxRect, boxPaint);
          canvas.drawRect(boxRect, boxBorderPaint);
          
          // Отображаем количество коробок
          final textSpan = TextSpan(
            text: '${actor.boxesCarrying}',
            style: TextStyle(
              color: Colors.black,
              fontSize: cellWidth * 0.2,
              fontWeight: FontWeight.bold,
            ),
          );
          final textPainter = TextPainter(
            text: textSpan,
            textDirection: TextDirection.ltr,
          );
          textPainter.layout();
          textPainter.paint(
            canvas, 
            baseOffset.translate(-textPainter.width / 2, -textPainter.height / 2)
          );
        }
      }
      
      // Отображаем имя актора ЧЕРНЫМ цветом
      final textSpan = TextSpan(
        text: name,
        style: TextStyle(
          color: Colors.black, // Изменено на черный
          fontSize: cellWidth * 0.25,
          fontWeight: FontWeight.bold,
          // Добавляем белую обводку для лучшей видимости на темном фоне
          shadows: [
            Shadow(color: Colors.white, blurRadius: 2, offset: const Offset(0.5, 0.5)),
            Shadow(color: Colors.white, blurRadius: 2, offset: const Offset(-0.5, -0.5)),
            Shadow(color: Colors.white, blurRadius: 2, offset: const Offset(0.5, -0.5)),
            Shadow(color: Colors.white, blurRadius: 2, offset: const Offset(-0.5, 0.5)),
          ],
        ),
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(
        canvas, 
        center.translate(-textPainter.width / 2, cellHeight * 0.3)
      );
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// Хелпер для генерации цвета из строки
class StringColor {
  static Color fromString(String str) {
    int hash = 0;
    for (var i = 0; i < str.length; i++) {
      hash = str.codeUnitAt(i) + ((hash << 5) - hash);
    }
    
    final hue = (hash % 360).abs() / 360.0;
    return HSLColor.fromAHSL(1.0, hue * 360, 0.7, 0.5).toColor();
  }
}