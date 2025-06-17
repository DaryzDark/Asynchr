import 'dart:core';
import 'dart:ui';

import '../parser/AsynchrGrammarParser.dart' as parser;
import '../parser/AsynchrGrammarBaseVisitor.dart';
import '../ast/ast.dart';

class AstBuilder extends AsynchrGrammarBaseVisitor<AstNode> {
  @override
  Program visitProgram(parser.ProgramContext ctx) {
    // Обрабатываем контекст
    Context context;
    if (ctx.context_block() != null) {
      // Получаем все утверждения контекста
      final contextStatements = ctx.context_block()!.context_statements();
      
      int boardWidth = 10;
      int boardHeight = 10;
      final walls = <Offset>{};
      final boxes = <Offset>{};
      final actors = <String, ActorPosition>{};

      // Обрабатываем каждое утверждение контекста
      for (var i = 0; i < contextStatements.length; i++) {
        final stmt = contextStatements[i];
        if (stmt.board_def() != null) {
          final def = stmt.board_def()!;
          boardWidth = int.parse(def.NUMBER(0)?.text ?? '10');
          boardHeight = int.parse(def.NUMBER(1)?.text ?? '10');
        } else if (stmt.wall_def() != null) {
          final positions = _visitPositionGroup(stmt.wall_def()!.position_group()!);
          for (var pos in positions) {
            walls.add(Offset(pos.x.toDouble(), pos.y.toDouble()));
          }
        } else if (stmt.box_def() != null) {
          final positions = _visitPositionGroup(stmt.box_def()!.position_group()!);
          for (var pos in positions) {
            boxes.add(Offset(pos.x.toDouble(), pos.y.toDouble()));
          }
        } else if (stmt.actor_def() != null) {
          final name = stmt.actor_def()!.ID()?.text ?? '';
          final pos = _visitPosition(stmt.actor_def()!.position()!);
          final dir = _parseDirection(stmt.actor_def()!.direction()!.text);
          actors[name] = ActorPosition(Offset(pos.x.toDouble(), pos.y.toDouble()), dir);
        }
      }

      context = Context(
        width: boardWidth,
        height: boardHeight,
        walls: walls,
        boxes: boxes,
        actors: actors,
      );
    } else {
      // Если контекст не задан, создаем пустой
      context = Context(
        width: 10,
        height: 10,
        walls: <Offset>{},
        boxes: <Offset>{},
        actors: <String, ActorPosition>{},
      );
    }

    // Собираем все наборы потоков
    final threadSets = <ThreadSet>[];
    for (var i = 0; i < ctx.set_blocks().length; i++) {
      threadSets.add(visit(ctx.set_block(i)!) as ThreadSet);
    }

    // Проверяем результат
    String? resultId;
    if (ctx.result_expr() != null) {
      resultId = ctx.result_expr()!.ID()?.text;
    }

    return Program(context, threadSets, resultId: resultId);
  }

  @override
  ThreadSet visitSet_block(parser.Set_blockContext ctx) {
    final name = ctx.ID()?.text;
    final threads = <Thread>[];

    // Обрабатываем все потоки
    for (var i = 0; i < ctx.threads().length; i++) {
      threads.add(visit(ctx.thread(i)!) as Thread);
    }

    // Получаем оператор свертки, если есть
    String? foldOp;
    if (ctx.fold_op() != null) {
      foldOp = ctx.fold_op()!.text;
    }

    return ThreadSet(threads, name: name, foldOp: foldOp);
  }

  @override
  Thread visitThread(parser.ThreadContext ctx) {
    final threadName = ctx.ID()?.text ?? '';
    final actionList = visit(ctx.action_list()!) as ActionList;
    
    return Thread(threadName, ActionBlock(actionList.actions));
  }

  @override
  ActionList visitAction_list(parser.Action_listContext ctx) {
    final actions = <Action>[];
    for (var i = 0; i < ctx.actions().length; i++) {
      actions.add(visit(ctx.action_(i)!) as Action);
    }
    return ActionList(actions);
  }

  /* ───────── ACTIONS ───────── */
  @override
  Action visitWhileLoop(parser.WhileLoopContext ctx) {
    final condition = visit(ctx.condition()!) as Condition;
    final actionList = visit(ctx.action_list()!) as ActionList;
    return WhileLoop(condition, ActionBlock(actionList.actions));
  }

  @override
  Action visitRepeatForever(parser.RepeatForeverContext ctx) {
    final actionList = visit(ctx.action_list()!) as ActionList;
    return RepeatLoop(ActionBlock(actionList.actions));
  }

