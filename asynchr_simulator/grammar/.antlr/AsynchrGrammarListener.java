// Generated from c:/Users/danie/Documents/dev/Asynchr/asynchr_simulator/grammar/AsynchrGrammar.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link AsynchrGrammarParser}.
 */
public interface AsynchrGrammarListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(AsynchrGrammarParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(AsynchrGrammarParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#context_block}.
	 * @param ctx the parse tree
	 */
	void enterContext_block(AsynchrGrammarParser.Context_blockContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#context_block}.
	 * @param ctx the parse tree
	 */
	void exitContext_block(AsynchrGrammarParser.Context_blockContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#context_statement}.
	 * @param ctx the parse tree
	 */
	void enterContext_statement(AsynchrGrammarParser.Context_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#context_statement}.
	 * @param ctx the parse tree
	 */
	void exitContext_statement(AsynchrGrammarParser.Context_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#board_def}.
	 * @param ctx the parse tree
	 */
	void enterBoard_def(AsynchrGrammarParser.Board_defContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#board_def}.
	 * @param ctx the parse tree
	 */
	void exitBoard_def(AsynchrGrammarParser.Board_defContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#wall_def}.
	 * @param ctx the parse tree
	 */
	void enterWall_def(AsynchrGrammarParser.Wall_defContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#wall_def}.
	 * @param ctx the parse tree
	 */
	void exitWall_def(AsynchrGrammarParser.Wall_defContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#box_def}.
	 * @param ctx the parse tree
	 */
	void enterBox_def(AsynchrGrammarParser.Box_defContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#box_def}.
	 * @param ctx the parse tree
	 */
	void exitBox_def(AsynchrGrammarParser.Box_defContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#actor_def}.
	 * @param ctx the parse tree
	 */
	void enterActor_def(AsynchrGrammarParser.Actor_defContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#actor_def}.
	 * @param ctx the parse tree
	 */
	void exitActor_def(AsynchrGrammarParser.Actor_defContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#position_group}.
	 * @param ctx the parse tree
	 */
	void enterPosition_group(AsynchrGrammarParser.Position_groupContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#position_group}.
	 * @param ctx the parse tree
	 */
	void exitPosition_group(AsynchrGrammarParser.Position_groupContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#position}.
	 * @param ctx the parse tree
	 */
	void enterPosition(AsynchrGrammarParser.PositionContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#position}.
	 * @param ctx the parse tree
	 */
	void exitPosition(AsynchrGrammarParser.PositionContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#direction}.
	 * @param ctx the parse tree
	 */
	void enterDirection(AsynchrGrammarParser.DirectionContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#direction}.
	 * @param ctx the parse tree
	 */
	void exitDirection(AsynchrGrammarParser.DirectionContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#behavior_block}.
	 * @param ctx the parse tree
	 */
	void enterBehavior_block(AsynchrGrammarParser.Behavior_blockContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#behavior_block}.
	 * @param ctx the parse tree
	 */
	void exitBehavior_block(AsynchrGrammarParser.Behavior_blockContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#behavior_statement}.
	 * @param ctx the parse tree
	 */
	void enterBehavior_statement(AsynchrGrammarParser.Behavior_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#behavior_statement}.
	 * @param ctx the parse tree
	 */
	void exitBehavior_statement(AsynchrGrammarParser.Behavior_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#action_list}.
	 * @param ctx the parse tree
	 */
	void enterAction_list(AsynchrGrammarParser.Action_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#action_list}.
	 * @param ctx the parse tree
	 */
	void exitAction_list(AsynchrGrammarParser.Action_listContext ctx);
	/**
	 * Enter a parse tree produced by the {@code WhileLoop}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void enterWhileLoop(AsynchrGrammarParser.WhileLoopContext ctx);
	/**
	 * Exit a parse tree produced by the {@code WhileLoop}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void exitWhileLoop(AsynchrGrammarParser.WhileLoopContext ctx);
	/**
	 * Enter a parse tree produced by the {@code RepeatForever}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void enterRepeatForever(AsynchrGrammarParser.RepeatForeverContext ctx);
	/**
	 * Exit a parse tree produced by the {@code RepeatForever}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void exitRepeatForever(AsynchrGrammarParser.RepeatForeverContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Conditional}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void enterConditional(AsynchrGrammarParser.ConditionalContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Conditional}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void exitConditional(AsynchrGrammarParser.ConditionalContext ctx);
	/**
	 * Enter a parse tree produced by the {@code WaitAction}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void enterWaitAction(AsynchrGrammarParser.WaitActionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code WaitAction}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void exitWaitAction(AsynchrGrammarParser.WaitActionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SimpleAction}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void enterSimpleAction(AsynchrGrammarParser.SimpleActionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SimpleAction}
	 * labeled alternative in {@link AsynchrGrammarParser#action}.
	 * @param ctx the parse tree
	 */
	void exitSimpleAction(AsynchrGrammarParser.SimpleActionContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#command}.
	 * @param ctx the parse tree
	 */
	void enterCommand(AsynchrGrammarParser.CommandContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#command}.
	 * @param ctx the parse tree
	 */
	void exitCommand(AsynchrGrammarParser.CommandContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#condition}.
	 * @param ctx the parse tree
	 */
	void enterCondition(AsynchrGrammarParser.ConditionContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#condition}.
	 * @param ctx the parse tree
	 */
	void exitCondition(AsynchrGrammarParser.ConditionContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#query_block}.
	 * @param ctx the parse tree
	 */
	void enterQuery_block(AsynchrGrammarParser.Query_blockContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#query_block}.
	 * @param ctx the parse tree
	 */
	void exitQuery_block(AsynchrGrammarParser.Query_blockContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#query_statement}.
	 * @param ctx the parse tree
	 */
	void enterQuery_statement(AsynchrGrammarParser.Query_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#query_statement}.
	 * @param ctx the parse tree
	 */
	void exitQuery_statement(AsynchrGrammarParser.Query_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link AsynchrGrammarParser#data}.
	 * @param ctx the parse tree
	 */
	void enterData(AsynchrGrammarParser.DataContext ctx);
	/**
	 * Exit a parse tree produced by {@link AsynchrGrammarParser#data}.
	 * @param ctx the parse tree
	 */
	void exitData(AsynchrGrammarParser.DataContext ctx);
}