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

  /// Enter a parse tree produced by [AsynchrGrammarParser.direction].
  /// [ctx] the parse tree
  void enterDirection(DirectionContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.direction].
  /// [ctx] the parse tree
  void exitDirection(DirectionContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.behavior_block].
  /// [ctx] the parse tree
  void enterBehavior_block(Behavior_blockContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.behavior_block].
  /// [ctx] the parse tree
  void exitBehavior_block(Behavior_blockContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.behavior_statement].
  /// [ctx] the parse tree
  void enterBehavior_statement(Behavior_statementContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.behavior_statement].
  /// [ctx] the parse tree
  void exitBehavior_statement(Behavior_statementContext ctx);

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

  /// Enter a parse tree produced by the [WaitOther]
  /// labeled alternative in [file.parserName>.action].
  /// [ctx] the parse tree
  void enterWaitOther(WaitOtherContext ctx);
  /// Exit a parse tree produced by the [WaitOther]
  /// labeled alternative in [AsynchrGrammarParser.action].
  /// [ctx] the parse tree
  void exitWaitOther(WaitOtherContext ctx);

  /// Enter a parse tree produced by the [SimpleAction]
  /// labeled alternative in [file.parserName>.action].
  /// [ctx] the parse tree
  void enterSimpleAction(SimpleActionContext ctx);
  /// Exit a parse tree produced by the [SimpleAction]
  /// labeled alternative in [AsynchrGrammarParser.action].
  /// [ctx] the parse tree
  void exitSimpleAction(SimpleActionContext ctx);

  /// Enter a parse tree produced by the [StepCmd]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterStepCmd(StepCmdContext ctx);
  /// Exit a parse tree produced by the [StepCmd]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitStepCmd(StepCmdContext ctx);

  /// Enter a parse tree produced by the [TurnLeftCmd]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterTurnLeftCmd(TurnLeftCmdContext ctx);
  /// Exit a parse tree produced by the [TurnLeftCmd]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitTurnLeftCmd(TurnLeftCmdContext ctx);

  /// Enter a parse tree produced by the [TurnRightCmd]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterTurnRightCmd(TurnRightCmdContext ctx);
  /// Exit a parse tree produced by the [TurnRightCmd]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitTurnRightCmd(TurnRightCmdContext ctx);

  /// Enter a parse tree produced by the [PickUpCmd]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterPickUpCmd(PickUpCmdContext ctx);
  /// Exit a parse tree produced by the [PickUpCmd]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitPickUpCmd(PickUpCmdContext ctx);

  /// Enter a parse tree produced by the [DropCmd]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterDropCmd(DropCmdContext ctx);
  /// Exit a parse tree produced by the [DropCmd]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitDropCmd(DropCmdContext ctx);

  /// Enter a parse tree produced by the [PauseCmd]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterPauseCmd(PauseCmdContext ctx);
  /// Exit a parse tree produced by the [PauseCmd]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitPauseCmd(PauseCmdContext ctx);

  /// Enter a parse tree produced by the [SendCmd]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterSendCmd(SendCmdContext ctx);
  /// Exit a parse tree produced by the [SendCmd]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitSendCmd(SendCmdContext ctx);

  /// Enter a parse tree produced by the [RecvCmd]
  /// labeled alternative in [file.parserName>.command].
  /// [ctx] the parse tree
  void enterRecvCmd(RecvCmdContext ctx);
  /// Exit a parse tree produced by the [RecvCmd]
  /// labeled alternative in [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitRecvCmd(RecvCmdContext ctx);

  /// Enter a parse tree produced by the [HasMsgCond]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterHasMsgCond(HasMsgCondContext ctx);
  /// Exit a parse tree produced by the [HasMsgCond]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitHasMsgCond(HasMsgCondContext ctx);

  /// Enter a parse tree produced by the [IdentifierCond]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterIdentifierCond(IdentifierCondContext ctx);
  /// Exit a parse tree produced by the [IdentifierCond]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitIdentifierCond(IdentifierCondContext ctx);

  /// Enter a parse tree produced by the [PositionCond]
  /// labeled alternative in [file.parserName>.condition].
  /// [ctx] the parse tree
  void enterPositionCond(PositionCondContext ctx);
  /// Exit a parse tree produced by the [PositionCond]
  /// labeled alternative in [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitPositionCond(PositionCondContext ctx);
}