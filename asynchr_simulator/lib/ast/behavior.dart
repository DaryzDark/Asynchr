import 'ast_node.dart';
import 'condition.dart';

/// Базовый класс для действий
abstract class Action extends AstNode {}

class Thread extends AstNode {
  final String name;
  final ActionBlock actions;

  Thread(this.name, this.actions);

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('Thread(\n');
    buffer.write('  name: "$name",\n');
    
    // Indent the actions representation
    final actionsStr = actions.toString().split('\n')
        .map((line) => '  $line').join('\n');
    buffer.write('$actionsStr\n');
    
    buffer.write(')');
    
    return buffer.toString();
  }
}

class ThreadSet extends AstNode {
  final List<Thread> threads;
  final String? name;
  final String? foldOp;

  ThreadSet(this.threads, {this.name, this.foldOp});

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('ThreadSet(\n');
    if (name != null) {
      buffer.write('  name: "$name",\n');
    }
    if (foldOp != null) {
      buffer.write('  foldOp: "$foldOp",\n');
    }
    buffer.write('  threads: [\n');
    
    for (var thread in threads) {
      // Indent the thread representation
      final threadStr = thread.toString().split('\n')
          .map((line) => '    $line').join('\n');
      buffer.write('$threadStr,\n');
    }
    
    buffer.write('  ]\n');
    buffer.write(')');
    
    return buffer.toString();
  }
}

/// Команда шаг вперед
class MoveAction extends Action {
  @override
  String toString() => 'MoveAction(Шаг_Вперед)';
}

/// Команда поворот влево
class TurnLeftAction extends Action {
  @override
  String toString() => 'TurnLeftAction(Повернуть_Влево)';
}

/// Команда поворот вправо
class TurnRightAction extends Action {
  @override
  String toString() => 'TurnRightAction(Повернуть_Вправо)';
}

/// Команда поднять коробку
class PickUpAction extends Action {
  @override
  String toString() => 'PickUpAction(Поднять_Коробку)';
}

/// Команда опустить коробку
class DropAction extends Action {
  @override
  String toString() => 'DropAction(Опустить_Коробку)';
}

/// Команда пауза
class PauseAction extends Action {
  final double duration;

  PauseAction(this.duration);

  @override
  String toString() => 'PauseAction(duration: $duration)';
}

/// Команда отправить сообщение
class SendAction extends Action {
  final String message;
  final String recipient;

  SendAction(this.message, this.recipient);

  @override
  String toString() => 'SendAction(message: "$message", recipient: "$recipient")';
}

/// Команда получить сообщение
class ReceiveAction extends Action {
  final String? messagePattern;

  ReceiveAction({this.messagePattern});

  @override
  String toString() => 'ReceiveAction(pattern: ${messagePattern != null ? '"$messagePattern"' : '*'})';
}

/// Блок действий
class ActionBlock extends AstNode {
  final List<Action> actions;

  ActionBlock(this.actions);

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('ActionBlock(\n');
    buffer.write('  actions: [\n');

    for (var action in actions) {
      // Indent the action representation
      final actionStr = action.toString().split('\n')
          .map((line) => '    $line').join('\n');
      buffer.write('$actionStr,\n');
    }

    buffer.write('  ]\n');
    buffer.write(')');

    return buffer.toString();
  }
}

/// Цикл while
class WhileLoop extends Action {
  final Condition condition;
  final ActionBlock body;

  WhileLoop(this.condition, this.body);

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('WhileLoop(\n');
    buffer.write('  condition: $condition,\n');

    // Indent the body representation
    final bodyStr = body.toString().split('\n')
        .map((line) => '  $line').join('\n');
    buffer.write('$bodyStr\n');

    buffer.write(')');

    return buffer.toString();
  }
}

/// Цикл repeat forever
class RepeatLoop extends Action {
  final ActionBlock body;

  RepeatLoop(this.body);

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('RepeatLoop(\n');

    // Indent the body representation
    final bodyStr = body.toString().split('\n')
        .map((line) => '  $line').join('\n');
    buffer.write('$bodyStr\n');

    buffer.write(')');

    return buffer.toString();
  }
}

/// Условный оператор if-then-else
class ConditionalAction extends Action {
  final Condition condition;
  final ActionBlock thenBlock;
  final ActionBlock? elseBlock;

  ConditionalAction(this.condition, this.thenBlock, this.elseBlock);

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('ConditionalAction(\n');
    buffer.write('  condition: $condition,\n');

    // Indent the then block representation
    final thenStr = thenBlock.toString().split('\n')
        .map((line) => '  $line').join('\n');
    buffer.write('  then: $thenStr,\n');

    if (elseBlock != null) {
      // Indent the else block representation
      final elseStr = elseBlock.toString().split('\n')
          .map((line) => '  $line').join('\n');
      buffer.write('  else: $elseStr\n');
    }

    buffer.write(')');

    return buffer.toString();
  }
}

