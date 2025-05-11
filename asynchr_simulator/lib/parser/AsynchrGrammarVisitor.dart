// Generated from asynchr_simulator/grammar/AsynchrGrammar.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'AsynchrGrammarParser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [AsynchrGrammarParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class AsynchrGrammarVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [AsynchrGrammarParser.program].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitProgram(ProgramContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.context_block].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitContext_block(Context_blockContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.context_statement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitContext_statement(Context_statementContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.board_def].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBoard_def(Board_defContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.wall_def].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWall_def(Wall_defContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.box_def].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBox_def(Box_defContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.actor_def].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActor_def(Actor_defContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.direction].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDirection(DirectionContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.position_group].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPosition_group(Position_groupContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.position].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPosition(PositionContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.set_block].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSet_block(Set_blockContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.thread].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitThread(ThreadContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.fold_op].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitFold_op(Fold_opContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.action_list].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAction_list(Action_listContext ctx);

  /// Visit a parse tree produced by the {@code WhileLoop}
  /// labeled alternative in {@link AsynchrGrammarParser#action}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWhileLoop(WhileLoopContext ctx);

  /// Visit a parse tree produced by the {@code RepeatForever}
  /// labeled alternative in {@link AsynchrGrammarParser#action}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitRepeatForever(RepeatForeverContext ctx);

  /// Visit a parse tree produced by the {@code Conditional}
  /// labeled alternative in {@link AsynchrGrammarParser#action}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitConditional(ConditionalContext ctx);

  /// Visit a parse tree produced by the {@code SimpleCmd}
  /// labeled alternative in {@link AsynchrGrammarParser#action}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSimpleCmd(SimpleCmdContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.block].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBlock(BlockContext ctx);

  /// Visit a parse tree produced by the {@code StepForward}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitStepForward(StepForwardContext ctx);

  /// Visit a parse tree produced by the {@code TurnLeft}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTurnLeft(TurnLeftContext ctx);

  /// Visit a parse tree produced by the {@code TurnRight}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTurnRight(TurnRightContext ctx);

  /// Visit a parse tree produced by the {@code PickUp}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPickUp(PickUpContext ctx);

  /// Visit a parse tree produced by the {@code Drop}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDrop(DropContext ctx);

  /// Visit a parse tree produced by the {@code Pause}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPause(PauseContext ctx);

  /// Visit a parse tree produced by the {@code Send}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSend(SendContext ctx);

  /// Visit a parse tree produced by the {@code Receive}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitReceive(ReceiveContext ctx);

  /// Visit a parse tree produced by the {@code MessageCondition}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMessageCondition(MessageConditionContext ctx);

  /// Visit a parse tree produced by the {@code PathClearCondition}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPathClearCondition(PathClearConditionContext ctx);

  /// Visit a parse tree produced by the {@code BoxAheadCondition}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBoxAheadCondition(BoxAheadConditionContext ctx);

  /// Visit a parse tree produced by the {@code CarryingBoxCondition}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitCarryingBoxCondition(CarryingBoxConditionContext ctx);

  /// Visit a parse tree produced by the {@code ActorAheadCondition}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActorAheadCondition(ActorAheadConditionContext ctx);

  /// Visit a parse tree produced by the {@code IdentifierCondition}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIdentifierCondition(IdentifierConditionContext ctx);

  /// Visit a parse tree produced by the {@code PositionCondition}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPositionCondition(PositionConditionContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.result_expr].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitResult_expr(Result_exprContext ctx);
}