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
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, ID=26, NUMBER=27, STRING=28, LPAREN=29, RPAREN=30, LBRACE=31, 
		RBRACE=32, COMMA=33, SEMI=34, EQ=35, STAR=36, WS=37, COMMENT=38;
	public static final int
		RULE_program = 0, RULE_context_block = 1, RULE_context_statement = 2, 
		RULE_board_def = 3, RULE_wall_def = 4, RULE_box_def = 5, RULE_actor_def = 6, 
		RULE_position_group = 7, RULE_position = 8, RULE_direction = 9, RULE_behavior_block = 10, 
		RULE_behavior_statement = 11, RULE_action_list = 12, RULE_action = 13, 
		RULE_command = 14, RULE_condition = 15;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "context_block", "context_statement", "board_def", "wall_def", 
			"box_def", "actor_def", "position_group", "position", "direction", "behavior_block", 
			"behavior_statement", "action_list", "action", "command", "condition"
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
			"'\\u041F\\u0410\\u0423\\u0417\\u0410'", "'\\u041E\\u0422\\u041F\\u0420\\u0410\\u0412\\u0418\\u0422\\u042C'", 
			"'->'", "'\\u041F\\u041E\\u041B\\u0423\\u0427\\u0418\\u0422\\u042C'", 
			"'\\u0421\\u041E\\u041E\\u0411\\u0429\\u0415\\u041D\\u0418\\u0415?'", 
			null, null, null, "'('", "')'", "'{'", "'}'", "','", "';'", "'='", "'*'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, "ID", "NUMBER", "STRING", "LPAREN", "RPAREN", "LBRACE", "RBRACE", 
			"COMMA", "SEMI", "EQ", "STAR", "WS", "COMMENT"
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
		public Behavior_blockContext behavior_block() {
			return getRuleContext(Behavior_blockContext.class,0);
		}
		public TerminalNode EOF() { return getToken(AsynchrGrammarParser.EOF, 0); }
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(32);
			context_block();
			setState(33);
			behavior_block();
			setState(34);
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
			setState(37); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(36);
				context_statement();
				}
				}
				setState(39); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & 67108878L) != 0) );
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
			setState(53);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				enterOuterAlt(_localctx, 1);
				{
				setState(41);
				board_def();
				setState(42);
				match(SEMI);
				}
				break;
			case T__1:
				enterOuterAlt(_localctx, 2);
				{
				setState(44);
				wall_def();
				setState(45);
				match(SEMI);
				}
				break;
			case T__2:
				enterOuterAlt(_localctx, 3);
				{
				setState(47);
				box_def();
				setState(48);
				match(SEMI);
				}
				break;
			case ID:
				enterOuterAlt(_localctx, 4);
				{
				setState(50);
				actor_def();
				setState(51);
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
			setState(55);
			match(T__0);
			setState(56);
			match(EQ);
			setState(57);
			match(NUMBER);
			setState(58);
			match(STAR);
			setState(59);
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
			setState(61);
			match(T__1);
			setState(62);
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
			setState(64);
			match(T__2);
			setState(65);
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
			setState(67);
			match(ID);
			setState(68);
			match(EQ);
			setState(69);
			position();
			setState(70);
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
			setState(72);
			match(LPAREN);
			setState(73);
			position();
			setState(78);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(74);
				match(COMMA);
				setState(75);
				position();
				}
				}
				setState(80);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(81);
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
			setState(83);
			match(LPAREN);
			setState(84);
			match(NUMBER);
			setState(85);
			match(COMMA);
			setState(86);
			match(NUMBER);
			setState(87);
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
			setState(89);
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
			setState(92); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(91);
				behavior_statement();
				}
				}
				setState(94); 
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
			setState(96);
			match(T__7);
			setState(97);
			match(ID);
			setState(98);
			match(EQ);
			setState(99);
			match(LBRACE);
			setState(100);
			action_list();
			setState(101);
			match(RBRACE);
			setState(102);
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
			setState(104);
			action();
			setState(109);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==SEMI) {
				{
				{
				setState(105);
				match(SEMI);
				setState(106);
				action();
				}
				}
				setState(111);
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
	public static class WaitOtherContext extends ActionContext {
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public WaitOtherContext(ActionContext ctx) { copyFrom(ctx); }
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

	public final ActionContext action() throws RecognitionException {
		ActionContext _localctx = new ActionContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_action);
		try {
			setState(135);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__8:
				_localctx = new WhileLoopContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(112);
				match(T__8);
				setState(113);
				match(LBRACE);
				setState(114);
				action_list();
				setState(115);
				match(RBRACE);
				setState(116);
				match(T__9);
				setState(117);
				condition();
				}
				break;
			case T__10:
				_localctx = new RepeatForeverContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(119);
				match(T__10);
				setState(120);
				match(LBRACE);
				setState(121);
				action_list();
				setState(122);
				match(RBRACE);
				}
				break;
			case T__11:
				_localctx = new ConditionalContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(124);
				match(T__11);
				setState(125);
				condition();
				setState(126);
				match(T__12);
				setState(127);
				action();
				setState(130);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
				case 1:
					{
					setState(128);
					match(T__13);
					setState(129);
					action();
					}
					break;
				}
				}
				break;
			case T__14:
				_localctx = new WaitOtherContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(132);
				match(T__14);
				setState(133);
				match(ID);
				}
				break;
			case T__15:
			case T__16:
			case T__17:
			case T__18:
			case T__19:
			case T__20:
			case T__21:
			case T__23:
				_localctx = new SimpleActionContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(134);
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
	 
		public CommandContext() { }
		public void copyFrom(CommandContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PauseCmdContext extends CommandContext {
		public TerminalNode NUMBER() { return getToken(AsynchrGrammarParser.NUMBER, 0); }
		public PauseCmdContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PickUpCmdContext extends CommandContext {
		public PickUpCmdContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StepCmdContext extends CommandContext {
		public StepCmdContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TurnRightCmdContext extends CommandContext {
		public TurnRightCmdContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RecvCmdContext extends CommandContext {
		public TerminalNode STRING() { return getToken(AsynchrGrammarParser.STRING, 0); }
		public TerminalNode STAR() { return getToken(AsynchrGrammarParser.STAR, 0); }
		public RecvCmdContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SendCmdContext extends CommandContext {
		public TerminalNode STRING() { return getToken(AsynchrGrammarParser.STRING, 0); }
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public SendCmdContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TurnLeftCmdContext extends CommandContext {
		public TurnLeftCmdContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DropCmdContext extends CommandContext {
		public DropCmdContext(CommandContext ctx) { copyFrom(ctx); }
	}

	public final CommandContext command() throws RecognitionException {
		CommandContext _localctx = new CommandContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_command);
		int _la;
		try {
			setState(150);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__15:
				_localctx = new StepCmdContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(137);
				match(T__15);
				}
				break;
			case T__16:
				_localctx = new TurnLeftCmdContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(138);
				match(T__16);
				}
				break;
			case T__17:
				_localctx = new TurnRightCmdContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(139);
				match(T__17);
				}
				break;
			case T__18:
				_localctx = new PickUpCmdContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(140);
				match(T__18);
				}
				break;
			case T__19:
				_localctx = new DropCmdContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(141);
				match(T__19);
				}
				break;
			case T__20:
				_localctx = new PauseCmdContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(142);
				match(T__20);
				setState(143);
				match(NUMBER);
				}
				break;
			case T__21:
				_localctx = new SendCmdContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(144);
				match(T__21);
				setState(145);
				match(STRING);
				setState(146);
				match(T__22);
				setState(147);
				match(ID);
				}
				break;
			case T__23:
				_localctx = new RecvCmdContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(148);
				match(T__23);
				setState(149);
				_la = _input.LA(1);
				if ( !(_la==STRING || _la==STAR) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
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
	public static class ConditionContext extends ParserRuleContext {
		public ConditionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_condition; }
	 
		public ConditionContext() { }
		public void copyFrom(ConditionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PositionCondContext extends ConditionContext {
		public PositionContext position() {
			return getRuleContext(PositionContext.class,0);
		}
		public PositionCondContext(ConditionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class HasMsgCondContext extends ConditionContext {
		public HasMsgCondContext(ConditionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentifierCondContext extends ConditionContext {
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public IdentifierCondContext(ConditionContext ctx) { copyFrom(ctx); }
	}

	public final ConditionContext condition() throws RecognitionException {
		ConditionContext _localctx = new ConditionContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_condition);
		try {
			setState(155);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__24:
				_localctx = new HasMsgCondContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(152);
				match(T__24);
				}
				break;
			case ID:
				_localctx = new IdentifierCondContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(153);
				match(ID);
				}
				break;
			case LPAREN:
				_localctx = new PositionCondContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(154);
				position();
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

	public static final String _serializedATN =
		"\u0004\u0001&\u009e\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0004\u0001"+
		"&\b\u0001\u000b\u0001\f\u0001\'\u0001\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0003\u00026\b\u0002\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0005\u0007M\b\u0007\n\u0007\f\u0007P\t\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\t\u0001\t\u0001\n\u0004\n]\b\n\u000b\n\f\n^\u0001\u000b\u0001\u000b\u0001"+
		"\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001"+
		"\f\u0001\f\u0001\f\u0005\fl\b\f\n\f\f\fo\t\f\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0003\r\u0083\b\r\u0001\r\u0001"+
		"\r\u0001\r\u0003\r\u0088\b\r\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0003\u000e\u0097\b\u000e\u0001"+
		"\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u009c\b\u000f\u0001\u000f\u0000"+
		"\u0000\u0010\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016"+
		"\u0018\u001a\u001c\u001e\u0000\u0002\u0001\u0000\u0004\u0007\u0002\u0000"+
		"\u001c\u001c$$\u00a2\u0000 \u0001\u0000\u0000\u0000\u0002%\u0001\u0000"+
		"\u0000\u0000\u00045\u0001\u0000\u0000\u0000\u00067\u0001\u0000\u0000\u0000"+
		"\b=\u0001\u0000\u0000\u0000\n@\u0001\u0000\u0000\u0000\fC\u0001\u0000"+
		"\u0000\u0000\u000eH\u0001\u0000\u0000\u0000\u0010S\u0001\u0000\u0000\u0000"+
		"\u0012Y\u0001\u0000\u0000\u0000\u0014\\\u0001\u0000\u0000\u0000\u0016"+
		"`\u0001\u0000\u0000\u0000\u0018h\u0001\u0000\u0000\u0000\u001a\u0087\u0001"+
		"\u0000\u0000\u0000\u001c\u0096\u0001\u0000\u0000\u0000\u001e\u009b\u0001"+
		"\u0000\u0000\u0000 !\u0003\u0002\u0001\u0000!\"\u0003\u0014\n\u0000\""+
		"#\u0005\u0000\u0000\u0001#\u0001\u0001\u0000\u0000\u0000$&\u0003\u0004"+
		"\u0002\u0000%$\u0001\u0000\u0000\u0000&\'\u0001\u0000\u0000\u0000\'%\u0001"+
		"\u0000\u0000\u0000\'(\u0001\u0000\u0000\u0000(\u0003\u0001\u0000\u0000"+
		"\u0000)*\u0003\u0006\u0003\u0000*+\u0005\"\u0000\u0000+6\u0001\u0000\u0000"+
		"\u0000,-\u0003\b\u0004\u0000-.\u0005\"\u0000\u0000.6\u0001\u0000\u0000"+
		"\u0000/0\u0003\n\u0005\u000001\u0005\"\u0000\u000016\u0001\u0000\u0000"+
		"\u000023\u0003\f\u0006\u000034\u0005\"\u0000\u000046\u0001\u0000\u0000"+
		"\u00005)\u0001\u0000\u0000\u00005,\u0001\u0000\u0000\u00005/\u0001\u0000"+
		"\u0000\u000052\u0001\u0000\u0000\u00006\u0005\u0001\u0000\u0000\u0000"+
		"78\u0005\u0001\u0000\u000089\u0005#\u0000\u00009:\u0005\u001b\u0000\u0000"+
		":;\u0005$\u0000\u0000;<\u0005\u001b\u0000\u0000<\u0007\u0001\u0000\u0000"+
		"\u0000=>\u0005\u0002\u0000\u0000>?\u0003\u000e\u0007\u0000?\t\u0001\u0000"+
		"\u0000\u0000@A\u0005\u0003\u0000\u0000AB\u0003\u000e\u0007\u0000B\u000b"+
		"\u0001\u0000\u0000\u0000CD\u0005\u001a\u0000\u0000DE\u0005#\u0000\u0000"+
		"EF\u0003\u0010\b\u0000FG\u0003\u0012\t\u0000G\r\u0001\u0000\u0000\u0000"+
		"HI\u0005\u001d\u0000\u0000IN\u0003\u0010\b\u0000JK\u0005!\u0000\u0000"+
		"KM\u0003\u0010\b\u0000LJ\u0001\u0000\u0000\u0000MP\u0001\u0000\u0000\u0000"+
		"NL\u0001\u0000\u0000\u0000NO\u0001\u0000\u0000\u0000OQ\u0001\u0000\u0000"+
		"\u0000PN\u0001\u0000\u0000\u0000QR\u0005\u001e\u0000\u0000R\u000f\u0001"+
		"\u0000\u0000\u0000ST\u0005\u001d\u0000\u0000TU\u0005\u001b\u0000\u0000"+
		"UV\u0005!\u0000\u0000VW\u0005\u001b\u0000\u0000WX\u0005\u001e\u0000\u0000"+
		"X\u0011\u0001\u0000\u0000\u0000YZ\u0007\u0000\u0000\u0000Z\u0013\u0001"+
		"\u0000\u0000\u0000[]\u0003\u0016\u000b\u0000\\[\u0001\u0000\u0000\u0000"+
		"]^\u0001\u0000\u0000\u0000^\\\u0001\u0000\u0000\u0000^_\u0001\u0000\u0000"+
		"\u0000_\u0015\u0001\u0000\u0000\u0000`a\u0005\b\u0000\u0000ab\u0005\u001a"+
		"\u0000\u0000bc\u0005#\u0000\u0000cd\u0005\u001f\u0000\u0000de\u0003\u0018"+
		"\f\u0000ef\u0005 \u0000\u0000fg\u0005\"\u0000\u0000g\u0017\u0001\u0000"+
		"\u0000\u0000hm\u0003\u001a\r\u0000ij\u0005\"\u0000\u0000jl\u0003\u001a"+
		"\r\u0000ki\u0001\u0000\u0000\u0000lo\u0001\u0000\u0000\u0000mk\u0001\u0000"+
		"\u0000\u0000mn\u0001\u0000\u0000\u0000n\u0019\u0001\u0000\u0000\u0000"+
		"om\u0001\u0000\u0000\u0000pq\u0005\t\u0000\u0000qr\u0005\u001f\u0000\u0000"+
		"rs\u0003\u0018\f\u0000st\u0005 \u0000\u0000tu\u0005\n\u0000\u0000uv\u0003"+
		"\u001e\u000f\u0000v\u0088\u0001\u0000\u0000\u0000wx\u0005\u000b\u0000"+
		"\u0000xy\u0005\u001f\u0000\u0000yz\u0003\u0018\f\u0000z{\u0005 \u0000"+
		"\u0000{\u0088\u0001\u0000\u0000\u0000|}\u0005\f\u0000\u0000}~\u0003\u001e"+
		"\u000f\u0000~\u007f\u0005\r\u0000\u0000\u007f\u0082\u0003\u001a\r\u0000"+
		"\u0080\u0081\u0005\u000e\u0000\u0000\u0081\u0083\u0003\u001a\r\u0000\u0082"+
		"\u0080\u0001\u0000\u0000\u0000\u0082\u0083\u0001\u0000\u0000\u0000\u0083"+
		"\u0088\u0001\u0000\u0000\u0000\u0084\u0085\u0005\u000f\u0000\u0000\u0085"+
		"\u0088\u0005\u001a\u0000\u0000\u0086\u0088\u0003\u001c\u000e\u0000\u0087"+
		"p\u0001\u0000\u0000\u0000\u0087w\u0001\u0000\u0000\u0000\u0087|\u0001"+
		"\u0000\u0000\u0000\u0087\u0084\u0001\u0000\u0000\u0000\u0087\u0086\u0001"+
		"\u0000\u0000\u0000\u0088\u001b\u0001\u0000\u0000\u0000\u0089\u0097\u0005"+
		"\u0010\u0000\u0000\u008a\u0097\u0005\u0011\u0000\u0000\u008b\u0097\u0005"+
		"\u0012\u0000\u0000\u008c\u0097\u0005\u0013\u0000\u0000\u008d\u0097\u0005"+
		"\u0014\u0000\u0000\u008e\u008f\u0005\u0015\u0000\u0000\u008f\u0097\u0005"+
		"\u001b\u0000\u0000\u0090\u0091\u0005\u0016\u0000\u0000\u0091\u0092\u0005"+
		"\u001c\u0000\u0000\u0092\u0093\u0005\u0017\u0000\u0000\u0093\u0097\u0005"+
		"\u001a\u0000\u0000\u0094\u0095\u0005\u0018\u0000\u0000\u0095\u0097\u0007"+
		"\u0001\u0000\u0000\u0096\u0089\u0001\u0000\u0000\u0000\u0096\u008a\u0001"+
		"\u0000\u0000\u0000\u0096\u008b\u0001\u0000\u0000\u0000\u0096\u008c\u0001"+
		"\u0000\u0000\u0000\u0096\u008d\u0001\u0000\u0000\u0000\u0096\u008e\u0001"+
		"\u0000\u0000\u0000\u0096\u0090\u0001\u0000\u0000\u0000\u0096\u0094\u0001"+
		"\u0000\u0000\u0000\u0097\u001d\u0001\u0000\u0000\u0000\u0098\u009c\u0005"+
		"\u0019\u0000\u0000\u0099\u009c\u0005\u001a\u0000\u0000\u009a\u009c\u0003"+
		"\u0010\b\u0000\u009b\u0098\u0001\u0000\u0000\u0000\u009b\u0099\u0001\u0000"+
		"\u0000\u0000\u009b\u009a\u0001\u0000\u0000\u0000\u009c\u001f\u0001\u0000"+
		"\u0000\u0000\t\'5N^m\u0082\u0087\u0096\u009b";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}