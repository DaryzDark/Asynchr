import 'ast_node.dart';
import 'condition.dart';

class BehaviorBlock extends AstNode {
  final List<BehaviorStatement> statements;

  BehaviorBlock(this.statements);

  @override
  String toString() => 'BehaviorBlock(${statements.join(', ')})';
}

class BehaviorStatement extends AstNode {
  final String actor;
  final List<Action> actions;

  BehaviorStatement(this.actor, this.actions);

  @override
  String toString() => '$actor: ${actions.join('; ')}';
}

// Новый блок для асинхронного исполнения
class AsyncBlock extends AstNode {
  final List<AsyncThread> threads;

  AsyncBlock(this.threads);

  @override
  String toString() => 'AsyncBlock(${threads.join(', ')})';
}

class AsyncThread extends AstNode {
  final String name;
  final List<Action> actions;

  AsyncThread(this.name, this.actions);

  @override
  String toString() => 'Thread($name, ${actions.join('; ')})';
}

abstract class Action extends AstNode {}

class WhileLoop extends Action {
  final List<Action> body;
  final Condition condition;

  WhileLoop(this.body, this.condition);

  @override
  String toString() => 'WHILE $condition { ${body.join('; ')} }';
}

class RepeatForever extends Action {
  final List<Action> body;

  RepeatForever(this.body);

  @override
  String toString() => 'REPEAT { ${body.join('; ')} }';
}

class ConditionalAction extends Action {
  final Condition condition;
  final Action thenAction;
  final Action? elseAction;

  ConditionalAction(this.condition, this.thenAction, this.elseAction);

  @override
  String toString() {
    final elseStr = elseAction != null ? ' ELSE $elseAction' : '';
    return 'IF $condition THEN $thenAction$elseStr';
  }
}

class WaitAction extends Action {
  final String actorId;

  WaitAction(this.actorId);

  @override
  String toString() => 'WAIT "$actorId"';
}

// Новые действия для асинхронной работы
class StartAsyncAction extends Action {
  final String threadId;
  
  StartAsyncAction(this.threadId);
  
  @override
  String toString() => 'START "$threadId"';
}

class StopAsyncAction extends Action {
  final String threadId;
  
  StopAsyncAction(this.threadId);
  
  @override
  String toString() => 'STOP "$threadId"';
}

class ParallelAction extends Action {
  final List<Action> actions;
  
  ParallelAction(this.actions);
  
  @override
  String toString() => 'PARALLEL { ${actions.join('; ')} }';
}

// Команды
class StepCommand extends Action {
  @override
  String toString() => 'StepForward()';
}

class TurnLeftCommand extends Action {
  @override
  String toString() => 'TurnLeft()';
}

class TurnRightCommand extends Action {
  @override
  String toString() => 'TurnRight()';
}

class PickUpCommand extends Action {
  @override
  String toString() => 'PickUp()';
}

class DropCommand extends Action {
  @override
  String toString() => 'Drop()';
}

class PauseCommand extends Action {
  final double duration;

  PauseCommand(this.duration);

  @override
  String toString() => 'Pause($duration)';
}

class SendMessageCommand extends Action {
  final String message;
  final String recipientId;

  SendMessageCommand(this.message, this.recipientId);

  @override
  String toString() => 'Send("$message" -> "$recipientId")';
}

class ReceiveMessageCommand extends Action {
  final String pattern;
  final bool anyMessage;

  ReceiveMessageCommand(this.pattern, {this.anyMessage = false});

  @override
  String toString() => 'Receive(${anyMessage ? '*' : '"$pattern"'})';
}

