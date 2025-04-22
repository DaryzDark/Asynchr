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

  /// Enter a parse tree produced by the [WaitAction]
  /// labeled alternative in [file.parserName>.action].
  /// [ctx] the parse tree
  void enterWaitAction(WaitActionContext ctx);
  /// Exit a parse tree produced by the [WaitAction]
  /// labeled alternative in [AsynchrGrammarParser.action].
  /// [ctx] the parse tree
  void exitWaitAction(WaitActionContext ctx);

  /// Enter a parse tree produced by the [SimpleAction]
  /// labeled alternative in [file.parserName>.action].
  /// [ctx] the parse tree
  void enterSimpleAction(SimpleActionContext ctx);
  /// Exit a parse tree produced by the [SimpleAction]
  /// labeled alternative in [AsynchrGrammarParser.action].
  /// [ctx] the parse tree
  void exitSimpleAction(SimpleActionContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void enterCommand(CommandContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.command].
  /// [ctx] the parse tree
  void exitCommand(CommandContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void enterCondition(ConditionContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree
  void exitCondition(ConditionContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.query_block].
  /// [ctx] the parse tree
  void enterQuery_block(Query_blockContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.query_block].
  /// [ctx] the parse tree
  void exitQuery_block(Query_blockContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.query_statement].
  /// [ctx] the parse tree
  void enterQuery_statement(Query_statementContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.query_statement].
  /// [ctx] the parse tree
  void exitQuery_statement(Query_statementContext ctx);

  /// Enter a parse tree produced by [AsynchrGrammarParser.data].
  /// [ctx] the parse tree
  void enterData(DataContext ctx);
  /// Exit a parse tree produced by [AsynchrGrammarParser.data].
  /// [ctx] the parse tree
  void exitData(DataContext ctx);
}