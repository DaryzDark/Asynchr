// Generated from c:/Users/danie/Documents/dev/Asynchr/asynchr_simulator/grammar/AsynchrGrammar.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class AsynchrGrammarParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, ID=21, NUMBER=22, STRING=23, LPAREN=24, 
		RPAREN=25, LBRACE=26, RBRACE=27, COMMA=28, SEMI=29, EQ=30, STAR=31, QUESTION=32, 
		WS=33, COMMENT=34;
	public static final int
		RULE_program = 0, RULE_context_block = 1, RULE_context_statement = 2, 
		RULE_board_def = 3, RULE_wall_def = 4, RULE_box_def = 5, RULE_actor_def = 6, 
		RULE_position_group = 7, RULE_position = 8, RULE_direction = 9, RULE_behavior_block = 10, 
		RULE_behavior_statement = 11, RULE_action_list = 12, RULE_action = 13, 
		RULE_command = 14, RULE_condition = 15, RULE_query_block = 16, RULE_query_statement = 17, 
		RULE_data = 18;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "context_block", "context_statement", "board_def", "wall_def", 
			"box_def", "actor_def", "position_group", "position", "direction", "behavior_block", 
			"behavior_statement", "action_list", "action", "command", "condition", 
			"query_block", "query_statement", "data"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'\\u0414\\u043E\\u0441\\u043A\\u0430'", "'\\u0421\\u0442\\u0435\\u043D\\u044B'", 
			"'\\u041A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0438'", "'\\u0412\\u0412\\u0415\\u0420\\u0425'", 
			"'\\u0412\\u041D\\u0418\\u0417'", "'\\u0412\\u041B\\u0415\\u0412\\u041E'", 
			"'\\u0412\\u041F\\u0420\\u0410\\u0412\\u041E'", "'\\u0414\\u043B\\u044F'", 
			"'\\u0426\\u0418\\u041A\\u041B'", "'\\u041F\\u041E\\u041A\\u0410'", "'\\u041F\\u041E\\u0412\\u0422\\u041E\\u0420\\u0418\\u0422\\u042C'", 
			"'\\u0415\\u0421\\u041B\\u0418'", "'\\u0422\\u041E'", "'\\u0418\\u041D\\u0410\\u0427\\u0415'", 
			"'\\u0416\\u0414\\u0410\\u0422\\u042C'", "'\\u0428\\u0430\\u0433 \\u0412\\u043F\\u0435\\u0440\\u0451\\u0434'", 
			"'\\u041F\\u043E\\u0432\\u0435\\u0440\\u043D\\u0443\\u0442\\u044C \\u0412\\u043B\\u0435\\u0432\\u043E'", 
			"'\\u041F\\u043E\\u0432\\u0435\\u0440\\u043D\\u0443\\u0442\\u044C \\u0412\\u043F\\u0440\\u0430\\u0432\\u043E'", 
			"'\\u041F\\u043E\\u0434\\u043D\\u044F\\u0442\\u044C_\\u043A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0443'", 
			"'\\u041E\\u043F\\u0443\\u0441\\u0442\\u0438\\u0442\\u044C_\\u043A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0443'", 
			null, null, null, "'('", "')'", "'{'", "'}'", "','", "';'", "'='", "'*'", 
			"'?'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, "ID", "NUMBER", 
			"STRING", "LPAREN", "RPAREN", "LBRACE", "RBRACE", "COMMA", "SEMI", "EQ", 
			"STAR", "QUESTION", "WS", "COMMENT"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "AsynchrGrammar.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public AsynchrGrammarParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public Context_blockContext context_block() {
			return getRuleContext(Context_blockContext.class,0);
		}
		public TerminalNode EOF() { return getToken(AsynchrGrammarParser.EOF, 0); }
		public Behavior_blockContext behavior_block() {
			return getRuleContext(Behavior_blockContext.class,0);
		}
		public Query_blockContext query_block() {
			return getRuleContext(Query_blockContext.class,0);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(38);
			context_block();
			setState(40);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__7) {
				{
				setState(39);
				behavior_block();
				}
			}

			setState(43);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==QUESTION) {
				{
				setState(42);
				query_block();
				}
			}

			setState(45);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Context_blockContext extends ParserRuleContext {
		public List<Context_statementContext> context_statement() {
			return getRuleContexts(Context_statementContext.class);
		}
		public Context_statementContext context_statement(int i) {
			return getRuleContext(Context_statementContext.class,i);
		}
		public Context_blockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_context_block; }
	}

	public final Context_blockContext context_block() throws RecognitionException {
		Context_blockContext _localctx = new Context_blockContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_context_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(48); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(47);
				context_statement();
				}
				}
				setState(50); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & 2097166L) != 0) );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Context_statementContext extends ParserRuleContext {
		public Board_defContext board_def() {
			return getRuleContext(Board_defContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(AsynchrGrammarParser.SEMI, 0); }
		public Wall_defContext wall_def() {
			return getRuleContext(Wall_defContext.class,0);
		}
		public Box_defContext box_def() {
			return getRuleContext(Box_defContext.class,0);
		}
		public Actor_defContext actor_def() {
			return getRuleContext(Actor_defContext.class,0);
		}
		public Context_statementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_context_statement; }
	}

	public final Context_statementContext context_statement() throws RecognitionException {
		Context_statementContext _localctx = new Context_statementContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_context_statement);
		try {
			setState(64);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				enterOuterAlt(_localctx, 1);
				{
				setState(52);
				board_def();
				setState(53);
				match(SEMI);
				}
				break;
			case T__1:
				enterOuterAlt(_localctx, 2);
				{
				setState(55);
				wall_def();
				setState(56);
				match(SEMI);
				}
				break;
			case T__2:
				enterOuterAlt(_localctx, 3);
				{
				setState(58);
				box_def();
				setState(59);
				match(SEMI);
				}
				break;
			case ID:
				enterOuterAlt(_localctx, 4);
				{
				setState(61);
				actor_def();
				setState(62);
				match(SEMI);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Board_defContext extends ParserRuleContext {
		public TerminalNode EQ() { return getToken(AsynchrGrammarParser.EQ, 0); }
		public List<TerminalNode> NUMBER() { return getTokens(AsynchrGrammarParser.NUMBER); }
		public TerminalNode NUMBER(int i) {
			return getToken(AsynchrGrammarParser.NUMBER, i);
		}
		public TerminalNode STAR() { return getToken(AsynchrGrammarParser.STAR, 0); }
		public Board_defContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_board_def; }
	}

	public final Board_defContext board_def() throws RecognitionException {
		Board_defContext _localctx = new Board_defContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_board_def);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(66);
			match(T__0);
			setState(67);
			match(EQ);
			setState(68);
			match(NUMBER);
			setState(69);
			match(STAR);
			setState(70);
			match(NUMBER);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Wall_defContext extends ParserRuleContext {
		public Position_groupContext position_group() {
			return getRuleContext(Position_groupContext.class,0);
		}
		public Wall_defContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_wall_def; }
	}

	public final Wall_defContext wall_def() throws RecognitionException {
		Wall_defContext _localctx = new Wall_defContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_wall_def);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(72);
			match(T__1);
			setState(73);
			position_group();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Box_defContext extends ParserRuleContext {
		public Position_groupContext position_group() {
			return getRuleContext(Position_groupContext.class,0);
		}
		public Box_defContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_box_def; }
	}

	public final Box_defContext box_def() throws RecognitionException {
		Box_defContext _localctx = new Box_defContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_box_def);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(75);
			match(T__2);
			setState(76);
			position_group();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Actor_defContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public TerminalNode EQ() { return getToken(AsynchrGrammarParser.EQ, 0); }
		public PositionContext position() {
			return getRuleContext(PositionContext.class,0);
		}
		public DirectionContext direction() {
			return getRuleContext(DirectionContext.class,0);
		}
		public Actor_defContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_actor_def; }
	}

	public final Actor_defContext actor_def() throws RecognitionException {
		Actor_defContext _localctx = new Actor_defContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_actor_def);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(78);
			match(ID);
			setState(79);
			match(EQ);
			setState(80);
			position();
			setState(81);
			direction();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Position_groupContext extends ParserRuleContext {
		public TerminalNode LPAREN() { return getToken(AsynchrGrammarParser.LPAREN, 0); }
		public List<PositionContext> position() {
			return getRuleContexts(PositionContext.class);
		}
		public PositionContext position(int i) {
			return getRuleContext(PositionContext.class,i);
		}
		public TerminalNode RPAREN() { return getToken(AsynchrGrammarParser.RPAREN, 0); }
		public List<TerminalNode> COMMA() { return getTokens(AsynchrGrammarParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(AsynchrGrammarParser.COMMA, i);
		}
		public Position_groupContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_position_group; }
	}

	public final Position_groupContext position_group() throws RecognitionException {
		Position_groupContext _localctx = new Position_groupContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_position_group);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(83);
			match(LPAREN);
			setState(84);
			position();
			setState(89);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(85);
				match(COMMA);
				setState(86);
				position();
				}
				}
				setState(91);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(92);
			match(RPAREN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PositionContext extends ParserRuleContext {
		public TerminalNode LPAREN() { return getToken(AsynchrGrammarParser.LPAREN, 0); }
		public List<TerminalNode> NUMBER() { return getTokens(AsynchrGrammarParser.NUMBER); }
		public TerminalNode NUMBER(int i) {
			return getToken(AsynchrGrammarParser.NUMBER, i);
		}
		public TerminalNode COMMA() { return getToken(AsynchrGrammarParser.COMMA, 0); }
		public TerminalNode RPAREN() { return getToken(AsynchrGrammarParser.RPAREN, 0); }
		public PositionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_position; }
	}

	public final PositionContext position() throws RecognitionException {
		PositionContext _localctx = new PositionContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_position);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(94);
			match(LPAREN);
			setState(95);
			match(NUMBER);
			setState(96);
			match(COMMA);
			setState(97);
			match(NUMBER);
			setState(98);
			match(RPAREN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DirectionContext extends ParserRuleContext {
		public DirectionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_direction; }
	}

	public final DirectionContext direction() throws RecognitionException {
		DirectionContext _localctx = new DirectionContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_direction);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 240L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Behavior_blockContext extends ParserRuleContext {
		public List<Behavior_statementContext> behavior_statement() {
			return getRuleContexts(Behavior_statementContext.class);
		}
		public Behavior_statementContext behavior_statement(int i) {
			return getRuleContext(Behavior_statementContext.class,i);
		}
		public Behavior_blockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_behavior_block; }
	}

	public final Behavior_blockContext behavior_block() throws RecognitionException {
		Behavior_blockContext _localctx = new Behavior_blockContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_behavior_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(103); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(102);
				behavior_statement();
				}
				}
				setState(105); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__7 );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Behavior_statementContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public TerminalNode EQ() { return getToken(AsynchrGrammarParser.EQ, 0); }
		public TerminalNode LBRACE() { return getToken(AsynchrGrammarParser.LBRACE, 0); }
		public Action_listContext action_list() {
			return getRuleContext(Action_listContext.class,0);
		}
		public TerminalNode RBRACE() { return getToken(AsynchrGrammarParser.RBRACE, 0); }
		public TerminalNode SEMI() { return getToken(AsynchrGrammarParser.SEMI, 0); }
		public Behavior_statementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_behavior_statement; }
	}

	public final Behavior_statementContext behavior_statement() throws RecognitionException {
		Behavior_statementContext _localctx = new Behavior_statementContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_behavior_statement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(107);
			match(T__7);
			setState(108);
			match(ID);
			setState(109);
			match(EQ);
			setState(110);
			match(LBRACE);
			setState(111);
			action_list();
			setState(112);
			match(RBRACE);
			setState(113);
			match(SEMI);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Action_listContext extends ParserRuleContext {
		public List<ActionContext> action() {
			return getRuleContexts(ActionContext.class);
		}
		public ActionContext action(int i) {
			return getRuleContext(ActionContext.class,i);
		}
		public List<TerminalNode> SEMI() { return getTokens(AsynchrGrammarParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(AsynchrGrammarParser.SEMI, i);
		}
		public Action_listContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_action_list; }
	}

	public final Action_listContext action_list() throws RecognitionException {
		Action_listContext _localctx = new Action_listContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_action_list);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(115);
			action();
			setState(120);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==SEMI) {
				{
				{
				setState(116);
				match(SEMI);
				setState(117);
				action();
				}
				}
				setState(122);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ActionContext extends ParserRuleContext {
		public ActionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_action; }
	 
		public ActionContext() { }
		public void copyFrom(ActionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ConditionalContext extends ActionContext {
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public List<ActionContext> action() {
			return getRuleContexts(ActionContext.class);
		}
		public ActionContext action(int i) {
			return getRuleContext(ActionContext.class,i);
		}
		public ConditionalContext(ActionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WhileLoopContext extends ActionContext {
		public TerminalNode LBRACE() { return getToken(AsynchrGrammarParser.LBRACE, 0); }
		public Action_listContext action_list() {
			return getRuleContext(Action_listContext.class,0);
		}
		public TerminalNode RBRACE() { return getToken(AsynchrGrammarParser.RBRACE, 0); }
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public WhileLoopContext(ActionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RepeatForeverContext extends ActionContext {
		public TerminalNode LBRACE() { return getToken(AsynchrGrammarParser.LBRACE, 0); }
		public Action_listContext action_list() {
			return getRuleContext(Action_listContext.class,0);
		}
		public TerminalNode RBRACE() { return getToken(AsynchrGrammarParser.RBRACE, 0); }
		public RepeatForeverContext(ActionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SimpleActionContext extends ActionContext {
		public CommandContext command() {
			return getRuleContext(CommandContext.class,0);
		}
		public SimpleActionContext(ActionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WaitActionContext extends ActionContext {
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public WaitActionContext(ActionContext ctx) { copyFrom(ctx); }
	}

	public final ActionContext action() throws RecognitionException {
		ActionContext _localctx = new ActionContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_action);
		try {
			setState(146);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__8:
				_localctx = new WhileLoopContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(123);
				match(T__8);
				setState(124);
				match(LBRACE);
				setState(125);
				action_list();
				setState(126);
				match(RBRACE);
				setState(127);
				match(T__9);
				setState(128);
				condition();
				}
				break;
			case T__10:
				_localctx = new RepeatForeverContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(130);
				match(T__10);
				setState(131);
				match(LBRACE);
				setState(132);
				action_list();
				setState(133);
				match(RBRACE);
				}
				break;
			case T__11:
				_localctx = new ConditionalContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(135);
				match(T__11);
				setState(136);
				condition();
				setState(137);
				match(T__12);
				setState(138);
				action();
				setState(141);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,7,_ctx) ) {
				case 1:
					{
					setState(139);
					match(T__13);
					setState(140);
					action();
					}
					break;
				}
				}
				break;
			case T__14:
				_localctx = new WaitActionContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(143);
				match(T__14);
				setState(144);
				match(ID);
				}
				break;
			case T__15:
			case T__16:
			case T__17:
			case T__18:
			case T__19:
				_localctx = new SimpleActionContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(145);
				command();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CommandContext extends ParserRuleContext {
		public CommandContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_command; }
	}

	public final CommandContext command() throws RecognitionException {
		CommandContext _localctx = new CommandContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_command);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(148);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 2031616L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ConditionContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public DataContext data() {
			return getRuleContext(DataContext.class,0);
		}
		public ConditionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_condition; }
	}

	public final ConditionContext condition() throws RecognitionException {
		ConditionContext _localctx = new ConditionContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_condition);
		try {
			setState(152);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ID:
				enterOuterAlt(_localctx, 1);
				{
				setState(150);
				match(ID);
				}
				break;
			case NUMBER:
			case STRING:
			case LPAREN:
				enterOuterAlt(_localctx, 2);
				{
				setState(151);
				data();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Query_blockContext extends ParserRuleContext {
		public List<Query_statementContext> query_statement() {
			return getRuleContexts(Query_statementContext.class);
		}
		public Query_statementContext query_statement(int i) {
			return getRuleContext(Query_statementContext.class,i);
		}
		public Query_blockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_query_block; }
	}

	public final Query_blockContext query_block() throws RecognitionException {
		Query_blockContext _localctx = new Query_blockContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_query_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(155); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(154);
				query_statement();
				}
				}
				setState(157); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==QUESTION );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Query_statementContext extends ParserRuleContext {
		public TerminalNode QUESTION() { return getToken(AsynchrGrammarParser.QUESTION, 0); }
		public DataContext data() {
			return getRuleContext(DataContext.class,0);
		}
		public Query_statementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_query_statement; }
	}

	public final Query_statementContext query_statement() throws RecognitionException {
		Query_statementContext _localctx = new Query_statementContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_query_statement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(159);
			match(QUESTION);
			setState(160);
			data();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DataContext extends ParserRuleContext {
		public TerminalNode NUMBER() { return getToken(AsynchrGrammarParser.NUMBER, 0); }
		public TerminalNode STRING() { return getToken(AsynchrGrammarParser.STRING, 0); }
		public PositionContext position() {
			return getRuleContext(PositionContext.class,0);
		}
		public Position_groupContext position_group() {
			return getRuleContext(Position_groupContext.class,0);
		}
		public DataContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_data; }
	}

	public final DataContext data() throws RecognitionException {
		DataContext _localctx = new DataContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_data);
		try {
			setState(166);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(162);
				match(NUMBER);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(163);
				match(STRING);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(164);
				position();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(165);
				position_group();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\u0004\u0001\"\u00a9\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0001\u0000\u0001\u0000\u0003\u0000)\b\u0000\u0001\u0000\u0003\u0000"+
		",\b\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0004\u00011\b\u0001\u000b"+
		"\u0001\f\u00012\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0003\u0002A\b\u0002\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0005\u0007X\b\u0007\n\u0007\f\u0007[\t\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\t\u0001\t"+
		"\u0001\n\u0004\nh\b\n\u000b\n\f\ni\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\f\u0001"+
		"\f\u0001\f\u0005\fw\b\f\n\f\f\fz\t\f\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0003\r\u008e\b\r\u0001\r\u0001\r\u0001"+
		"\r\u0003\r\u0093\b\r\u0001\u000e\u0001\u000e\u0001\u000f\u0001\u000f\u0003"+
		"\u000f\u0099\b\u000f\u0001\u0010\u0004\u0010\u009c\b\u0010\u000b\u0010"+
		"\f\u0010\u009d\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0003\u0012\u00a7\b\u0012\u0001\u0012\u0000\u0000"+
		"\u0013\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018"+
		"\u001a\u001c\u001e \"$\u0000\u0002\u0001\u0000\u0004\u0007\u0001\u0000"+
		"\u0010\u0014\u00a8\u0000&\u0001\u0000\u0000\u0000\u00020\u0001\u0000\u0000"+
		"\u0000\u0004@\u0001\u0000\u0000\u0000\u0006B\u0001\u0000\u0000\u0000\b"+
		"H\u0001\u0000\u0000\u0000\nK\u0001\u0000\u0000\u0000\fN\u0001\u0000\u0000"+
		"\u0000\u000eS\u0001\u0000\u0000\u0000\u0010^\u0001\u0000\u0000\u0000\u0012"+
		"d\u0001\u0000\u0000\u0000\u0014g\u0001\u0000\u0000\u0000\u0016k\u0001"+
		"\u0000\u0000\u0000\u0018s\u0001\u0000\u0000\u0000\u001a\u0092\u0001\u0000"+
		"\u0000\u0000\u001c\u0094\u0001\u0000\u0000\u0000\u001e\u0098\u0001\u0000"+
		"\u0000\u0000 \u009b\u0001\u0000\u0000\u0000\"\u009f\u0001\u0000\u0000"+
		"\u0000$\u00a6\u0001\u0000\u0000\u0000&(\u0003\u0002\u0001\u0000\')\u0003"+
		"\u0014\n\u0000(\'\u0001\u0000\u0000\u0000()\u0001\u0000\u0000\u0000)+"+
		"\u0001\u0000\u0000\u0000*,\u0003 \u0010\u0000+*\u0001\u0000\u0000\u0000"+
		"+,\u0001\u0000\u0000\u0000,-\u0001\u0000\u0000\u0000-.\u0005\u0000\u0000"+
		"\u0001.\u0001\u0001\u0000\u0000\u0000/1\u0003\u0004\u0002\u00000/\u0001"+
		"\u0000\u0000\u000012\u0001\u0000\u0000\u000020\u0001\u0000\u0000\u0000"+
		"23\u0001\u0000\u0000\u00003\u0003\u0001\u0000\u0000\u000045\u0003\u0006"+
		"\u0003\u000056\u0005\u001d\u0000\u00006A\u0001\u0000\u0000\u000078\u0003"+
		"\b\u0004\u000089\u0005\u001d\u0000\u00009A\u0001\u0000\u0000\u0000:;\u0003"+
		"\n\u0005\u0000;<\u0005\u001d\u0000\u0000<A\u0001\u0000\u0000\u0000=>\u0003"+
		"\f\u0006\u0000>?\u0005\u001d\u0000\u0000?A\u0001\u0000\u0000\u0000@4\u0001"+
		"\u0000\u0000\u0000@7\u0001\u0000\u0000\u0000@:\u0001\u0000\u0000\u0000"+
		"@=\u0001\u0000\u0000\u0000A\u0005\u0001\u0000\u0000\u0000BC\u0005\u0001"+
		"\u0000\u0000CD\u0005\u001e\u0000\u0000DE\u0005\u0016\u0000\u0000EF\u0005"+
		"\u001f\u0000\u0000FG\u0005\u0016\u0000\u0000G\u0007\u0001\u0000\u0000"+
		"\u0000HI\u0005\u0002\u0000\u0000IJ\u0003\u000e\u0007\u0000J\t\u0001\u0000"+
		"\u0000\u0000KL\u0005\u0003\u0000\u0000LM\u0003\u000e\u0007\u0000M\u000b"+
		"\u0001\u0000\u0000\u0000NO\u0005\u0015\u0000\u0000OP\u0005\u001e\u0000"+
		"\u0000PQ\u0003\u0010\b\u0000QR\u0003\u0012\t\u0000R\r\u0001\u0000\u0000"+
		"\u0000ST\u0005\u0018\u0000\u0000TY\u0003\u0010\b\u0000UV\u0005\u001c\u0000"+
		"\u0000VX\u0003\u0010\b\u0000WU\u0001\u0000\u0000\u0000X[\u0001\u0000\u0000"+
		"\u0000YW\u0001\u0000\u0000\u0000YZ\u0001\u0000\u0000\u0000Z\\\u0001\u0000"+
		"\u0000\u0000[Y\u0001\u0000\u0000\u0000\\]\u0005\u0019\u0000\u0000]\u000f"+
		"\u0001\u0000\u0000\u0000^_\u0005\u0018\u0000\u0000_`\u0005\u0016\u0000"+
		"\u0000`a\u0005\u001c\u0000\u0000ab\u0005\u0016\u0000\u0000bc\u0005\u0019"+
		"\u0000\u0000c\u0011\u0001\u0000\u0000\u0000de\u0007\u0000\u0000\u0000"+
		"e\u0013\u0001\u0000\u0000\u0000fh\u0003\u0016\u000b\u0000gf\u0001\u0000"+
		"\u0000\u0000hi\u0001\u0000\u0000\u0000ig\u0001\u0000\u0000\u0000ij\u0001"+
		"\u0000\u0000\u0000j\u0015\u0001\u0000\u0000\u0000kl\u0005\b\u0000\u0000"+
		"lm\u0005\u0015\u0000\u0000mn\u0005\u001e\u0000\u0000no\u0005\u001a\u0000"+
		"\u0000op\u0003\u0018\f\u0000pq\u0005\u001b\u0000\u0000qr\u0005\u001d\u0000"+
		"\u0000r\u0017\u0001\u0000\u0000\u0000sx\u0003\u001a\r\u0000tu\u0005\u001d"+
		"\u0000\u0000uw\u0003\u001a\r\u0000vt\u0001\u0000\u0000\u0000wz\u0001\u0000"+
		"\u0000\u0000xv\u0001\u0000\u0000\u0000xy\u0001\u0000\u0000\u0000y\u0019"+
		"\u0001\u0000\u0000\u0000zx\u0001\u0000\u0000\u0000{|\u0005\t\u0000\u0000"+
		"|}\u0005\u001a\u0000\u0000}~\u0003\u0018\f\u0000~\u007f\u0005\u001b\u0000"+
		"\u0000\u007f\u0080\u0005\n\u0000\u0000\u0080\u0081\u0003\u001e\u000f\u0000"+
		"\u0081\u0093\u0001\u0000\u0000\u0000\u0082\u0083\u0005\u000b\u0000\u0000"+
		"\u0083\u0084\u0005\u001a\u0000\u0000\u0084\u0085\u0003\u0018\f\u0000\u0085"+
		"\u0086\u0005\u001b\u0000\u0000\u0086\u0093\u0001\u0000\u0000\u0000\u0087"+
		"\u0088\u0005\f\u0000\u0000\u0088\u0089\u0003\u001e\u000f\u0000\u0089\u008a"+
		"\u0005\r\u0000\u0000\u008a\u008d\u0003\u001a\r\u0000\u008b\u008c\u0005"+
		"\u000e\u0000\u0000\u008c\u008e\u0003\u001a\r\u0000\u008d\u008b\u0001\u0000"+
		"\u0000\u0000\u008d\u008e\u0001\u0000\u0000\u0000\u008e\u0093\u0001\u0000"+
		"\u0000\u0000\u008f\u0090\u0005\u000f\u0000\u0000\u0090\u0093\u0005\u0015"+
		"\u0000\u0000\u0091\u0093\u0003\u001c\u000e\u0000\u0092{\u0001\u0000\u0000"+
		"\u0000\u0092\u0082\u0001\u0000\u0000\u0000\u0092\u0087\u0001\u0000\u0000"+
		"\u0000\u0092\u008f\u0001\u0000\u0000\u0000\u0092\u0091\u0001\u0000\u0000"+
		"\u0000\u0093\u001b\u0001\u0000\u0000\u0000\u0094\u0095\u0007\u0001\u0000"+
		"\u0000\u0095\u001d\u0001\u0000\u0000\u0000\u0096\u0099\u0005\u0015\u0000"+
		"\u0000\u0097\u0099\u0003$\u0012\u0000\u0098\u0096\u0001\u0000\u0000\u0000"+
		"\u0098\u0097\u0001\u0000\u0000\u0000\u0099\u001f\u0001\u0000\u0000\u0000"+
		"\u009a\u009c\u0003\"\u0011\u0000\u009b\u009a\u0001\u0000\u0000\u0000\u009c"+
		"\u009d\u0001\u0000\u0000\u0000\u009d\u009b\u0001\u0000\u0000\u0000\u009d"+
		"\u009e\u0001\u0000\u0000\u0000\u009e!\u0001\u0000\u0000\u0000\u009f\u00a0"+
		"\u0005 \u0000\u0000\u00a0\u00a1\u0003$\u0012\u0000\u00a1#\u0001\u0000"+
		"\u0000\u0000\u00a2\u00a7\u0005\u0016\u0000\u0000\u00a3\u00a7\u0005\u0017"+
		"\u0000\u0000\u00a4\u00a7\u0003\u0010\b\u0000\u00a5\u00a7\u0003\u000e\u0007"+
		"\u0000\u00a6\u00a2\u0001\u0000\u0000\u0000\u00a6\u00a3\u0001\u0000\u0000"+
		"\u0000\u00a6\u00a4\u0001\u0000\u0000\u0000\u00a6\u00a5\u0001\u0000\u0000"+
		"\u0000\u00a7%\u0001\u0000\u0000\u0000\f(+2@Yix\u008d\u0092\u0098\u009d"+
		"\u00a6";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}