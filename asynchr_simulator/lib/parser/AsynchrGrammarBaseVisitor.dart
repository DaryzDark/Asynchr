// Generated from asynchr_simulator/grammar/AsynchrGrammar.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'AsynchrGrammarParser.dart';
import 'AsynchrGrammarVisitor.dart';

/// This class provides an empty implementation of [AsynchrGrammarVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the return type of the visit operation. Use `void` for
/// operations with no return type.
class AsynchrGrammarBaseVisitor<T> extends ParseTreeVisitor<T> implements AsynchrGrammarVisitor<T> {
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitProgram(ProgramContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitContext_block(Context_blockContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitContext_statement(Context_statementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBoard_def(Board_defContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitWall_def(Wall_defContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBox_def(Box_defContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitActor_def(Actor_defContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPosition_group(Position_groupContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPosition(PositionContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitDirection(DirectionContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBehavior_block(Behavior_blockContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBehavior_statement(Behavior_statementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAction_list(Action_listContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitWhileLoop(WhileLoopContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitRepeatForever(RepeatForeverContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitConditional(ConditionalContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitWaitOther(WaitOtherContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitSimpleAction(SimpleActionContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitStepCmd(StepCmdContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitTurnLeftCmd(TurnLeftCmdContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitTurnRightCmd(TurnRightCmdContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPickUpCmd(PickUpCmdContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitDropCmd(DropCmdContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPauseCmd(PauseCmdContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitSendCmd(SendCmdContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitRecvCmd(RecvCmdContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitHasMsgCond(HasMsgCondContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitIdentifierCond(IdentifierCondContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPositionCond(PositionCondContext ctx) => visitChildren(ctx);
}