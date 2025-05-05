// Generated from asynchr_simulator/grammar/AsynchrGrammar.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'AsynchrGrammarListener.dart';
import 'AsynchrGrammarBaseListener.dart';
import 'AsynchrGrammarVisitor.dart';
import 'AsynchrGrammarBaseVisitor.dart';
const int RULE_program = 0, RULE_context_block = 1, RULE_context_statement = 2, 
          RULE_board_def = 3, RULE_wall_def = 4, RULE_box_def = 5, RULE_actor_def = 6, 
          RULE_position_group = 7, RULE_position = 8, RULE_direction = 9, 
          RULE_behavior_block = 10, RULE_behavior_statement = 11, RULE_action_list = 12, 
          RULE_action = 13, RULE_command = 14, RULE_condition = 15;
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
                   TOKEN_T__24 = 25, TOKEN_ID = 26, TOKEN_NUMBER = 27, TOKEN_STRING = 28, 
                   TOKEN_LPAREN = 29, TOKEN_RPAREN = 30, TOKEN_LBRACE = 31, 
                   TOKEN_RBRACE = 32, TOKEN_COMMA = 33, TOKEN_SEMI = 34, 
                   TOKEN_EQ = 35, TOKEN_STAR = 36, TOKEN_WS = 37, TOKEN_COMMENT = 38;

  @override
  final List<String> ruleNames = [
    'program', 'context_block', 'context_statement', 'board_def', 'wall_def', 
    'box_def', 'actor_def', 'position_group', 'position', 'direction', 'behavior_block', 
    'behavior_statement', 'action_list', 'action', 'command', 'condition'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'\\u0414\\u043E\\u0441\\u043A\\u0430'", "'\\u0421\\u0442\\u0435\\u043D\\u044B'", 
      "'\\u041A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0438'", "'\\u0412\\u0412\\u0415\\u0420\\u0425'", 
      "'\\u0412\\u041D\\u0418\\u0417'", "'\\u0412\\u041B\\u0415\\u0412\\u041E'", 
      "'\\u0412\\u041F\\u0420\\u0410\\u0412\\u041E'", "'\\u0414\\u043B\\u044F'", 
      "'\\u0426\\u0418\\u041A\\u041B'", "'\\u041F\\u041E\\u041A\\u0410'", 
      "'\\u041F\\u041E\\u0412\\u0422\\u041E\\u0420\\u0418\\u0422\\u042C'", 
      "'\\u0415\\u0421\\u041B\\u0418'", "'\\u0422\\u041E'", "'\\u0418\\u041D\\u0410\\u0427\\u0415'", 
      "'\\u0416\\u0414\\u0410\\u0422\\u042C'", "'\\u0428\\u0430\\u0433 \\u0412\\u043F\\u0435\\u0440\\u0451\\u0434'", 
      "'\\u041F\\u043E\\u0432\\u0435\\u0440\\u043D\\u0443\\u0442\\u044C \\u0412\\u043B\\u0435\\u0432\\u043E'", 
      "'\\u041F\\u043E\\u0432\\u0435\\u0440\\u043D\\u0443\\u0442\\u044C \\u0412\\u043F\\u0440\\u0430\\u0432\\u043E'", 
      "'\\u041F\\u043E\\u0434\\u043D\\u044F\\u0442\\u044C_\\u043A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0443'", 
      "'\\u041E\\u043F\\u0443\\u0441\\u0442\\u0438\\u0442\\u044C_\\u043A\\u043E\\u0440\\u043E\\u0431\\u043A\\u0443'", 
      "'\\u041F\\u0410\\u0423\\u0417\\u0410'", "'\\u041E\\u0422\\u041F\\u0420\\u0410\\u0412\\u0418\\u0422\\u042C'", 
      "'->'", "'\\u041F\\u041E\\u041B\\u0423\\u0427\\u0418\\u0422\\u042C'", 
      "'\\u0421\\u041E\\u041E\\u0411\\u0429\\u0415\\u041D\\u0418\\u0415?'", 
      null, null, null, "'('", "')'", "'{'", "'}'", "','", "';'", "'='", 
      "'*'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, "ID", "NUMBER", "STRING", "LPAREN", "RPAREN", 
      "LBRACE", "RBRACE", "COMMA", "SEMI", "EQ", "STAR", "WS", "COMMENT"
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
    try {
      enterOuterAlt(_localctx, 1);
      state = 32;
      context_block();
      state = 33;
      behavior_block();
      state = 34;
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
      state = 37; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 36;
        context_statement();
        state = 39; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 67108878) != 0));
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
      state = 53;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 1);
        state = 41;
        board_def();
        state = 42;
        match(TOKEN_SEMI);
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 2);
        state = 44;
        wall_def();
        state = 45;
        match(TOKEN_SEMI);
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 47;
        box_def();
        state = 48;
        match(TOKEN_SEMI);
        break;
      case TOKEN_ID:
        enterOuterAlt(_localctx, 4);
        state = 50;
        actor_def();
        state = 51;
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
      state = 55;
      match(TOKEN_T__0);
      state = 56;
      match(TOKEN_EQ);
      state = 57;
      match(TOKEN_NUMBER);
      state = 58;
      match(TOKEN_STAR);
      state = 59;
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
      state = 61;
      match(TOKEN_T__1);
      state = 62;
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
      state = 64;
      match(TOKEN_T__2);
      state = 65;
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
      state = 67;
      match(TOKEN_ID);
      state = 68;
      match(TOKEN_EQ);
      state = 69;
      position();
      state = 70;
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

  Position_groupContext position_group() {
    dynamic _localctx = Position_groupContext(context, state);
    enterRule(_localctx, 14, RULE_position_group);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 72;
      match(TOKEN_LPAREN);
      state = 73;
      position();
      state = 78;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 74;
        match(TOKEN_COMMA);
        state = 75;
        position();
        state = 80;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 81;
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
    enterRule(_localctx, 16, RULE_position);
    try {
      enterOuterAlt(_localctx, 1);
      state = 83;
      match(TOKEN_LPAREN);
      state = 84;
      match(TOKEN_NUMBER);
      state = 85;
      match(TOKEN_COMMA);
      state = 86;
      match(TOKEN_NUMBER);
      state = 87;
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

  DirectionContext direction() {
    dynamic _localctx = DirectionContext(context, state);
    enterRule(_localctx, 18, RULE_direction);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 89;
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

  Behavior_blockContext behavior_block() {
    dynamic _localctx = Behavior_blockContext(context, state);
    enterRule(_localctx, 20, RULE_behavior_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 92; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 91;
        behavior_statement();
        state = 94; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_T__7);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Behavior_statementContext behavior_statement() {
    dynamic _localctx = Behavior_statementContext(context, state);
    enterRule(_localctx, 22, RULE_behavior_statement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 96;
      match(TOKEN_T__7);
      state = 97;
      match(TOKEN_ID);
      state = 98;
      match(TOKEN_EQ);
      state = 99;
      match(TOKEN_LBRACE);
      state = 100;
      action_list();
      state = 101;
      match(TOKEN_RBRACE);
      state = 102;
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

  Action_listContext action_list() {
    dynamic _localctx = Action_listContext(context, state);
    enterRule(_localctx, 24, RULE_action_list);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 104;
      action_();
      state = 109;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_SEMI) {
        state = 105;
        match(TOKEN_SEMI);
        state = 106;
        action_();
        state = 111;
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
    enterRule(_localctx, 26, RULE_action);
    try {
      state = 135;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__8:
        _localctx = WhileLoopContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 112;
        match(TOKEN_T__8);
        state = 113;
        match(TOKEN_LBRACE);
        state = 114;
        action_list();
        state = 115;
        match(TOKEN_RBRACE);
        state = 116;
        match(TOKEN_T__9);
        state = 117;
        condition();
        break;
      case TOKEN_T__10:
        _localctx = RepeatForeverContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 119;
        match(TOKEN_T__10);
        state = 120;
        match(TOKEN_LBRACE);
        state = 121;
        action_list();
        state = 122;
        match(TOKEN_RBRACE);
        break;
      case TOKEN_T__11:
        _localctx = ConditionalContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 124;
        match(TOKEN_T__11);
        state = 125;
        condition();
        state = 126;
        match(TOKEN_T__12);
        state = 127;
        action_();
        state = 130;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 5, context)) {
        case 1:
          state = 128;
          match(TOKEN_T__13);
          state = 129;
          action_();
          break;
        }
        break;
      case TOKEN_T__14:
        _localctx = WaitOtherContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 132;
        match(TOKEN_T__14);
        state = 133;
        match(TOKEN_ID);
        break;
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
      case TOKEN_T__19:
      case TOKEN_T__20:
      case TOKEN_T__21:
      case TOKEN_T__23:
        _localctx = SimpleActionContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 134;
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

  CommandContext command() {
    dynamic _localctx = CommandContext(context, state);
    enterRule(_localctx, 28, RULE_command);
    int _la;
    try {
      state = 150;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__15:
        _localctx = StepCmdContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 137;
        match(TOKEN_T__15);
        break;
      case TOKEN_T__16:
        _localctx = TurnLeftCmdContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 138;
        match(TOKEN_T__16);
        break;
      case TOKEN_T__17:
        _localctx = TurnRightCmdContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 139;
        match(TOKEN_T__17);
        break;
      case TOKEN_T__18:
        _localctx = PickUpCmdContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 140;
        match(TOKEN_T__18);
        break;
      case TOKEN_T__19:
        _localctx = DropCmdContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 141;
        match(TOKEN_T__19);
        break;
      case TOKEN_T__20:
        _localctx = PauseCmdContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 142;
        match(TOKEN_T__20);
        state = 143;
        match(TOKEN_NUMBER);
        break;
      case TOKEN_T__21:
        _localctx = SendCmdContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 144;
        match(TOKEN_T__21);
        state = 145;
        match(TOKEN_STRING);
        state = 146;
        match(TOKEN_T__22);
        state = 147;
        match(TOKEN_ID);
        break;
      case TOKEN_T__23:
        _localctx = RecvCmdContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 148;
        match(TOKEN_T__23);
        state = 149;
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
    enterRule(_localctx, 30, RULE_condition);
    try {
      state = 155;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__24:
        _localctx = HasMsgCondContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 152;
        match(TOKEN_T__24);
        break;
      case TOKEN_ID:
        _localctx = IdentifierCondContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 153;
        match(TOKEN_ID);
        break;
      case TOKEN_LPAREN:
        _localctx = PositionCondContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 154;
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

  static const List<int> _serializedATN = [
      4,1,38,158,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,1,0,1,0,1,0,1,0,1,1,4,1,38,8,1,11,1,12,1,39,1,2,
      1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,54,8,2,1,3,1,3,1,3,
      1,3,1,3,1,3,1,4,1,4,1,4,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,7,1,7,1,
      7,1,7,5,7,77,8,7,10,7,12,7,80,9,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,
      1,9,1,9,1,10,4,10,93,8,10,11,10,12,10,94,1,11,1,11,1,11,1,11,1,11,
      1,11,1,11,1,11,1,12,1,12,1,12,5,12,108,8,12,10,12,12,12,111,9,12,1,
      13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,
      1,13,1,13,1,13,1,13,3,13,131,8,13,1,13,1,13,1,13,3,13,136,8,13,1,14,
      1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,151,
      8,14,1,15,1,15,1,15,3,15,156,8,15,1,15,0,0,16,0,2,4,6,8,10,12,14,16,
      18,20,22,24,26,28,30,0,2,1,0,4,7,2,0,28,28,36,36,162,0,32,1,0,0,0,
      2,37,1,0,0,0,4,53,1,0,0,0,6,55,1,0,0,0,8,61,1,0,0,0,10,64,1,0,0,0,
      12,67,1,0,0,0,14,72,1,0,0,0,16,83,1,0,0,0,18,89,1,0,0,0,20,92,1,0,
      0,0,22,96,1,0,0,0,24,104,1,0,0,0,26,135,1,0,0,0,28,150,1,0,0,0,30,
      155,1,0,0,0,32,33,3,2,1,0,33,34,3,20,10,0,34,35,5,0,0,1,35,1,1,0,0,
      0,36,38,3,4,2,0,37,36,1,0,0,0,38,39,1,0,0,0,39,37,1,0,0,0,39,40,1,
      0,0,0,40,3,1,0,0,0,41,42,3,6,3,0,42,43,5,34,0,0,43,54,1,0,0,0,44,45,
      3,8,4,0,45,46,5,34,0,0,46,54,1,0,0,0,47,48,3,10,5,0,48,49,5,34,0,0,
      49,54,1,0,0,0,50,51,3,12,6,0,51,52,5,34,0,0,52,54,1,0,0,0,53,41,1,
      0,0,0,53,44,1,0,0,0,53,47,1,0,0,0,53,50,1,0,0,0,54,5,1,0,0,0,55,56,
      5,1,0,0,56,57,5,35,0,0,57,58,5,27,0,0,58,59,5,36,0,0,59,60,5,27,0,
      0,60,7,1,0,0,0,61,62,5,2,0,0,62,63,3,14,7,0,63,9,1,0,0,0,64,65,5,3,
      0,0,65,66,3,14,7,0,66,11,1,0,0,0,67,68,5,26,0,0,68,69,5,35,0,0,69,
      70,3,16,8,0,70,71,3,18,9,0,71,13,1,0,0,0,72,73,5,29,0,0,73,78,3,16,
      8,0,74,75,5,33,0,0,75,77,3,16,8,0,76,74,1,0,0,0,77,80,1,0,0,0,78,76,
      1,0,0,0,78,79,1,0,0,0,79,81,1,0,0,0,80,78,1,0,0,0,81,82,5,30,0,0,82,
      15,1,0,0,0,83,84,5,29,0,0,84,85,5,27,0,0,85,86,5,33,0,0,86,87,5,27,
      0,0,87,88,5,30,0,0,88,17,1,0,0,0,89,90,7,0,0,0,90,19,1,0,0,0,91,93,
      3,22,11,0,92,91,1,0,0,0,93,94,1,0,0,0,94,92,1,0,0,0,94,95,1,0,0,0,
      95,21,1,0,0,0,96,97,5,8,0,0,97,98,5,26,0,0,98,99,5,35,0,0,99,100,5,
      31,0,0,100,101,3,24,12,0,101,102,5,32,0,0,102,103,5,34,0,0,103,23,
      1,0,0,0,104,109,3,26,13,0,105,106,5,34,0,0,106,108,3,26,13,0,107,105,
      1,0,0,0,108,111,1,0,0,0,109,107,1,0,0,0,109,110,1,0,0,0,110,25,1,0,
      0,0,111,109,1,0,0,0,112,113,5,9,0,0,113,114,5,31,0,0,114,115,3,24,
      12,0,115,116,5,32,0,0,116,117,5,10,0,0,117,118,3,30,15,0,118,136,1,
      0,0,0,119,120,5,11,0,0,120,121,5,31,0,0,121,122,3,24,12,0,122,123,
      5,32,0,0,123,136,1,0,0,0,124,125,5,12,0,0,125,126,3,30,15,0,126,127,
      5,13,0,0,127,130,3,26,13,0,128,129,5,14,0,0,129,131,3,26,13,0,130,
      128,1,0,0,0,130,131,1,0,0,0,131,136,1,0,0,0,132,133,5,15,0,0,133,136,
      5,26,0,0,134,136,3,28,14,0,135,112,1,0,0,0,135,119,1,0,0,0,135,124,
      1,0,0,0,135,132,1,0,0,0,135,134,1,0,0,0,136,27,1,0,0,0,137,151,5,16,
      0,0,138,151,5,17,0,0,139,151,5,18,0,0,140,151,5,19,0,0,141,151,5,20,
      0,0,142,143,5,21,0,0,143,151,5,27,0,0,144,145,5,22,0,0,145,146,5,28,
      0,0,146,147,5,23,0,0,147,151,5,26,0,0,148,149,5,24,0,0,149,151,7,1,
      0,0,150,137,1,0,0,0,150,138,1,0,0,0,150,139,1,0,0,0,150,140,1,0,0,
      0,150,141,1,0,0,0,150,142,1,0,0,0,150,144,1,0,0,0,150,148,1,0,0,0,
      151,29,1,0,0,0,152,156,5,25,0,0,153,156,5,26,0,0,154,156,3,16,8,0,
      155,152,1,0,0,0,155,153,1,0,0,0,155,154,1,0,0,0,156,31,1,0,0,0,9,39,
      53,78,94,109,130,135,150,155
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ProgramContext extends ParserRuleContext {
  Context_blockContext? context_block() => getRuleContext<Context_blockContext>(0);
  Behavior_blockContext? behavior_block() => getRuleContext<Behavior_blockContext>(0);
  TerminalNode? EOF() => getToken(AsynchrGrammarParser.TOKEN_EOF, 0);
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

class Behavior_blockContext extends ParserRuleContext {
  List<Behavior_statementContext> behavior_statements() => getRuleContexts<Behavior_statementContext>();
  Behavior_statementContext? behavior_statement(int i) => getRuleContext<Behavior_statementContext>(i);
  Behavior_blockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_behavior_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterBehavior_block(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitBehavior_block(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitBehavior_block(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Behavior_statementContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  TerminalNode? EQ() => getToken(AsynchrGrammarParser.TOKEN_EQ, 0);
  TerminalNode? LBRACE() => getToken(AsynchrGrammarParser.TOKEN_LBRACE, 0);
  Action_listContext? action_list() => getRuleContext<Action_listContext>(0);
  TerminalNode? RBRACE() => getToken(AsynchrGrammarParser.TOKEN_RBRACE, 0);
  TerminalNode? SEMI() => getToken(AsynchrGrammarParser.TOKEN_SEMI, 0);
  Behavior_statementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_behavior_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterBehavior_statement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitBehavior_statement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitBehavior_statement(this);
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

class WaitOtherContext extends ActionContext {
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  WaitOtherContext(ActionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterWaitOther(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitWaitOther(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitWaitOther(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ConditionalContext extends ActionContext {
  ConditionContext? condition() => getRuleContext<ConditionContext>(0);
  List<ActionContext> actions() => getRuleContexts<ActionContext>();
  ActionContext? action_(int i) => getRuleContext<ActionContext>(i);
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

class WhileLoopContext extends ActionContext {
  TerminalNode? LBRACE() => getToken(AsynchrGrammarParser.TOKEN_LBRACE, 0);
  Action_listContext? action_list() => getRuleContext<Action_listContext>(0);
  TerminalNode? RBRACE() => getToken(AsynchrGrammarParser.TOKEN_RBRACE, 0);
  ConditionContext? condition() => getRuleContext<ConditionContext>(0);
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
}

class SimpleActionContext extends ActionContext {
  CommandContext? command() => getRuleContext<CommandContext>(0);
  SimpleActionContext(ActionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterSimpleAction(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitSimpleAction(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitSimpleAction(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class PauseCmdContext extends CommandContext {
  TerminalNode? NUMBER() => getToken(AsynchrGrammarParser.TOKEN_NUMBER, 0);
  PauseCmdContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterPauseCmd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitPauseCmd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitPauseCmd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PickUpCmdContext extends CommandContext {
  PickUpCmdContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterPickUpCmd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitPickUpCmd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitPickUpCmd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class StepCmdContext extends CommandContext {
  StepCmdContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterStepCmd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitStepCmd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitStepCmd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TurnRightCmdContext extends CommandContext {
  TurnRightCmdContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterTurnRightCmd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitTurnRightCmd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitTurnRightCmd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class RecvCmdContext extends CommandContext {
  TerminalNode? STRING() => getToken(AsynchrGrammarParser.TOKEN_STRING, 0);
  TerminalNode? STAR() => getToken(AsynchrGrammarParser.TOKEN_STAR, 0);
  RecvCmdContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterRecvCmd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitRecvCmd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitRecvCmd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SendCmdContext extends CommandContext {
  TerminalNode? STRING() => getToken(AsynchrGrammarParser.TOKEN_STRING, 0);
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  SendCmdContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterSendCmd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitSendCmd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitSendCmd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TurnLeftCmdContext extends CommandContext {
  TurnLeftCmdContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterTurnLeftCmd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitTurnLeftCmd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitTurnLeftCmd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class DropCmdContext extends CommandContext {
  DropCmdContext(CommandContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterDropCmd(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitDropCmd(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitDropCmd(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class PositionCondContext extends ConditionContext {
  PositionContext? position() => getRuleContext<PositionContext>(0);
  PositionCondContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterPositionCond(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitPositionCond(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitPositionCond(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class HasMsgCondContext extends ConditionContext {
  HasMsgCondContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterHasMsgCond(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitHasMsgCond(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitHasMsgCond(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IdentifierCondContext extends ConditionContext {
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  IdentifierCondContext(ConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterIdentifierCond(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitIdentifierCond(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitIdentifierCond(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}