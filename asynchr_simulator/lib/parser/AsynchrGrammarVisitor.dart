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

  /// Visit a parse tree produced by [AsynchrGrammarParser.position_group].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPosition_group(Position_groupContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.position].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPosition(PositionContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.direction].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDirection(DirectionContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.behavior_block].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBehavior_block(Behavior_blockContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.behavior_statement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBehavior_statement(Behavior_statementContext ctx);

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

  /// Visit a parse tree produced by the {@code WaitAction}
  /// labeled alternative in {@link AsynchrGrammarParser#action}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWaitAction(WaitActionContext ctx);

  /// Visit a parse tree produced by the {@code SimpleAction}
  /// labeled alternative in {@link AsynchrGrammarParser#action}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSimpleAction(SimpleActionContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.command].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitCommand(CommandContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.condition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitCondition(ConditionContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.query_block].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitQuery_block(Query_blockContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.query_statement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitQuery_statement(Query_statementContext ctx);

  /// Visit a parse tree produced by [AsynchrGrammarParser.data].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitData(DataContext ctx);
}