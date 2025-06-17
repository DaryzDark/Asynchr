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
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, ID=33, NUMBER=34, STRING=35, LPAREN=36, RPAREN=37, LBRACE=38, 
		RBRACE=39, COMMA=40, SEMI=41, EQ=42, PLUS=43, STAR=44, ARROW=45, WS=46, 
		COMMENT=47;
	public static final int
		RULE_program = 0, RULE_context_block = 1, RULE_context_statement = 2, 
		RULE_board_def = 3, RULE_wall_def = 4, RULE_box_def = 5, RULE_actor_def = 6, 
		RULE_direction = 7, RULE_position_group = 8, RULE_position = 9, RULE_set_block = 10, 
		RULE_thread = 11, RULE_fold_op = 12, RULE_action_list = 13, RULE_action = 14, 
		RULE_block = 15, RULE_command = 16, RULE_condition = 17, RULE_result_expr = 18;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "context_block", "context_statement", "board_def", "wall_def", 
			"box_def", "actor_def", "direction", "position_group", "position", "set_block", 
			"thread", "fold_op", "action_list", "action", "block", "command", "condition", 
			"result_expr"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'\\u0414\\u043E\\u0441\\u043A\\u0430'", "'\\u0421\\u0442\\u0435\\u043D\\u044B'", 
			"'\\u041A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0438'", "'\\u0412\\u0412\\u0415\\u0420\\u0425'", 
			"'\\u0412\\u041D\\u0418\\u0417'", "'\\u0412\\u041B\\u0415\\u0412\\u041E'", 
			"'\\u0412\\u041F\\u0420\\u0410\\u0412\\u041E'", "'\\u041D\\u0430\\u0431\\u043E\\u0440'", 
			"'\\u041C\\u0418\\u041D'", "'\\u041C\\u0410\\u041A\\u0421'", "'\\u0414\\u041B\\u0418\\u041D\\u0410'", 
			"'\\u041F\\u0415\\u0420\\u0412\\u042B\\u0419'", "'\\u041F\\u041E\\u0421\\u041B\\u0415\\u0414\\u041D\\u0418\\u0419'", 
			"'\\u041F\\u041E\\u041A\\u0410'", "'\\u041F\\u041E\\u0412\\u0422\\u041E\\u0420\\u0418\\u0422\\u042C'", 
			"'\\u0415\\u0421\\u041B\\u0418'", "'\\u0422\\u041E'", "'\\u0418\\u041D\\u0410\\u0427\\u0415'", 
			"'\\u0428\\u0430\\u0433_\\u0412\\u043F\\u0435\\u0440\\u0435\\u0434'", 
			"'\\u041F\\u043E\\u0432\\u0435\\u0440\\u043D\\u0443\\u0442\\u044C_\\u0412\\u043B\\u0435\\u0432\\u043E'", 
			"'\\u041F\\u043E\\u0432\\u0435\\u0440\\u043D\\u0443\\u0442\\u044C_\\u0412\\u043F\\u0440\\u0430\\u0432\\u043E'", 
			"'\\u041F\\u043E\\u0434\\u043D\\u044F\\u0442\\u044C_\\u041A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0443'", 
			"'\\u041E\\u043F\\u0443\\u0441\\u0442\\u0438\\u0442\\u044C_\\u041A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0443'", 
			"'\\u041F\\u0410\\u0423\\u0417\\u0410'", "'\\u041E\\u0422\\u041F\\u0420\\u0410\\u0412\\u0418\\u0422\\u042C'", 
			"'\\u041F\\u041E\\u041B\\u0423\\u0427\\u0418\\u0422\\u042C'", "'\\u0421\\u041E\\u041E\\u0411\\u0429\\u0415\\u041D\\u0418\\u0415?'", 
			"'\\u0412\\u043F\\u0435\\u0440\\u0435\\u0434\\u0438_\\u0421\\u0432\\u043E\\u0431\\u043E\\u0434\\u043D\\u043E'", 
			"'\\u0415\\u0441\\u0442\\u044C_\\u041A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0430_\\u0412\\u043F\\u0435\\u0440\\u0435\\u0434\\u0438'", 
			"'\\u041D\\u0435\\u0441\\u0443_\\u041A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0443'", 
			"'\\u041A\\u043E\\u043B\\u043B\\u0435\\u0433\\u0430_\\u0412\\u043F\\u0435\\u0440\\u0435\\u0434\\u0438'", 
			"'\\u0420\\u0415\\u0417\\u0423\\u041B\\u042C\\u0422\\u0410\\u0422'", 
			null, null, null, "'('", "')'", "'{'", "'}'", "','", "';'", "'='", "'+'", 
			"'*'", "'->'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, "ID", "NUMBER", 
			"STRING", "LPAREN", "RPAREN", "LBRACE", "RBRACE", "COMMA", "SEMI", "EQ", 
			"PLUS", "STAR", "ARROW", "WS", "COMMENT"
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
		public TerminalNode EOF() { return getToken(AsynchrGrammarParser.EOF, 0); }
		public Context_blockContext context_block() {
			return getRuleContext(Context_blockContext.class,0);
		}
		public List<Set_blockContext> set_block() {
			return getRuleContexts(Set_blockContext.class);
		}
		public Set_blockContext set_block(int i) {
			return getRuleContext(Set_blockContext.class,i);
		}
		public Result_exprContext result_expr() {
			return getRuleContext(Result_exprContext.class,0);
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
			setState(39);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 8589934606L) != 0)) {
				{
				setState(38);
				context_block();
				}
			}

			setState(44);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__7) {
				{
				{
				setState(41);
				set_block();
				}
				}
				setState(46);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(48);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__31) {
				{
				setState(47);
				result_expr();
				}
			}

			setState(50);
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
			setState(53); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(52);
				context_statement();
				}
				}
				setState(55); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & 8589934606L) != 0) );
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
			setState(69);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				enterOuterAlt(_localctx, 1);
				{
				setState(57);
				board_def();
				setState(58);
				match(SEMI);
				}
				break;
			case T__1:
				enterOuterAlt(_localctx, 2);
				{
				setState(60);
				wall_def();
				setState(61);
				match(SEMI);
				}
				break;
			case T__2:
				enterOuterAlt(_localctx, 3);
				{
				setState(63);
				box_def();
				setState(64);
				match(SEMI);
				}
				break;
			case ID:
				enterOuterAlt(_localctx, 4);
				{
				setState(66);
				actor_def();
				setState(67);
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
			setState(71);
			match(T__0);
			setState(72);
			match(EQ);
			setState(73);
			match(NUMBER);
			setState(74);
			match(STAR);
			setState(75);
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
			setState(77);
			match(T__1);
			setState(78);
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
			setState(80);
			match(T__2);
			setState(81);
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
			setState(83);
			match(ID);
			setState(84);
			match(EQ);
			setState(85);
			position();
			setState(86);
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
	public static class DirectionContext extends ParserRuleContext {
		public DirectionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_direction; }
	}

	public final DirectionContext direction() throws RecognitionException {
		DirectionContext _localctx = new DirectionContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_direction);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(88);
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
		enterRule(_localctx, 16, RULE_position_group);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(90);
			match(LPAREN);
			setState(91);
			position();
			setState(96);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(92);
				match(COMMA);
				setState(93);
				position();
				}
				}
				setState(98);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(99);
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
		enterRule(_localctx, 18, RULE_position);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(101);
			match(LPAREN);
			setState(102);
			match(NUMBER);
			setState(103);
			match(COMMA);
			setState(104);
			match(NUMBER);
			setState(105);
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
	public static class Set_blockContext extends ParserRuleContext {
		public TerminalNode LPAREN() { return getToken(AsynchrGrammarParser.LPAREN, 0); }
		public List<ThreadContext> thread() {
			return getRuleContexts(ThreadContext.class);
		}
		public ThreadContext thread(int i) {
			return getRuleContext(ThreadContext.class,i);
		}
		public TerminalNode RPAREN() { return getToken(AsynchrGrammarParser.RPAREN, 0); }
		public TerminalNode SEMI() { return getToken(AsynchrGrammarParser.SEMI, 0); }
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public TerminalNode EQ() { return getToken(AsynchrGrammarParser.EQ, 0); }
		public List<TerminalNode> COMMA() { return getTokens(AsynchrGrammarParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(AsynchrGrammarParser.COMMA, i);
		}
		public Fold_opContext fold_op() {
			return getRuleContext(Fold_opContext.class,0);
		}
		public Set_blockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_set_block; }
	}

	public final Set_blockContext set_block() throws RecognitionException {
		Set_blockContext _localctx = new Set_blockContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_set_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(107);
			match(T__7);
			setState(110);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(108);
				match(ID);
				setState(109);
				match(EQ);
				}
			}

			setState(112);
			match(LPAREN);
			setState(113);
			thread();
			setState(118);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(114);
				match(COMMA);
				setState(115);
				thread();
				}
				}
				setState(120);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(121);
			match(RPAREN);
			setState(123);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 26388279082496L) != 0)) {
				{
				setState(122);
				fold_op();
				}
			}

			setState(125);
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
	public static class ThreadContext extends ParserRuleContext {
		public TerminalNode LBRACE() { return getToken(AsynchrGrammarParser.LBRACE, 0); }
		public Action_listContext action_list() {
			return getRuleContext(Action_listContext.class,0);
		}
		public TerminalNode RBRACE() { return getToken(AsynchrGrammarParser.RBRACE, 0); }
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public TerminalNode EQ() { return getToken(AsynchrGrammarParser.EQ, 0); }
		public ThreadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_thread; }
	}

	public final ThreadContext thread() throws RecognitionException {
		ThreadContext _localctx = new ThreadContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_thread);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(129);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(127);
				match(ID);
				setState(128);
				match(EQ);
				}
			}

			setState(131);
			match(LBRACE);
			setState(132);
			action_list();
			setState(133);
			match(RBRACE);
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
	public static class Fold_opContext extends ParserRuleContext {
		public TerminalNode PLUS() { return getToken(AsynchrGrammarParser.PLUS, 0); }
		public TerminalNode STAR() { return getToken(AsynchrGrammarParser.STAR, 0); }
		public Fold_opContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fold_op; }
	}

	public final Fold_opContext fold_op() throws RecognitionException {
		Fold_opContext _localctx = new Fold_opContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_fold_op);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(135);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 26388279082496L) != 0)) ) {
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
		enterRule(_localctx, 26, RULE_action_list);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(137);
			action();
			setState(142);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==SEMI) {
				{
				{
				setState(138);
				match(SEMI);
				setState(139);
				action();
				}
				}
				setState(144);
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
		public List<BlockContext> block() {
			return getRuleContexts(BlockContext.class);
		}
		public BlockContext block(int i) {
			return getRuleContext(BlockContext.class,i);
		}
		public ConditionalContext(ActionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SimpleCmdContext extends ActionContext {
		public CommandContext command() {
			return getRuleContext(CommandContext.class,0);
		}
		public SimpleCmdContext(ActionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WhileLoopContext extends ActionContext {
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public TerminalNode LBRACE() { return getToken(AsynchrGrammarParser.LBRACE, 0); }
		public Action_listContext action_list() {
			return getRuleContext(Action_listContext.class,0);
		}
		public TerminalNode RBRACE() { return getToken(AsynchrGrammarParser.RBRACE, 0); }
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

	public final ActionContext action() throws RecognitionException {
		ActionContext _localctx = new ActionContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_action);
		try {
			setState(165);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__13:
				_localctx = new WhileLoopContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(145);
				match(T__13);
				setState(146);
				condition();
				setState(147);
				match(LBRACE);
				setState(148);
				action_list();
				setState(149);
				match(RBRACE);
				}
				break;
			case T__14:
				_localctx = new RepeatForeverContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(151);
				match(T__14);
				setState(152);
				match(LBRACE);
				setState(153);
				action_list();
				setState(154);
				match(RBRACE);
				}
				break;
			case T__15:
				_localctx = new ConditionalContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(156);
				match(T__15);
				setState(157);
				condition();
				setState(158);
				match(T__16);
				setState(159);
				block();
				setState(162);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
				case 1:
					{
					setState(160);
					match(T__17);
					setState(161);
					block();
					}
					break;
				}
				}
				break;
			case T__18:
			case T__19:
			case T__20:
			case T__21:
			case T__22:
			case T__23:
			case T__24:
			case T__25:
				_localctx = new SimpleCmdContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(164);
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
	public static class BlockContext extends ParserRuleContext {
		public ActionContext action() {
			return getRuleContext(ActionContext.class,0);
		}
		public TerminalNode LBRACE() { return getToken(AsynchrGrammarParser.LBRACE, 0); }
		public Action_listContext action_list() {
			return getRuleContext(Action_listContext.class,0);
		}
		public TerminalNode RBRACE() { return getToken(AsynchrGrammarParser.RBRACE, 0); }
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_block);
		try {
			setState(172);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__13:
			case T__14:
			case T__15:
			case T__18:
			case T__19:
			case T__20:
			case T__21:
			case T__22:
			case T__23:
			case T__24:
			case T__25:
				enterOuterAlt(_localctx, 1);
				{
				setState(167);
				action();
				}
				break;
			case LBRACE:
				enterOuterAlt(_localctx, 2);
				{
				setState(168);
				match(LBRACE);
				setState(169);
				action_list();
				setState(170);
				match(RBRACE);
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
	public static class TurnRightContext extends CommandContext {
		public TurnRightContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TurnLeftContext extends CommandContext {
		public TurnLeftContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PauseContext extends CommandContext {
		public TerminalNode NUMBER() { return getToken(AsynchrGrammarParser.NUMBER, 0); }
		public PauseContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StepForwardContext extends CommandContext {
		public StepForwardContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PickUpContext extends CommandContext {
		public PickUpContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ReceiveContext extends CommandContext {
		public TerminalNode STRING() { return getToken(AsynchrGrammarParser.STRING, 0); }
		public TerminalNode STAR() { return getToken(AsynchrGrammarParser.STAR, 0); }
		public ReceiveContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DropContext extends CommandContext {
		public DropContext(CommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SendContext extends CommandContext {
		public TerminalNode STRING() { return getToken(AsynchrGrammarParser.STRING, 0); }
		public TerminalNode ARROW() { return getToken(AsynchrGrammarParser.ARROW, 0); }
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public SendContext(CommandContext ctx) { copyFrom(ctx); }
	}

	public final CommandContext command() throws RecognitionException {
		CommandContext _localctx = new CommandContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_command);
		int _la;
		try {
			setState(187);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__18:
				_localctx = new StepForwardContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(174);
				match(T__18);
				}
				break;
			case T__19:
				_localctx = new TurnLeftContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(175);
				match(T__19);
				}
				break;
			case T__20:
				_localctx = new TurnRightContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(176);
				match(T__20);
				}
				break;
			case T__21:
				_localctx = new PickUpContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(177);
				match(T__21);
				}
				break;
			case T__22:
				_localctx = new DropContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(178);
				match(T__22);
				}
				break;
			case T__23:
				_localctx = new PauseContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(179);
				match(T__23);
				setState(180);
				match(NUMBER);
				}
				break;
			case T__24:
				_localctx = new SendContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(181);
				match(T__24);
				setState(182);
				match(STRING);
				setState(183);
				match(ARROW);
				setState(184);
				match(ID);
				}
				break;
			case T__25:
				_localctx = new ReceiveContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(185);
				match(T__25);
				setState(186);
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
	public static class ActorAheadConditionContext extends ConditionContext {
		public ActorAheadConditionContext(ConditionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentifierConditionContext extends ConditionContext {
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public IdentifierConditionContext(ConditionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MessageConditionContext extends ConditionContext {
		public TerminalNode STRING() { return getToken(AsynchrGrammarParser.STRING, 0); }
		public MessageConditionContext(ConditionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PathClearConditionContext extends ConditionContext {
		public PathClearConditionContext(ConditionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BoxAheadConditionContext extends ConditionContext {
		public BoxAheadConditionContext(ConditionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CarryingBoxConditionContext extends ConditionContext {
		public CarryingBoxConditionContext(ConditionContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PositionConditionContext extends ConditionContext {
		public PositionContext position() {
			return getRuleContext(PositionContext.class,0);
		}
		public PositionConditionContext(ConditionContext ctx) { copyFrom(ctx); }
	}

	public final ConditionContext condition() throws RecognitionException {
		ConditionContext _localctx = new ConditionContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_condition);
		int _la;
		try {
			setState(199);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__26:
				_localctx = new MessageConditionContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(189);
				match(T__26);
				setState(191);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==STRING) {
					{
					setState(190);
					match(STRING);
					}
				}

				}
				break;
			case T__27:
				_localctx = new PathClearConditionContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(193);
				match(T__27);
				}
				break;
			case T__28:
				_localctx = new BoxAheadConditionContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(194);
				match(T__28);
				}
				break;
			case T__29:
				_localctx = new CarryingBoxConditionContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(195);
				match(T__29);
				}
				break;
			case T__30:
				_localctx = new ActorAheadConditionContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(196);
				match(T__30);
				}
				break;
			case ID:
				_localctx = new IdentifierConditionContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(197);
				match(ID);
				}
				break;
			case LPAREN:
				_localctx = new PositionConditionContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(198);
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

	@SuppressWarnings("CheckReturnValue")
	public static class Result_exprContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(AsynchrGrammarParser.ID, 0); }
		public TerminalNode SEMI() { return getToken(AsynchrGrammarParser.SEMI, 0); }
		public Result_exprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_result_expr; }
	}

	public final Result_exprContext result_expr() throws RecognitionException {
		Result_exprContext _localctx = new Result_exprContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_result_expr);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(201);
			match(T__31);
			setState(202);
			match(ID);
			setState(203);
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

	public static final String _serializedATN =
		"\u0004\u0001/\u00ce\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0001\u0000\u0003\u0000(\b\u0000\u0001\u0000\u0005\u0000+\b\u0000\n\u0000"+
		"\f\u0000.\t\u0000\u0001\u0000\u0003\u00001\b\u0000\u0001\u0000\u0001\u0000"+
		"\u0001\u0001\u0004\u00016\b\u0001\u000b\u0001\f\u00017\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0003\u0002F\b"+
		"\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001"+
		"\u0007\u0001\u0007\u0001\b\u0001\b\u0001\b\u0001\b\u0005\b_\b\b\n\b\f"+
		"\bb\t\b\u0001\b\u0001\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0001\n\u0001\n\u0001\n\u0003\no\b\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0005\nu\b\n\n\n\f\nx\t\n\u0001\n\u0001\n\u0003\n|\b\n\u0001\n\u0001"+
		"\n\u0001\u000b\u0001\u000b\u0003\u000b\u0082\b\u000b\u0001\u000b\u0001"+
		"\u000b\u0001\u000b\u0001\u000b\u0001\f\u0001\f\u0001\r\u0001\r\u0001\r"+
		"\u0005\r\u008d\b\r\n\r\f\r\u0090\t\r\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0001\u000e\u0003\u000e\u00a3\b\u000e\u0001\u000e\u0003\u000e"+
		"\u00a6\b\u000e\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f"+
		"\u0003\u000f\u00ad\b\u000f\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010"+
		"\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010"+
		"\u0001\u0010\u0001\u0010\u0001\u0010\u0003\u0010\u00bc\b\u0010\u0001\u0011"+
		"\u0001\u0011\u0003\u0011\u00c0\b\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0003\u0011\u00c8\b\u0011\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0000\u0000\u0013\u0000"+
		"\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a\u001c"+
		"\u001e \"$\u0000\u0003\u0001\u0000\u0004\u0007\u0002\u0000\t\r+,\u0002"+
		"\u0000##,,\u00da\u0000\'\u0001\u0000\u0000\u0000\u00025\u0001\u0000\u0000"+
		"\u0000\u0004E\u0001\u0000\u0000\u0000\u0006G\u0001\u0000\u0000\u0000\b"+
		"M\u0001\u0000\u0000\u0000\nP\u0001\u0000\u0000\u0000\fS\u0001\u0000\u0000"+
		"\u0000\u000eX\u0001\u0000\u0000\u0000\u0010Z\u0001\u0000\u0000\u0000\u0012"+
		"e\u0001\u0000\u0000\u0000\u0014k\u0001\u0000\u0000\u0000\u0016\u0081\u0001"+
		"\u0000\u0000\u0000\u0018\u0087\u0001\u0000\u0000\u0000\u001a\u0089\u0001"+
		"\u0000\u0000\u0000\u001c\u00a5\u0001\u0000\u0000\u0000\u001e\u00ac\u0001"+
		"\u0000\u0000\u0000 \u00bb\u0001\u0000\u0000\u0000\"\u00c7\u0001\u0000"+
		"\u0000\u0000$\u00c9\u0001\u0000\u0000\u0000&(\u0003\u0002\u0001\u0000"+
		"\'&\u0001\u0000\u0000\u0000\'(\u0001\u0000\u0000\u0000(,\u0001\u0000\u0000"+
		"\u0000)+\u0003\u0014\n\u0000*)\u0001\u0000\u0000\u0000+.\u0001\u0000\u0000"+
		"\u0000,*\u0001\u0000\u0000\u0000,-\u0001\u0000\u0000\u0000-0\u0001\u0000"+
		"\u0000\u0000.,\u0001\u0000\u0000\u0000/1\u0003$\u0012\u00000/\u0001\u0000"+
		"\u0000\u000001\u0001\u0000\u0000\u000012\u0001\u0000\u0000\u000023\u0005"+
		"\u0000\u0000\u00013\u0001\u0001\u0000\u0000\u000046\u0003\u0004\u0002"+
		"\u000054\u0001\u0000\u0000\u000067\u0001\u0000\u0000\u000075\u0001\u0000"+
		"\u0000\u000078\u0001\u0000\u0000\u00008\u0003\u0001\u0000\u0000\u0000"+
		"9:\u0003\u0006\u0003\u0000:;\u0005)\u0000\u0000;F\u0001\u0000\u0000\u0000"+
		"<=\u0003\b\u0004\u0000=>\u0005)\u0000\u0000>F\u0001\u0000\u0000\u0000"+
		"?@\u0003\n\u0005\u0000@A\u0005)\u0000\u0000AF\u0001\u0000\u0000\u0000"+
		"BC\u0003\f\u0006\u0000CD\u0005)\u0000\u0000DF\u0001\u0000\u0000\u0000"+
		"E9\u0001\u0000\u0000\u0000E<\u0001\u0000\u0000\u0000E?\u0001\u0000\u0000"+
		"\u0000EB\u0001\u0000\u0000\u0000F\u0005\u0001\u0000\u0000\u0000GH\u0005"+
		"\u0001\u0000\u0000HI\u0005*\u0000\u0000IJ\u0005\"\u0000\u0000JK\u0005"+
		",\u0000\u0000KL\u0005\"\u0000\u0000L\u0007\u0001\u0000\u0000\u0000MN\u0005"+
		"\u0002\u0000\u0000NO\u0003\u0010\b\u0000O\t\u0001\u0000\u0000\u0000PQ"+
		"\u0005\u0003\u0000\u0000QR\u0003\u0010\b\u0000R\u000b\u0001\u0000\u0000"+
		"\u0000ST\u0005!\u0000\u0000TU\u0005*\u0000\u0000UV\u0003\u0012\t\u0000"+
		"VW\u0003\u000e\u0007\u0000W\r\u0001\u0000\u0000\u0000XY\u0007\u0000\u0000"+
		"\u0000Y\u000f\u0001\u0000\u0000\u0000Z[\u0005$\u0000\u0000[`\u0003\u0012"+
		"\t\u0000\\]\u0005(\u0000\u0000]_\u0003\u0012\t\u0000^\\\u0001\u0000\u0000"+
		"\u0000_b\u0001\u0000\u0000\u0000`^\u0001\u0000\u0000\u0000`a\u0001\u0000"+
		"\u0000\u0000ac\u0001\u0000\u0000\u0000b`\u0001\u0000\u0000\u0000cd\u0005"+
		"%\u0000\u0000d\u0011\u0001\u0000\u0000\u0000ef\u0005$\u0000\u0000fg\u0005"+
		"\"\u0000\u0000gh\u0005(\u0000\u0000hi\u0005\"\u0000\u0000ij\u0005%\u0000"+
		"\u0000j\u0013\u0001\u0000\u0000\u0000kn\u0005\b\u0000\u0000lm\u0005!\u0000"+
		"\u0000mo\u0005*\u0000\u0000nl\u0001\u0000\u0000\u0000no\u0001\u0000\u0000"+
		"\u0000op\u0001\u0000\u0000\u0000pq\u0005$\u0000\u0000qv\u0003\u0016\u000b"+
		"\u0000rs\u0005(\u0000\u0000su\u0003\u0016\u000b\u0000tr\u0001\u0000\u0000"+
		"\u0000ux\u0001\u0000\u0000\u0000vt\u0001\u0000\u0000\u0000vw\u0001\u0000"+
		"\u0000\u0000wy\u0001\u0000\u0000\u0000xv\u0001\u0000\u0000\u0000y{\u0005"+
		"%\u0000\u0000z|\u0003\u0018\f\u0000{z\u0001\u0000\u0000\u0000{|\u0001"+
		"\u0000\u0000\u0000|}\u0001\u0000\u0000\u0000}~\u0005)\u0000\u0000~\u0015"+
		"\u0001\u0000\u0000\u0000\u007f\u0080\u0005!\u0000\u0000\u0080\u0082\u0005"+
		"*\u0000\u0000\u0081\u007f\u0001\u0000\u0000\u0000\u0081\u0082\u0001\u0000"+
		"\u0000\u0000\u0082\u0083\u0001\u0000\u0000\u0000\u0083\u0084\u0005&\u0000"+
		"\u0000\u0084\u0085\u0003\u001a\r\u0000\u0085\u0086\u0005\'\u0000\u0000"+
		"\u0086\u0017\u0001\u0000\u0000\u0000\u0087\u0088\u0007\u0001\u0000\u0000"+
		"\u0088\u0019\u0001\u0000\u0000\u0000\u0089\u008e\u0003\u001c\u000e\u0000"+
		"\u008a\u008b\u0005)\u0000\u0000\u008b\u008d\u0003\u001c\u000e\u0000\u008c"+
		"\u008a\u0001\u0000\u0000\u0000\u008d\u0090\u0001\u0000\u0000\u0000\u008e"+
		"\u008c\u0001\u0000\u0000\u0000\u008e\u008f\u0001\u0000\u0000\u0000\u008f"+
		"\u001b\u0001\u0000\u0000\u0000\u0090\u008e\u0001\u0000\u0000\u0000\u0091"+
		"\u0092\u0005\u000e\u0000\u0000\u0092\u0093\u0003\"\u0011\u0000\u0093\u0094"+
		"\u0005&\u0000\u0000\u0094\u0095\u0003\u001a\r\u0000\u0095\u0096\u0005"+
		"\'\u0000\u0000\u0096\u00a6\u0001\u0000\u0000\u0000\u0097\u0098\u0005\u000f"+
		"\u0000\u0000\u0098\u0099\u0005&\u0000\u0000\u0099\u009a\u0003\u001a\r"+
		"\u0000\u009a\u009b\u0005\'\u0000\u0000\u009b\u00a6\u0001\u0000\u0000\u0000"+
		"\u009c\u009d\u0005\u0010\u0000\u0000\u009d\u009e\u0003\"\u0011\u0000\u009e"+
		"\u009f\u0005\u0011\u0000\u0000\u009f\u00a2\u0003\u001e\u000f\u0000\u00a0"+
		"\u00a1\u0005\u0012\u0000\u0000\u00a1\u00a3\u0003\u001e\u000f\u0000\u00a2"+
		"\u00a0\u0001\u0000\u0000\u0000\u00a2\u00a3\u0001\u0000\u0000\u0000\u00a3"+
		"\u00a6\u0001\u0000\u0000\u0000\u00a4\u00a6\u0003 \u0010\u0000\u00a5\u0091"+
		"\u0001\u0000\u0000\u0000\u00a5\u0097\u0001\u0000\u0000\u0000\u00a5\u009c"+
		"\u0001\u0000\u0000\u0000\u00a5\u00a4\u0001\u0000\u0000\u0000\u00a6\u001d"+
		"\u0001\u0000\u0000\u0000\u00a7\u00ad\u0003\u001c\u000e\u0000\u00a8\u00a9"+
		"\u0005&\u0000\u0000\u00a9\u00aa\u0003\u001a\r\u0000\u00aa\u00ab\u0005"+
		"\'\u0000\u0000\u00ab\u00ad\u0001\u0000\u0000\u0000\u00ac\u00a7\u0001\u0000"+
		"\u0000\u0000\u00ac\u00a8\u0001\u0000\u0000\u0000\u00ad\u001f\u0001\u0000"+
		"\u0000\u0000\u00ae\u00bc\u0005\u0013\u0000\u0000\u00af\u00bc\u0005\u0014"+
		"\u0000\u0000\u00b0\u00bc\u0005\u0015\u0000\u0000\u00b1\u00bc\u0005\u0016"+
		"\u0000\u0000\u00b2\u00bc\u0005\u0017\u0000\u0000\u00b3\u00b4\u0005\u0018"+
		"\u0000\u0000\u00b4\u00bc\u0005\"\u0000\u0000\u00b5\u00b6\u0005\u0019\u0000"+
		"\u0000\u00b6\u00b7\u0005#\u0000\u0000\u00b7\u00b8\u0005-\u0000\u0000\u00b8"+
		"\u00bc\u0005!\u0000\u0000\u00b9\u00ba\u0005\u001a\u0000\u0000\u00ba\u00bc"+
		"\u0007\u0002\u0000\u0000\u00bb\u00ae\u0001\u0000\u0000\u0000\u00bb\u00af"+
		"\u0001\u0000\u0000\u0000\u00bb\u00b0\u0001\u0000\u0000\u0000\u00bb\u00b1"+
		"\u0001\u0000\u0000\u0000\u00bb\u00b2\u0001\u0000\u0000\u0000\u00bb\u00b3"+
		"\u0001\u0000\u0000\u0000\u00bb\u00b5\u0001\u0000\u0000\u0000\u00bb\u00b9"+
		"\u0001\u0000\u0000\u0000\u00bc!\u0001\u0000\u0000\u0000\u00bd\u00bf\u0005"+
		"\u001b\u0000\u0000\u00be\u00c0\u0005#\u0000\u0000\u00bf\u00be\u0001\u0000"+
		"\u0000\u0000\u00bf\u00c0\u0001\u0000\u0000\u0000\u00c0\u00c8\u0001\u0000"+
		"\u0000\u0000\u00c1\u00c8\u0005\u001c\u0000\u0000\u00c2\u00c8\u0005\u001d"+
		"\u0000\u0000\u00c3\u00c8\u0005\u001e\u0000\u0000\u00c4\u00c8\u0005\u001f"+
		"\u0000\u0000\u00c5\u00c8\u0005!\u0000\u0000\u00c6\u00c8\u0003\u0012\t"+
		"\u0000\u00c7\u00bd\u0001\u0000\u0000\u0000\u00c7\u00c1\u0001\u0000\u0000"+
		"\u0000\u00c7\u00c2\u0001\u0000\u0000\u0000\u00c7\u00c3\u0001\u0000\u0000"+
		"\u0000\u00c7\u00c4\u0001\u0000\u0000\u0000\u00c7\u00c5\u0001\u0000\u0000"+
		"\u0000\u00c7\u00c6\u0001\u0000\u0000\u0000\u00c8#\u0001\u0000\u0000\u0000"+
		"\u00c9\u00ca\u0005 \u0000\u0000\u00ca\u00cb\u0005!\u0000\u0000\u00cb\u00cc"+
		"\u0005)\u0000\u0000\u00cc%\u0001\u0000\u0000\u0000\u0011\',07E`nv{\u0081"+
		"\u008e\u00a2\u00a5\u00ac\u00bb\u00bf\u00c7";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}