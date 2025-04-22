import 'ast_node.dart';
import 'context.dart';
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

  ConditionalAction(this.condition, this.thenAction, [this.elseAction]);

  @override
  String toString() {
    final elseStr = elseAction != null ? ' ELSE $elseAction' : '';
    return 'IF $condition THEN $thenAction$elseStr';
  }
}

class WaitAction extends Action {
  final String actor;

  WaitAction(this.actor);

  @override
  String toString() => 'WAIT $actor';
}

class SimpleCommand extends Action {
  final Command command;

  SimpleCommand(this.command);

  @override
  String toString() => command.toString().split('.').last;
}

enum Command {
  stepForward,
  turnLeft,
  turnRight,
  pickUp,
  drop,
}

