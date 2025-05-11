// Generated from asynchr_simulator/grammar/AsynchrGrammar.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'AsynchrGrammarListener.dart';
import 'AsynchrGrammarBaseListener.dart';
import 'AsynchrGrammarVisitor.dart';
import 'AsynchrGrammarBaseVisitor.dart';
const int RULE_program = 0, RULE_context_block = 1, RULE_context_statement = 2, 
          RULE_board_def = 3, RULE_wall_def = 4, RULE_box_def = 5, RULE_actor_def = 6, 
          RULE_direction = 7, RULE_position_group = 8, RULE_position = 9, 
          RULE_set_block = 10, RULE_thread = 11, RULE_fold_op = 12, RULE_action_list = 13, 
          RULE_action = 14, RULE_block = 15, RULE_command = 16, RULE_condition = 17, 
          RULE_result_expr = 18;
class AsynchrGrammarParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_T__16 = 17, TOKEN_T__17 = 18, 
                   TOKEN_T__18 = 19, TOKEN_T__19 = 20, TOKEN_T__20 = 21, 
                   TOKEN_T__21 = 22, TOKEN_T__22 = 23, TOKEN_T__23 = 24, 
                   TOKEN_T__24 = 25, TOKEN_T__25 = 26, TOKEN_T__26 = 27, 
                   TOKEN_T__27 = 28, TOKEN_T__28 = 29, TOKEN_T__29 = 30, 
                   TOKEN_T__30 = 31, TOKEN_T__31 = 32, TOKEN_ID = 33, TOKEN_NUMBER = 34, 
                   TOKEN_STRING = 35, TOKEN_LPAREN = 36, TOKEN_RPAREN = 37, 
                   TOKEN_LBRACE = 38, TOKEN_RBRACE = 39, TOKEN_COMMA = 40, 
                   TOKEN_SEMI = 41, TOKEN_EQ = 42, TOKEN_PLUS = 43, TOKEN_STAR = 44, 
                   TOKEN_ARROW = 45, TOKEN_WS = 46, TOKEN_COMMENT = 47;

  @override
  final List<String> ruleNames = [
    'program', 'context_block', 'context_statement', 'board_def', 'wall_def', 
    'box_def', 'actor_def', 'direction', 'position_group', 'position', 'set_block', 
    'thread', 'fold_op', 'action_list', 'action', 'block', 'command', 'condition', 
    'result_expr'
  ];

  static final List<String?> _LITERAL_NAMES = [
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
      null, null, null, "'('", "')'", "'{'", "'}'", "','", "';'", "'='", 
      "'+'", "'*'", "'->'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      "ID", "NUMBER", "STRING", "LPAREN", "RPAREN", "LBRACE", "RBRACE", 
      "COMMA", "SEMI", "EQ", "PLUS", "STAR", "ARROW", "WS", "COMMENT"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'AsynchrGrammar.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  AsynchrGrammarParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 0, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 39;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8589934606) != 0)) {
        state = 38;
        context_block();
      }

      state = 44;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__7) {
        state = 41;
        set_block();
        state = 46;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 48;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__31) {
        state = 47;
        result_expr();
      }

      state = 50;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Context_blockContext context_block() {
    dynamic _localctx = Context_blockContext(context, state);
    enterRule(_localctx, 2, RULE_context_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 53; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 52;
        context_statement();
        state = 55; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8589934606) != 0));
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Context_statementContext context_statement() {
    dynamic _localctx = Context_statementContext(context, state);
    enterRule(_localctx, 4, RULE_context_statement);
    try {
      state = 69;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 1);
        state = 57;
        board_def();
        state = 58;
        match(TOKEN_SEMI);
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 2);
        state = 60;
        wall_def();
        state = 61;
        match(TOKEN_SEMI);
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 63;
        box_def();
        state = 64;
        match(TOKEN_SEMI);
        break;
      case TOKEN_ID:
        enterOuterAlt(_localctx, 4);
        state = 66;
        actor_def();
        state = 67;
        match(TOKEN_SEMI);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Board_defContext board_def() {
    dynamic _localctx = Board_defContext(context, state);
    enterRule(_localctx, 6, RULE_board_def);
    try {
      enterOuterAlt(_localctx, 1);
      state = 71;
      match(TOKEN_T__0);
      state = 72;
      match(TOKEN_EQ);
      state = 73;
      match(TOKEN_NUMBER);
      state = 74;
      match(TOKEN_STAR);
      state = 75;
      match(TOKEN_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Wall_defContext wall_def() {
    dynamic _localctx = Wall_defContext(context, state);
    enterRule(_localctx, 8, RULE_wall_def);
    try {
      enterOuterAlt(_localctx, 1);
      state = 77;
      match(TOKEN_T__1);
      state = 78;
      position_group();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Box_defContext box_def() {
    dynamic _localctx = Box_defContext(context, state);
    enterRule(_localctx, 10, RULE_box_def);
    try {
      enterOuterAlt(_localctx, 1);
      state = 80;
      match(TOKEN_T__2);
      state = 81;
      position_group();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Actor_defContext actor_def() {
    dynamic _localctx = Actor_defContext(context, state);
    enterRule(_localctx, 12, RULE_actor_def);
    try {
      enterOuterAlt(_localctx, 1);
      state = 83;
      match(TOKEN_ID);
      state = 84;
      match(TOKEN_EQ);
      state = 85;
      position();
      state = 86;
      direction();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DirectionContext direction() {
    dynamic _localctx = DirectionContext(context, state);
    enterRule(_localctx, 14, RULE_direction);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 88;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 240) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Position_groupContext position_group() {
    dynamic _localctx = Position_groupContext(context, state);
    enterRule(_localctx, 16, RULE_position_group);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 90;
      match(TOKEN_LPAREN);
      state = 91;
      position();
      state = 96;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 92;
        match(TOKEN_COMMA);
        state = 93;
        position();
        state = 98;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 99;
      match(TOKEN_RPAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PositionContext position() {
    dynamic _localctx = PositionContext(context, state);
    enterRule(_localctx, 18, RULE_position);
    try {
      enterOuterAlt(_localctx, 1);
      state = 101;
      match(TOKEN_LPAREN);
      state = 102;
      match(TOKEN_NUMBER);
      state = 103;
      match(TOKEN_COMMA);
      state = 104;
      match(TOKEN_NUMBER);
      state = 105;
      match(TOKEN_RPAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Set_blockContext set_block() {
    dynamic _localctx = Set_blockContext(context, state);
    enterRule(_localctx, 20, RULE_set_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 107;
      match(TOKEN_T__7);
      state = 110;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ID) {
        state = 108;
        match(TOKEN_ID);
        state = 109;
        match(TOKEN_EQ);
      }

      state = 112;
      match(TOKEN_LPAREN);
      state = 113;
      thread();
      state = 118;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 114;
        match(TOKEN_COMMA);
        state = 115;
        thread();
        state = 120;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 121;
      match(TOKEN_RPAREN);
      state = 123;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 26388279082496) != 0)) {
        state = 122;
        fold_op();
      }

      state = 125;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ThreadContext thread() {
    dynamic _localctx = ThreadContext(context, state);
    enterRule(_localctx, 22, RULE_thread);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 129;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ID) {
        state = 127;
        match(TOKEN_ID);
        state = 128;
        match(TOKEN_EQ);
      }

      state = 131;
      match(TOKEN_LBRACE);
      state = 132;
      action_list();
      state = 133;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Fold_opContext fold_op() {
    dynamic _localctx = Fold_opContext(context, state);
    enterRule(_localctx, 24, RULE_fold_op);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 135;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 26388279082496) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Action_listContext action_list() {
    dynamic _localctx = Action_listContext(context, state);
    enterRule(_localctx, 26, RULE_action_list);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 137;
      action_();
      state = 142;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_SEMI) {
        state = 138;
        match(TOKEN_SEMI);
        state = 139;
        action_();
        state = 144;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ActionContext action_() {
    dynamic _localctx = ActionContext(context, state);
    enterRule(_localctx, 28, RULE_action);
    try {
      state = 165;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__13:
        _localctx = WhileLoopContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 145;
        match(TOKEN_T__13);
        state = 146;
        condition();
        state = 147;
        match(TOKEN_LBRACE);
        state = 148;
        action_list();
        state = 149;
        match(TOKEN_RBRACE);
        break;
      case TOKEN_T__14:
        _localctx = RepeatForeverContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 151;
        match(TOKEN_T__14);
        state = 152;
        match(TOKEN_LBRACE);
        state = 153;
        action_list();
        state = 154;
        match(TOKEN_RBRACE);
        break;
      case TOKEN_T__15:
        _localctx = ConditionalContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 156;
        match(TOKEN_T__15);
        state = 157;
        condition();
        state = 158;
        match(TOKEN_T__16);
        state = 159;
        block();
        state = 162;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
        case 1:
          state = 160;
          match(TOKEN_T__17);
          state = 161;
          block();
          break;
        }
        break;
      case TOKEN_T__18:
      case TOKEN_T__19:
      case TOKEN_T__20:
      case TOKEN_T__21:
      case TOKEN_T__22:
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
        _localctx = SimpleCmdContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 164;
        command();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 30, RULE_block);
    try {
      state = 172;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__18:
      case TOKEN_T__19:
      case TOKEN_T__20:
      case TOKEN_T__21:
      case TOKEN_T__22:
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
        enterOuterAlt(_localctx, 1);
        state = 167;
        action_();
        break;
      case TOKEN_LBRACE:
        enterOuterAlt(_localctx, 2);
        state = 168;
        match(TOKEN_LBRACE);
        state = 169;
        action_list();
        state = 170;
        match(TOKEN_RBRACE);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CommandContext command() {
    dynamic _localctx = CommandContext(context, state);
    enterRule(_localctx, 32, RULE_command);
    int _la;
    try {
      state = 187;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__18:
        _localctx = StepForwardContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 174;
        match(TOKEN_T__18);
        break;
      case TOKEN_T__19:
        _localctx = TurnLeftContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 175;
        match(TOKEN_T__19);
        break;
      case TOKEN_T__20:
        _localctx = TurnRightContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 176;
        match(TOKEN_T__20);
        break;
      case TOKEN_T__21:
        _localctx = PickUpContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 177;
        match(TOKEN_T__21);
        break;
      case TOKEN_T__22:
        _localctx = DropContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 178;
        match(TOKEN_T__22);
        break;
      case TOKEN_T__23:
        _localctx = PauseContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 179;
        match(TOKEN_T__23);
        state = 180;
        match(TOKEN_NUMBER);
        break;
      case TOKEN_T__24:
        _localctx = SendContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 181;
        match(TOKEN_T__24);
        state = 182;
        match(TOKEN_STRING);
        state = 183;
        match(TOKEN_ARROW);
        state = 184;
        match(TOKEN_ID);
        break;
      case TOKEN_T__25:
        _localctx = ReceiveContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 185;
        match(TOKEN_T__25);
        state = 186;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_STRING || _la == TOKEN_STAR)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ConditionContext condition() {
    dynamic _localctx = ConditionContext(context, state);
    enterRule(_localctx, 34, RULE_condition);
    int _la;
    try {
      state = 199;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__26:
        _localctx = MessageConditionContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 189;
        match(TOKEN_T__26);
        state = 191;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_STRING) {
          state = 190;
          match(TOKEN_STRING);
        }

        break;
      case TOKEN_T__27:
        _localctx = PathClearConditionContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 193;
        match(TOKEN_T__27);
        break;
      case TOKEN_T__28:
        _localctx = BoxAheadConditionContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 194;
        match(TOKEN_T__28);
        break;
      case TOKEN_T__29:
        _localctx = CarryingBoxConditionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 195;
        match(TOKEN_T__29);
        break;
      case TOKEN_T__30:
        _localctx = ActorAheadConditionContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 196;
        match(TOKEN_T__30);
        break;
      case TOKEN_ID:
        _localctx = IdentifierConditionContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 197;
        match(TOKEN_ID);
        break;
      case TOKEN_LPAREN:
        _localctx = PositionConditionContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 198;
        position();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Result_exprContext result_expr() {
    dynamic _localctx = Result_exprContext(context, state);
    enterRule(_localctx, 36, RULE_result_expr);
    try {
      enterOuterAlt(_localctx, 1);
      state = 201;
      match(TOKEN_T__31);
      state = 202;
      match(TOKEN_ID);
      state = 203;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  static const List<int> _serializedATN = [
      4,1,47,206,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,1,0,3,0,40,8,0,1,0,
      5,0,43,8,0,10,0,12,0,46,9,0,1,0,3,0,49,8,0,1,0,1,0,1,1,4,1,54,8,1,
      11,1,12,1,55,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,70,
      8,2,1,3,1,3,1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,5,1,5,1,5,1,6,1,6,1,6,1,
      6,1,6,1,7,1,7,1,8,1,8,1,8,1,8,5,8,95,8,8,10,8,12,8,98,9,8,1,8,1,8,
      1,9,1,9,1,9,1,9,1,9,1,9,1,10,1,10,1,10,3,10,111,8,10,1,10,1,10,1,10,
      1,10,5,10,117,8,10,10,10,12,10,120,9,10,1,10,1,10,3,10,124,8,10,1,
      10,1,10,1,11,1,11,3,11,130,8,11,1,11,1,11,1,11,1,11,1,12,1,12,1,13,
      1,13,1,13,5,13,141,8,13,10,13,12,13,144,9,13,1,14,1,14,1,14,1,14,1,
      14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,
      163,8,14,1,14,3,14,166,8,14,1,15,1,15,1,15,1,15,1,15,3,15,173,8,15,
      1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,3,
      16,188,8,16,1,17,1,17,3,17,192,8,17,1,17,1,17,1,17,1,17,1,17,1,17,
      3,17,200,8,17,1,18,1,18,1,18,1,18,1,18,0,0,19,0,2,4,6,8,10,12,14,16,
      18,20,22,24,26,28,30,32,34,36,0,3,1,0,4,7,2,0,9,13,43,44,2,0,35,35,
      44,44,218,0,39,1,0,0,0,2,53,1,0,0,0,4,69,1,0,0,0,6,71,1,0,0,0,8,77,
      1,0,0,0,10,80,1,0,0,0,12,83,1,0,0,0,14,88,1,0,0,0,16,90,1,0,0,0,18,
      101,1,0,0,0,20,107,1,0,0,0,22,129,1,0,0,0,24,135,1,0,0,0,26,137,1,
      0,0,0,28,165,1,0,0,0,30,172,1,0,0,0,32,187,1,0,0,0,34,199,1,0,0,0,
      36,201,1,0,0,0,38,40,3,2,1,0,39,38,1,0,0,0,39,40,1,0,0,0,40,44,1,0,
      0,0,41,43,3,20,10,0,42,41,1,0,0,0,43,46,1,0,0,0,44,42,1,0,0,0,44,45,
      1,0,0,0,45,48,1,0,0,0,46,44,1,0,0,0,47,49,3,36,18,0,48,47,1,0,0,0,
      48,49,1,0,0,0,49,50,1,0,0,0,50,51,5,0,0,1,51,1,1,0,0,0,52,54,3,4,2,
      0,53,52,1,0,0,0,54,55,1,0,0,0,55,53,1,0,0,0,55,56,1,0,0,0,56,3,1,0,
      0,0,57,58,3,6,3,0,58,59,5,41,0,0,59,70,1,0,0,0,60,61,3,8,4,0,61,62,
      5,41,0,0,62,70,1,0,0,0,63,64,3,10,5,0,64,65,5,41,0,0,65,70,1,0,0,0,
      66,67,3,12,6,0,67,68,5,41,0,0,68,70,1,0,0,0,69,57,1,0,0,0,69,60,1,
      0,0,0,69,63,1,0,0,0,69,66,1,0,0,0,70,5,1,0,0,0,71,72,5,1,0,0,72,73,
      5,42,0,0,73,74,5,34,0,0,74,75,5,44,0,0,75,76,5,34,0,0,76,7,1,0,0,0,
      77,78,5,2,0,0,78,79,3,16,8,0,79,9,1,0,0,0,80,81,5,3,0,0,81,82,3,16,
      8,0,82,11,1,0,0,0,83,84,5,33,0,0,84,85,5,42,0,0,85,86,3,18,9,0,86,
      87,3,14,7,0,87,13,1,0,0,0,88,89,7,0,0,0,89,15,1,0,0,0,90,91,5,36,0,
      0,91,96,3,18,9,0,92,93,5,40,0,0,93,95,3,18,9,0,94,92,1,0,0,0,95,98,
      1,0,0,0,96,94,1,0,0,0,96,97,1,0,0,0,97,99,1,0,0,0,98,96,1,0,0,0,99,
      100,5,37,0,0,100,17,1,0,0,0,101,102,5,36,0,0,102,103,5,34,0,0,103,
      104,5,40,0,0,104,105,5,34,0,0,105,106,5,37,0,0,106,19,1,0,0,0,107,
      110,5,8,0,0,108,109,5,33,0,0,109,111,5,42,0,0,110,108,1,0,0,0,110,
      111,1,0,0,0,111,112,1,0,0,0,112,113,5,36,0,0,113,118,3,22,11,0,114,
      115,5,40,0,0,115,117,3,22,11,0,116,114,1,0,0,0,117,120,1,0,0,0,118,
      116,1,0,0,0,118,119,1,0,0,0,119,121,1,0,0,0,120,118,1,0,0,0,121,123,
      5,37,0,0,122,124,3,24,12,0,123,122,1,0,0,0,123,124,1,0,0,0,124,125,
      1,0,0,0,125,126,5,41,0,0,126,21,1,0,0,0,127,128,5,33,0,0,128,130,5,
      42,0,0,129,127,1,0,0,0,129,130,1,0,0,0,130,131,1,0,0,0,131,132,5,38,
      0,0,132,133,3,26,13,0,133,134,5,39,0,0,134,23,1,0,0,0,135,136,7,1,
      0,0,136,25,1,0,0,0,137,142,3,28,14,0,138,139,5,41,0,0,139,141,3,28,
      14,0,140,138,1,0,0,0,141,144,1,0,0,0,142,140,1,0,0,0,142,143,1,0,0,
      0,143,27,1,0,0,0,144,142,1,0,0,0,145,146,5,14,0,0,146,147,3,34,17,
      0,147,148,5,38,0,0,148,149,3,26,13,0,149,150,5,39,0,0,150,166,1,0,
      0,0,151,152,5,15,0,0,152,153,5,38,0,0,153,154,3,26,13,0,154,155,5,
      39,0,0,155,166,1,0,0,0,156,157,5,16,0,0,157,158,3,34,17,0,158,159,
      5,17,0,0,159,162,3,30,15,0,160,161,5,18,0,0,161,163,3,30,15,0,162,
      160,1,0,0,0,162,163,1,0,0,0,163,166,1,0,0,0,164,166,3,32,16,0,165,
      145,1,0,0,0,165,151,1,0,0,0,165,156,1,0,0,0,165,164,1,0,0,0,166,29,
      1,0,0,0,167,173,3,28,14,0,168,169,5,38,0,0,169,170,3,26,13,0,170,171,
      5,39,0,0,171,173,1,0,0,0,172,167,1,0,0,0,172,168,1,0,0,0,173,31,1,
      0,0,0,174,188,5,19,0,0,175,188,5,20,0,0,176,188,5,21,0,0,177,188,5,
      22,0,0,178,188,5,23,0,0,179,180,5,24,0,0,180,188,5,34,0,0,181,182,
      5,25,0,0,182,183,5,35,0,0,183,184,5,45,0,0,184,188,5,33,0,0,185,186,
      5,26,0,0,186,188,7,2,0,0,187,174,1,0,0,0,187,175,1,0,0,0,187,176,1,
      0,0,0,187,177,1,0,0,0,187,178,1,0,0,0,187,179,1,0,0,0,187,181,1,0,
      0,0,187,185,1,0,0,0,188,33,1,0,0,0,189,191,5,27,0,0,190,192,5,35,0,
      0,191,190,1,0,0,0,191,192,1,0,0,0,192,200,1,0,0,0,193,200,5,28,0,0,
      194,200,5,29,0,0,195,200,5,30,0,0,196,200,5,31,0,0,197,200,5,33,0,
      0,198,200,3,18,9,0,199,189,1,0,0,0,199,193,1,0,0,0,199,194,1,0,0,0,
      199,195,1,0,0,0,199,196,1,0,0,0,199,197,1,0,0,0,199,198,1,0,0,0,200,
      35,1,0,0,0,201,202,5,32,0,0,202,203,5,33,0,0,203,204,5,41,0,0,204,
      37,1,0,0,0,17,39,44,48,55,69,96,110,118,123,129,142,162,165,172,187,
      191,199
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(AsynchrGrammarParser.TOKEN_EOF, 0);
  Context_blockContext? context_block() => getRuleContext<Context_blockContext>(0);
  List<Set_blockContext> set_blocks() => getRuleContexts<Set_blockContext>();
  Set_blockContext? set_block(int i) => getRuleContext<Set_blockContext>(i);
  Result_exprContext? result_expr() => getRuleContext<Result_exprContext>(0);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitProgram(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitProgram(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Context_blockContext extends ParserRuleContext {
  List<Context_statementContext> context_statements() => getRuleContexts<Context_statementContext>();
  Context_statementContext? context_statement(int i) => getRuleContext<Context_statementContext>(i);
  Context_blockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_context_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterContext_block(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitContext_block(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitContext_block(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Context_statementContext extends ParserRuleContext {
  Board_defContext? board_def() => getRuleContext<Board_defContext>(0);
  TerminalNode? SEMI() => getToken(AsynchrGrammarParser.TOKEN_SEMI, 0);
  Wall_defContext? wall_def() => getRuleContext<Wall_defContext>(0);
  Box_defContext? box_def() => getRuleContext<Box_defContext>(0);
  Actor_defContext? actor_def() => getRuleContext<Actor_defContext>(0);
  Context_statementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_context_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterContext_statement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitContext_statement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitContext_statement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Board_defContext extends ParserRuleContext {
  TerminalNode? EQ() => getToken(AsynchrGrammarParser.TOKEN_EQ, 0);
  List<TerminalNode> NUMBERs() => getTokens(AsynchrGrammarParser.TOKEN_NUMBER);
  TerminalNode? NUMBER(int i) => getToken(AsynchrGrammarParser.TOKEN_NUMBER, i);
  TerminalNode? STAR() => getToken(AsynchrGrammarParser.TOKEN_STAR, 0);
  Board_defContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_board_def;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterBoard_def(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitBoard_def(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitBoard_def(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Wall_defContext extends ParserRuleContext {
  Position_groupContext? position_group() => getRuleContext<Position_groupContext>(0);
  Wall_defContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_wall_def;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterWall_def(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitWall_def(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitWall_def(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Box_defContext extends ParserRuleContext {
  Position_groupContext? position_group() => getRuleContext<Position_groupContext>(0);
  Box_defContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_box_def;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterBox_def(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitBox_def(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitBox_def(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Actor_defContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  TerminalNode? EQ() => getToken(AsynchrGrammarParser.TOKEN_EQ, 0);
  PositionContext? position() => getRuleContext<PositionContext>(0);
  DirectionContext? direction() => getRuleContext<DirectionContext>(0);
  Actor_defContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_actor_def;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterActor_def(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitActor_def(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitActor_def(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class DirectionContext extends ParserRuleContext {
  DirectionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_direction;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterDirection(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitDirection(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitDirection(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Position_groupContext extends ParserRuleContext {
  TerminalNode? LPAREN() => getToken(AsynchrGrammarParser.TOKEN_LPAREN, 0);
  List<PositionContext> positions() => getRuleContexts<PositionContext>();
  PositionContext? position(int i) => getRuleContext<PositionContext>(i);
  TerminalNode? RPAREN() => getToken(AsynchrGrammarParser.TOKEN_RPAREN, 0);
  List<TerminalNode> COMMAs() => getTokens(AsynchrGrammarParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(AsynchrGrammarParser.TOKEN_COMMA, i);
  Position_groupContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_position_group;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterPosition_group(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitPosition_group(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitPosition_group(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PositionContext extends ParserRuleContext {
  TerminalNode? LPAREN() => getToken(AsynchrGrammarParser.TOKEN_LPAREN, 0);
  List<TerminalNode> NUMBERs() => getTokens(AsynchrGrammarParser.TOKEN_NUMBER);
  TerminalNode? NUMBER(int i) => getToken(AsynchrGrammarParser.TOKEN_NUMBER, i);
  TerminalNode? COMMA() => getToken(AsynchrGrammarParser.TOKEN_COMMA, 0);
  TerminalNode? RPAREN() => getToken(AsynchrGrammarParser.TOKEN_RPAREN, 0);
  PositionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_position;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterPosition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitPosition(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitPosition(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Set_blockContext extends ParserRuleContext {
  TerminalNode? LPAREN() => getToken(AsynchrGrammarParser.TOKEN_LPAREN, 0);
  List<ThreadContext> threads() => getRuleContexts<ThreadContext>();
  ThreadContext? thread(int i) => getRuleContext<ThreadContext>(i);
  TerminalNode? RPAREN() => getToken(AsynchrGrammarParser.TOKEN_RPAREN, 0);
  TerminalNode? SEMI() => getToken(AsynchrGrammarParser.TOKEN_SEMI, 0);
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  TerminalNode? EQ() => getToken(AsynchrGrammarParser.TOKEN_EQ, 0);
  List<TerminalNode> COMMAs() => getTokens(AsynchrGrammarParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(AsynchrGrammarParser.TOKEN_COMMA, i);
  Fold_opContext? fold_op() => getRuleContext<Fold_opContext>(0);
  Set_blockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_set_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterSet_block(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitSet_block(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitSet_block(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ThreadContext extends ParserRuleContext {
  TerminalNode? LBRACE() => getToken(AsynchrGrammarParser.TOKEN_LBRACE, 0);
  Action_listContext? action_list() => getRuleContext<Action_listContext>(0);
  TerminalNode? RBRACE() => getToken(AsynchrGrammarParser.TOKEN_RBRACE, 0);
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  TerminalNode? EQ() => getToken(AsynchrGrammarParser.TOKEN_EQ, 0);
  ThreadContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_thread;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterThread(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitThread(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitThread(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Fold_opContext extends ParserRuleContext {
  TerminalNode? PLUS() => getToken(AsynchrGrammarParser.TOKEN_PLUS, 0);
  TerminalNode? STAR() => getToken(AsynchrGrammarParser.TOKEN_STAR, 0);
  Fold_opContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fold_op;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterFold_op(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitFold_op(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitFold_op(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Action_listContext extends ParserRuleContext {
  List<ActionContext> actions() => getRuleContexts<ActionContext>();
  ActionContext? action_(int i) => getRuleContext<ActionContext>(i);
  List<TerminalNode> SEMIs() => getTokens(AsynchrGrammarParser.TOKEN_SEMI);
  TerminalNode? SEMI(int i) => getToken(AsynchrGrammarParser.TOKEN_SEMI, i);
  Action_listContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_action_list;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterAction_list(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitAction_list(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitAction_list(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ActionContext extends ParserRuleContext {
  ActionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_action;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class BlockContext extends ParserRuleContext {
  ActionContext? action_() => getRuleContext<ActionContext>(0);
  TerminalNode? LBRACE() => getToken(AsynchrGrammarParser.TOKEN_LBRACE, 0);
  Action_listContext? action_list() => getRuleContext<Action_listContext>(0);
  TerminalNode? RBRACE() => getToken(AsynchrGrammarParser.TOKEN_RBRACE, 0);
  BlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitBlock(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitBlock(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class CommandContext extends ParserRuleContext {
  CommandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_command;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ConditionContext extends ParserRuleContext {
  ConditionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_condition;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class Result_exprContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  TerminalNode? SEMI() => getToken(AsynchrGrammarParser.TOKEN_SEMI, 0);
  Result_exprContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_result_expr;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterResult_expr(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitResult_expr(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitResult_expr(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ConditionalContext extends ActionContext {
  ConditionContext? condition() => getRuleContext<ConditionContext>(0);
  List<BlockContext> blocks() => getRuleContexts<BlockContext>();
  BlockContext? block(int i) => getRuleContext<BlockContext>(i);
  ConditionalContext(ActionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterConditional(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitConditional(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitConditional(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SimpleCmdContext extends ActionContext {
  CommandContext? command() => getRuleContext<CommandContext>(0);
  SimpleCmdContext(ActionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterSimpleCmd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitSimpleCmd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitSimpleCmd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class WhileLoopContext extends ActionContext {
  ConditionContext? condition() => getRuleContext<ConditionContext>(0);
  TerminalNode? LBRACE() => getToken(AsynchrGrammarParser.TOKEN_LBRACE, 0);
  Action_listContext? action_list() => getRuleContext<Action_listContext>(0);
  TerminalNode? RBRACE() => getToken(AsynchrGrammarParser.TOKEN_RBRACE, 0);
  WhileLoopContext(ActionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterWhileLoop(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitWhileLoop(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitWhileLoop(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class RepeatForeverContext extends ActionContext {
  TerminalNode? LBRACE() => getToken(AsynchrGrammarParser.TOKEN_LBRACE, 0);
  Action_listContext? action_list() => getRuleContext<Action_listContext>(0);
  TerminalNode? RBRACE() => getToken(AsynchrGrammarParser.TOKEN_RBRACE, 0);
  RepeatForeverContext(ActionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterRepeatForever(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitRepeatForever(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitRepeatForever(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class TurnRightContext extends CommandContext {
  TurnRightContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterTurnRight(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitTurnRight(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitTurnRight(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TurnLeftContext extends CommandContext {
  TurnLeftContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterTurnLeft(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitTurnLeft(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitTurnLeft(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PauseContext extends CommandContext {
  TerminalNode? NUMBER() => getToken(AsynchrGrammarParser.TOKEN_NUMBER, 0);
  PauseContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterPause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitPause(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitPause(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class StepForwardContext extends CommandContext {
  StepForwardContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterStepForward(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitStepForward(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitStepForward(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PickUpContext extends CommandContext {
  PickUpContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterPickUp(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitPickUp(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitPickUp(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ReceiveContext extends CommandContext {
  TerminalNode? STRING() => getToken(AsynchrGrammarParser.TOKEN_STRING, 0);
  TerminalNode? STAR() => getToken(AsynchrGrammarParser.TOKEN_STAR, 0);
  ReceiveContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterReceive(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitReceive(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitReceive(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class DropContext extends CommandContext {
  DropContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterDrop(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitDrop(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitDrop(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SendContext extends CommandContext {
  TerminalNode? STRING() => getToken(AsynchrGrammarParser.TOKEN_STRING, 0);
  TerminalNode? ARROW() => getToken(AsynchrGrammarParser.TOKEN_ARROW, 0);
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  SendContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterSend(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitSend(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitSend(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class ActorAheadConditionContext extends ConditionContext {
  ActorAheadConditionContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterActorAheadCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitActorAheadCondition(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitActorAheadCondition(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IdentifierConditionContext extends ConditionContext {
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  IdentifierConditionContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterIdentifierCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitIdentifierCondition(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitIdentifierCondition(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class MessageConditionContext extends ConditionContext {
  TerminalNode? STRING() => getToken(AsynchrGrammarParser.TOKEN_STRING, 0);
  MessageConditionContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterMessageCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitMessageCondition(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitMessageCondition(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PathClearConditionContext extends ConditionContext {
  PathClearConditionContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterPathClearCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitPathClearCondition(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitPathClearCondition(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class BoxAheadConditionContext extends ConditionContext {
  BoxAheadConditionContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterBoxAheadCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitBoxAheadCondition(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitBoxAheadCondition(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class CarryingBoxConditionContext extends ConditionContext {
  CarryingBoxConditionContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterCarryingBoxCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitCarryingBoxCondition(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitCarryingBoxCondition(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PositionConditionContext extends ConditionContext {
  PositionContext? position() => getRuleContext<PositionContext>(0);
  PositionConditionContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterPositionCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitPositionCondition(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitPositionCondition(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}