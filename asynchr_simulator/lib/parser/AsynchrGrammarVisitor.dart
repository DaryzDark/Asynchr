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

  /// Visit a parse tree produced by the {@code WaitOther}
  /// labeled alternative in {@link AsynchrGrammarParser#action}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWaitOther(WaitOtherContext ctx);

  /// Visit a parse tree produced by the {@code SimpleAction}
  /// labeled alternative in {@link AsynchrGrammarParser#action}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSimpleAction(SimpleActionContext ctx);

  /// Visit a parse tree produced by the {@code StepCmd}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitStepCmd(StepCmdContext ctx);

  /// Visit a parse tree produced by the {@code TurnLeftCmd}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTurnLeftCmd(TurnLeftCmdContext ctx);

  /// Visit a parse tree produced by the {@code TurnRightCmd}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTurnRightCmd(TurnRightCmdContext ctx);

  /// Visit a parse tree produced by the {@code PickUpCmd}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPickUpCmd(PickUpCmdContext ctx);

  /// Visit a parse tree produced by the {@code DropCmd}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDropCmd(DropCmdContext ctx);

  /// Visit a parse tree produced by the {@code PauseCmd}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPauseCmd(PauseCmdContext ctx);

  /// Visit a parse tree produced by the {@code SendCmd}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSendCmd(SendCmdContext ctx);

  /// Visit a parse tree produced by the {@code RecvCmd}
  /// labeled alternative in {@link AsynchrGrammarParser#command}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitRecvCmd(RecvCmdContext ctx);

  /// Visit a parse tree produced by the {@code HasMsgCond}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitHasMsgCond(HasMsgCondContext ctx);

  /// Visit a parse tree produced by the {@code IdentifierCond}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIdentifierCond(IdentifierCondContext ctx);

  /// Visit a parse tree produced by the {@code PositionCond}
  /// labeled alternative in {@link AsynchrGrammarParser#condition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPositionCond(PositionCondContext ctx);
}