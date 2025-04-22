import '../parser/AsynchrGrammarParser.dart' as parser;
import '../parser/AsynchrGrammarBaseVisitor.dart';

import '../ast/ast.dart';

class AstBuilder extends AsynchrGrammarBaseVisitor<AstNode> {
  @override
  Program visitProgram(parser.ProgramContext ctx) {
    final contextBlock = visit(ctx.context_block()!) as ContextBlock;
    final behaviorBlock = ctx.behavior_block() != null ? visit(ctx.behavior_block()!) as BehaviorBlock : null;
    final queryBlock = ctx.query_block() != null ? visit(ctx.query_block()!) as QueryBlock : null;

    return Program(
      context: contextBlock,
      behavior: behaviorBlock,
      query: queryBlock,
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
    final behaviors = ctx.behavior_statements()
        .map((stmt) => visit(stmt) as BehaviorStatement)
        .toList();
    return BehaviorBlock(behaviors);
  }

  @override
BehaviorStatement visitBehavior_statement(parser.Behavior_statementContext ctx) {
  final actor = ctx.ID()?.text ?? 'Unnamed';
  final actions = ctx.action_list()?.actions()
      .map((a) => visit(a))
      .whereType<Action>()
      .toList() ?? [];
  return BehaviorStatement(actor, actions);
}



  // ==== ACTIONS ====

  @override
  Action visitWhileLoop(parser.WhileLoopContext ctx) {
    final actions = ctx.action_list()!.actions()
        .map((a) => visit(a) as Action)
        .toList();
    final cond = visit(ctx.condition()!) as Condition;
    return WhileLoop(actions, cond);
  }

  @override
  Action visitRepeatForever(parser.RepeatForeverContext ctx) {
    final actions = ctx.action_list()!.actions()
        .map((a) => visit(a) as Action)
        .toList();
    return RepeatForever(actions);
  }

  @override
Action visitConditional(parser.ConditionalContext ctx) {
  final cond = visit(ctx.condition()!) as Condition;

  final thenCtx = ctx.action_(0);
  if (thenCtx == null) {
    throw StateError('Missing then-branch in conditional action');
  }
  final thenAction = visit(thenCtx) as Action;

  // Попробуем получить else ветку, если она есть
  Action? elseAction;
  try {
    final elseCtx = ctx.action_(1);
    if (elseCtx != null) {
      elseAction = visit(elseCtx) as Action;
    }
  } catch (_) {
    // ignore if action_(1) is out of bounds
  }

  return ConditionalAction(cond, thenAction, elseAction);
}



  @override
  Action visitWaitAction(parser.WaitActionContext ctx) {
    return WaitAction(ctx.ID()?.text ?? 'Unknown');
  }

  @override
  Action visitSimpleAction(parser.SimpleActionContext ctx) {
    final cmdText = ctx.command()?.text ?? '';
    return SimpleCommand(_parseCommand(cmdText));
  }

  // ==== CONDITIONS ====

  @override
  Condition visitCondition(parser.ConditionContext ctx) {
    final idText = ctx.ID()?.text;
    if (idText != null) {
      return IdentifierCondition(idText);
    }

    final dataCtx = ctx.data();
    if (dataCtx?.position() != null) {
      return PositionCondition(_visitPosition(dataCtx!.position()!));
    }

  throw UnimplementedError('Unknown condition: ${ctx.text}');
  }



  // ==== QUERY ====

  @override
QueryBlock visitQuery_block(parser.Query_blockContext ctx) {
  final queries = ctx.getRuleContexts<parser.Query_statementContext>()
      .map((q) => visit(q) as QueryStatement)
      .toList();
  return QueryBlock(queries);
}



  @override
QueryStatement visitQuery_statement(parser.Query_statementContext ctx) {
  final dataCtx = ctx.data();
  if (dataCtx == null) {
    throw StateError('Missing data in query statement');
  }

  if (dataCtx.position() != null) {
    return QueryStatement(PositionData(_visitPosition(dataCtx.position()!)));
  } else if (dataCtx.NUMBER() != null) {
    final numberText = dataCtx.NUMBER()!.text;
    if (numberText == null) {
      throw StateError('NUMBER token text is null');
    }
    return QueryStatement(NumberData(num.parse(numberText)));
  } else {
    throw UnimplementedError('Unknown query data: ${ctx.text}');
  }
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

  Command _parseCommand(String text) {
    switch (text.trim()) {
      case 'Шаг Вперёд':
        return Command.stepForward;
      case 'Повернуть Влево':
        return Command.turnLeft;
      case 'Повернуть Вправо':
        return Command.turnRight;
      case 'Поднять_коробку':
        return Command.pickUp;
      case 'Опустить_коробку':
        return Command.drop;
      default:
        throw ArgumentError('Unknown command: $text');
    }
  }
}
