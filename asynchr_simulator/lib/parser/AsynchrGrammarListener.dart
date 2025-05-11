// Generated from asynchr_simulator/grammar/AsynchrGrammar.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'AsynchrGrammarParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [AsynchrGrammarParser].
abstract class AsynchrGrammarListener extends ParseTreeListener {
  /// Enter a parse tree produced by [AsynchrGrammarParser.program].
  /// [ctx] the parse tree
  void enterProgram(ProgramContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.program].
  /// [ctx] the parse tree
  void exitProgram(ProgramContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.context_block].
  /// [ctx] the parse tree
  void enterContext_block(Context_blockContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.context_block].
  /// [ctx] the parse tree
  void exitContext_block(Context_blockContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.context_statement].
  /// [ctx] the parse tree
  void enterContext_statement(Context_statementContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.context_statement].
  /// [ctx] the parse tree
  void exitContext_statement(Context_statementContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.board_def].
  /// [ctx] the parse tree
  void enterBoard_def(Board_defContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.board_def].
  /// [ctx] the parse tree
  void exitBoard_def(Board_defContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.wall_def].
  /// [ctx] the parse tree
  void enterWall_def(Wall_defContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.wall_def].
  /// [ctx] the parse tree
  void exitWall_def(Wall_defContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.box_def].
  /// [ctx] the parse tree
  void enterBox_def(Box_defContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.box_def].
  /// [ctx] the parse tree
  void exitBox_def(Box_defContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.actor_def].
  /// [ctx] the parse tree
  void enterActor_def(Actor_defContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.actor_def].
  /// [ctx] the parse tree
  void exitActor_def(Actor_defContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.direction].
  /// [ctx] the parse tree
  void enterDirection(DirectionContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.direction].
  /// [ctx] the parse tree
  void exitDirection(DirectionContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.position_group].
  /// [ctx] the parse tree
  void enterPosition_group(Position_groupContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.position_group].
  /// [ctx] the parse tree
  void exitPosition_group(Position_groupContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.position].
  /// [ctx] the parse tree
  void enterPosition(PositionContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.position].
  /// [ctx] the parse tree
  void exitPosition(PositionContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.set_block].
  /// [ctx] the parse tree
  void enterSet_block(Set_blockContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.set_block].
  /// [ctx] the parse tree
  void exitSet_block(Set_blockContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.thread].
  /// [ctx] the parse tree
  void enterThread(ThreadContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.thread].
  /// [ctx] the parse tree
  void exitThread(ThreadContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.fold_op].
  /// [ctx] the parse tree
  void enterFold_op(Fold_opContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.fold_op].
  /// [ctx] the parse tree
  void exitFold_op(Fold_opContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.action_list].
  /// [ctx] the parse tree
  void enterAction_list(Action_listContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.action_list].
  /// [ctx] the parse tree
  void exitAction_list(Action_listContext ctx);

  /// Enter a parse tree produced by the [WhileLoop]
  /// labeled alternative in [file.parserName>.action].
  /// [ctx] the parse tree
  void enterWhileLoop(WhileLoopContext ctx);
  /// Exit a parse tree produced by the [WhileLoop]
  /// labeled alternative in [AsynchrGrammarParser.action].
  /// [ctx] the parse tree
  void exitWhileLoop(WhileLoopContext ctx);

  /// Enter a parse tree produced by the [RepeatForever]
  /// labeled alternative in [file.parserName>.action].
  /// [ctx] the parse tree
  void enterRepeatForever(RepeatForeverContext ctx);
  /// Exit a parse tree produced by the [RepeatForever]
  /// labeled alternative in [AsynchrGrammarParser.action].
  /// [ctx] the parse tree
  void exitRepeatForever(RepeatForeverContext ctx);

  /// Enter a parse tree produced by the [Conditional]
  /// labeled alternative in [file.parserName>.action].
  /// [ctx] the parse tree
  void enterConditional(ConditionalContext ctx);
  /// Exit a parse tree produced by the [Conditional]
  /// labeled alternative in [AsynchrGrammarParser.action].
  /// [ctx] the parse tree
  void exitConditional(ConditionalContext ctx);

