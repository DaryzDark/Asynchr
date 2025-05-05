import '../parser/AsynchrGrammarParser.dart' as parser;
import '../parser/AsynchrGrammarBaseVisitor.dart';

import '../ast/ast.dart';

class AstBuilder extends AsynchrGrammarBaseVisitor<AstNode> {
  @override
  Program visitProgram(parser.ProgramContext ctx) {
    final contextBlock = visit(ctx.context_block()!) as ContextBlock;
    final behaviorBlock = ctx.behavior_block() != null ? visit(ctx.behavior_block()!) as BehaviorBlock : null;

    return Program(
      context: contextBlock,
      behavior: behaviorBlock,
    );
  }

  @override
  ContextBlock visitContext_block(parser.Context_blockContext ctx) {
    final statements = ctx.getRuleContexts<parser.Context_statementContext>()
        .map((stmt) => visit(stmt) as ContextStatement)
        .toList();
    return ContextBlock(statements);
  }

  @override
  ContextStatement visitContext_statement(parser.Context_statementContext ctx) {
    if (ctx.board_def() != null) {
      return visit(ctx.board_def()!) as ContextStatement;
    } else if (ctx.wall_def() != null) {
      return visit(ctx.wall_def()!) as ContextStatement;
    } else if (ctx.box_def() != null) {
      return visit(ctx.box_def()!) as ContextStatement;
    } else if (ctx.actor_def() != null) {
      return visit(ctx.actor_def()!) as ContextStatement;
    } else {
      throw UnimplementedError('Unknown context_statement: ${ctx.text}');
    }
  }

  @override
  ContextStatement visitBoard_def(parser.Board_defContext ctx) {
    final width = int.parse(ctx.NUMBER(0)?.text ?? '0');
    final height = int.parse(ctx.NUMBER(1)?.text ?? '0');
    return BoardDefinition(width, height);
  }

  @override
  ContextStatement visitWall_def(parser.Wall_defContext ctx) {
    final positions = _visitPositions(ctx.position_group()!);
    return WallDefinition(positions);
  }

  @override
  ContextStatement visitBox_def(parser.Box_defContext ctx) {
    final positions = _visitPositions(ctx.position_group()!);
    return BoxDefinition(positions);
  }

  @override
  ContextStatement visitActor_def(parser.Actor_defContext ctx) {
    final name = ctx.ID()?.text ?? 'Unnamed';
    final pos = _visitPosition(ctx.position()!);
    final dir = _parseDirection(ctx.direction()?.text ?? '');
    return ActorDefinition(name, pos, dir);
  }

  @override
  BehaviorBlock visitBehavior_block(parser.Behavior_blockContext ctx) {
    final behaviors = ctx.getRuleContexts<parser.Behavior_statementContext>()
        .map((stmt) => visit(stmt) as BehaviorStatement)
        .toList();
    return BehaviorBlock(behaviors);
  }

  @override
  BehaviorStatement visitBehavior_statement(parser.Behavior_statementContext ctx) {
    final actor = ctx.ID()?.text ?? 'Unnamed';
    final actions = _visitActionList(ctx.action_list()!);
    return BehaviorStatement(actor, actions);
  }

  List<Action> _visitActionList(parser.Action_listContext ctx) {
    return ctx.actions()
        .map((a) => visit(a) as Action)
        .toList();
  }

  // ==== ACTIONS ====
  
  @override
  Action visitWhileLoop(parser.WhileLoopContext ctx) {
    final actions = _visitActionList(ctx.action_list()!);
    final condition = visit(ctx.condition()!) as Condition;
    return WhileLoop(actions, condition);
  }

  @override
  Action visitRepeatForever(parser.RepeatForeverContext ctx) {
    final actions = _visitActionList(ctx.action_list()!);
    return RepeatForever(actions);
  }

  @override
  Action visitConditional(parser.ConditionalContext ctx) {
    final condition = visit(ctx.condition()!) as Condition;
    final thenAction = visit(ctx.action_(0)!) as Action;
    
    Action? elseAction;
    if (ctx.actions().length > 1) {
      elseAction = visit(ctx.action_(1)!) as Action;
    }
    
    return ConditionalAction(condition, thenAction, elseAction);
  }

  @override
  Action visitWaitOther(parser.WaitOtherContext ctx) {
    return WaitAction(ctx.ID()?.text ?? 'Unknown');
  }

  @override
  Action visitSimpleAction(parser.SimpleActionContext ctx) {
    return visit(ctx.command()!) as Action;
  }

  // ==== COMMANDS ====
  
  @override
  Action visitStepCmd(parser.StepCmdContext ctx) {
    return StepCommand();
  }
  
  @override
  Action visitTurnLeftCmd(parser.TurnLeftCmdContext ctx) {
    return TurnLeftCommand();
  }
  
  @override
  Action visitTurnRightCmd(parser.TurnRightCmdContext ctx) {
    return TurnRightCommand();
  }
  
  @override
  Action visitPickUpCmd(parser.PickUpCmdContext ctx) {
    return PickUpCommand();
  }
  
  @override
  Action visitDropCmd(parser.DropCmdContext ctx) {
    return DropCommand();
  }
  
  @override
  Action visitPauseCmd(parser.PauseCmdContext ctx) {
    final duration = double.parse(ctx.NUMBER()?.text ?? '0');
    return PauseCommand(duration);
  }
  
  @override
  Action visitSendCmd(parser.SendCmdContext ctx) {
    final message = _extractString(ctx.STRING()?.text ?? '"error"');
    final recipient = ctx.ID()?.text ?? 'Unknown';
    return SendMessageCommand(message, recipient);
  }
  
  @override
  Action visitRecvCmd(parser.RecvCmdContext ctx) {
    if (ctx.STAR() != null) {
      return ReceiveMessageCommand("", anyMessage: true);
    } else {
      final pattern = _extractString(ctx.STRING()?.text ?? '"error"');
      return ReceiveMessageCommand(pattern);
    }
  }

  // ==== CONDITIONS ====

  @override
  Condition visitHasMsgCond(parser.HasMsgCondContext ctx) {
    return HasMessageCondition();
  }
  
  @override
  Condition visitIdentifierCond(parser.IdentifierCondContext ctx) {
    return IdentifierCondition(ctx.ID()?.text ?? 'Unknown');
  }
  
  @override
  Condition visitPositionCond(parser.PositionCondContext ctx) {
    return PositionCondition(_visitPosition(ctx.position()!));
  }

  // ==== HELPERS ====

  List<Position> _visitPositions(parser.Position_groupContext ctx) {
    final positions = ctx.positions();
    return positions.map((p) => _visitPosition(p)).toList();
  }

  Position _visitPosition(parser.PositionContext ctx) {
    final x = int.parse(ctx.NUMBER(0)?.text ?? '0');
    final y = int.parse(ctx.NUMBER(1)?.text ?? '0');
    return Position(x, y);
  }

  Direction _parseDirection(String text) {
    switch (text) {
      case 'ВВЕРХ':
        return Direction.up;
      case 'ВНИЗ':
        return Direction.down;
      case 'ВЛЕВО':
        return Direction.left;
      case 'ВПРАВО':
        return Direction.right;
      default:
        throw ArgumentError('Unknown direction: $text');
    }
  }
  
  String _extractString(String quotedString) {
    // Remove surrounding quotes and handle escape sequences
    if (quotedString.startsWith('"') && quotedString.endsWith('"')) {
      return quotedString.substring(1, quotedString.length - 1)
          .replaceAll('\\"', '"');
    }
    return quotedString;
  }
}