  @override
  Action visitConditional(parser.ConditionalContext ctx) {
    final condition = visit(ctx.condition()!) as Condition;
    final thenBlock = visit(ctx.block(0)!) as Block;
    
    ActionBlock? elseBlock;
    if (ctx.blocks().length > 1) {
      final elseBlockTemp = visit(ctx.block(1)!) as Block;
      elseBlock = ActionBlock(elseBlockTemp.actions);
    }
    
    return ConditionalAction(condition, ActionBlock(thenBlock.actions), elseBlock);
  }

  @override
  Block visitBlock(parser.BlockContext ctx) {
    List<Action> actions = [];
    
    if (ctx.action_() != null) {
      actions.add(visit(ctx.action_()!) as Action);
    } else if (ctx.action_list() != null) {
      final actionList = visit(ctx.action_list()!) as ActionList;
      actions = actionList.actions;
    }
    
    return Block(actions);
  }

  @override
  Action visitSimpleCmd(parser.SimpleCmdContext ctx) {
    return visit(ctx.command()!) as Action;
  }

  /* ───────── КОМАНДЫ ───────── */
  @override
  Action visitStepForward(parser.StepForwardContext ctx) => MoveAction();
  
  @override
  Action visitTurnLeft(parser.TurnLeftContext ctx) => TurnLeftAction();
  
  @override
  Action visitTurnRight(parser.TurnRightContext ctx) => TurnRightAction();
  
  @override
  Action visitPickUp(parser.PickUpContext ctx) => PickUpAction();
  
  @override
  Action visitDrop(parser.DropContext ctx) => DropAction();

  @override
  Action visitPause(parser.PauseContext ctx) {
    final duration = double.parse(ctx.NUMBER()?.text ?? '0');
    return PauseAction(duration);
  }

  @override
  Action visitSend(parser.SendContext ctx) {
    final message = _extractString(ctx.STRING()?.text ?? '');
    final recipient = ctx.ID()?.text ?? '';
    return SendAction(message, recipient);
  }

  @override
  Action visitReceive(parser.ReceiveContext ctx) {
    String? pattern;
    if (ctx.STRING() != null) {
      pattern = _extractString(ctx.STRING()?.text ?? '');
    } else if (ctx.STAR() != null) {
      pattern = "*";  // Wildcard pattern
    }
    return ReceiveAction(messagePattern: pattern);
  }

  /* ───────── УСЛОВИЯ ───────── */
  @override
  Condition visitMessageCondition(parser.MessageConditionContext ctx) {
    String? messagePattern;
    if (ctx.STRING() != null) {
      messagePattern = _extractString(ctx.STRING()?.text ?? '');
    }
    return MessageCondition(messagePattern: messagePattern);
  }

  @override
  Condition visitPathClearCondition(parser.PathClearConditionContext ctx) {
    return PathClearCondition();
  }

  @override
  Condition visitBoxAheadCondition(parser.BoxAheadConditionContext ctx) {
    return BoxAheadCondition();
  }

  @override
  Condition visitCarryingBoxCondition(parser.CarryingBoxConditionContext ctx) {
    return CarryingBoxCondition();
  }

  @override
  Condition visitActorAheadCondition(parser.ActorAheadConditionContext ctx) {
    return ActorAheadCondition();
  }

  @override
  Condition visitIdentifierCondition(parser.IdentifierConditionContext ctx) {
    return IdentifierCondition(ctx.ID()?.text ?? '');
  }

  @override
  Condition visitPositionCondition(parser.PositionConditionContext ctx) {
    final pos = _visitPosition(ctx.position()!);
    return PositionCondition(pos.x, pos.y);
  }

  /* ───────── ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ ───────── */
  List<Position> _visitPositionGroup(parser.Position_groupContext ctx) {
    final positions = <Position>[];
    for (var i = 0; i < ctx.positions().length; i++) {
      positions.add(_visitPosition(ctx.position(i)!));
    }
    return positions;
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

  String _extractString(String quoted) {
    // Удаляем окружающие кавычки
    if (quoted.startsWith('"') && quoted.endsWith('"')) {
      return quoted.substring(1, quoted.length - 1).replaceAll('\\"', '"');
    }
    return quoted;
  }
}

// Вспомогательный класс для возврата списка действий из метода visitAction_list
class ActionList extends AstNode {
  final List<Action> actions;
  
  ActionList(this.actions);
}

// Вспомогательный класс для блока действий
class Block extends AstNode {
  final List<Action> actions;
  
  Block(this.actions);
  
  static Block fromAction(Action action) => Block([action]);
  static Block fromActionList(List<Action> actions) => Block(actions);
}

// Вспомогательный класс для позиций
class Position {
  final int x;
  final int y;
  
  Position(this.x, this.y);
  
  @override
  String toString() => '($x, $y)';
}