  /// Enter a parse tree produced by the [SimpleCmd]
  /// labeled alternative in [file.parserName>.action].
  /// [ctx] the parse tree
  void enterSimpleCmd(SimpleCmdContext ctx);
  /// Exit a parse tree produced by the [SimpleCmd]
  /// labeled alternative in [AsynchrGrammarParser.action].
  /// [ctx] the parse tree
  void exitSimpleCmd(SimpleCmdContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by the [StepForward]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterStepForward(StepForwardContext ctx);
  /// Exit a parse tree produced by the [StepForward]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitStepForward(StepForwardContext ctx);

  /// Enter a parse tree produced by the [TurnLeft]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterTurnLeft(TurnLeftContext ctx);
  /// Exit a parse tree produced by the [TurnLeft]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitTurnLeft(TurnLeftContext ctx);

  /// Enter a parse tree produced by the [TurnRight]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterTurnRight(TurnRightContext ctx);
  /// Exit a parse tree produced by the [TurnRight]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitTurnRight(TurnRightContext ctx);

  /// Enter a parse tree produced by the [PickUp]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterPickUp(PickUpContext ctx);
  /// Exit a parse tree produced by the [PickUp]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitPickUp(PickUpContext ctx);

  /// Enter a parse tree produced by the [Drop]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterDrop(DropContext ctx);
  /// Exit a parse tree produced by the [Drop]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitDrop(DropContext ctx);

  /// Enter a parse tree produced by the [Pause]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterPause(PauseContext ctx);
  /// Exit a parse tree produced by the [Pause]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitPause(PauseContext ctx);

  /// Enter a parse tree produced by the [Send]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterSend(SendContext ctx);
  /// Exit a parse tree produced by the [Send]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitSend(SendContext ctx);

  /// Enter a parse tree produced by the [Receive]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterReceive(ReceiveContext ctx);
  /// Exit a parse tree produced by the [Receive]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitReceive(ReceiveContext ctx);

  /// Enter a parse tree produced by the [MessageCondition]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterMessageCondition(MessageConditionContext ctx);
  /// Exit a parse tree produced by the [MessageCondition]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitMessageCondition(MessageConditionContext ctx);

  /// Enter a parse tree produced by the [PathClearCondition]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterPathClearCondition(PathClearConditionContext ctx);
  /// Exit a parse tree produced by the [PathClearCondition]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitPathClearCondition(PathClearConditionContext ctx);

  /// Enter a parse tree produced by the [BoxAheadCondition]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterBoxAheadCondition(BoxAheadConditionContext ctx);
  /// Exit a parse tree produced by the [BoxAheadCondition]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitBoxAheadCondition(BoxAheadConditionContext ctx);

  /// Enter a parse tree produced by the [CarryingBoxCondition]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterCarryingBoxCondition(CarryingBoxConditionContext ctx);
  /// Exit a parse tree produced by the [CarryingBoxCondition]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitCarryingBoxCondition(CarryingBoxConditionContext ctx);

  /// Enter a parse tree produced by the [ActorAheadCondition]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterActorAheadCondition(ActorAheadConditionContext ctx);
  /// Exit a parse tree produced by the [ActorAheadCondition]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitActorAheadCondition(ActorAheadConditionContext ctx);

  /// Enter a parse tree produced by the [IdentifierCondition]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterIdentifierCondition(IdentifierConditionContext ctx);
  /// Exit a parse tree produced by the [IdentifierCondition]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitIdentifierCondition(IdentifierConditionContext ctx);

  /// Enter a parse tree produced by the [PositionCondition]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterPositionCondition(PositionConditionContext ctx);
  /// Exit a parse tree produced by the [PositionCondition]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitPositionCondition(PositionConditionContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.result_expr].
  /// [ctx] the parse tree
  void enterResult_expr(Result_exprContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.result_expr].
  /// [ctx] the parse tree
  void exitResult_expr(Result_exprContext ctx);
}