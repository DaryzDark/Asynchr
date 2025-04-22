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
          RULE_action = 13, RULE_command = 14, RULE_condition = 15, RULE_query_block = 16, 
          RULE_query_statement = 17, RULE_data = 18;
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
                   TOKEN_T__18 = 19, TOKEN_T__19 = 20, TOKEN_ID = 21, TOKEN_NUMBER = 22, 
                   TOKEN_STRING = 23, TOKEN_LPAREN = 24, TOKEN_RPAREN = 25, 
                   TOKEN_LBRACE = 26, TOKEN_RBRACE = 27, TOKEN_COMMA = 28, 
                   TOKEN_SEMI = 29, TOKEN_EQ = 30, TOKEN_STAR = 31, TOKEN_QUESTION = 32, 
                   TOKEN_WS = 33, TOKEN_COMMENT = 34;

  @override
  final List<String> ruleNames = [
    'program', 'context_block', 'context_statement', 'board_def', 'wall_def', 
    'box_def', 'actor_def', 'position_group', 'position', 'direction', 'behavior_block', 
    'behavior_statement', 'action_list', 'action', 'command', 'condition', 
    'query_block', 'query_statement', 'data'
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
      null, null, null, "'('", "')'", "'{'", "'}'", "','", "';'", "'='", 
      "'*'", "'?'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, "ID", 
      "NUMBER", "STRING", "LPAREN", "RPAREN", "LBRACE", "RBRACE", "COMMA", 
      "SEMI", "EQ", "STAR", "QUESTION", "WS", "COMMENT"
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
      state = 38;
      context_block();
      state = 40;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__7) {
        state = 39;
        behavior_block();
      }

      state = 43;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_QUESTION) {
        state = 42;
        query_block();
      }

      state = 45;
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
      state = 48; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 47;
        context_statement();
        state = 50; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2097166) != 0));
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
      state = 64;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 1);
        state = 52;
        board_def();
        state = 53;
        match(TOKEN_SEMI);
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 2);
        state = 55;
        wall_def();
        state = 56;
        match(TOKEN_SEMI);
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 58;
        box_def();
        state = 59;
        match(TOKEN_SEMI);
        break;
      case TOKEN_ID:
        enterOuterAlt(_localctx, 4);
        state = 61;
        actor_def();
        state = 62;
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
      state = 66;
      match(TOKEN_T__0);
      state = 67;
      match(TOKEN_EQ);
      state = 68;
      match(TOKEN_NUMBER);
      state = 69;
      match(TOKEN_STAR);
      state = 70;
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
      state = 72;
      match(TOKEN_T__1);
      state = 73;
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
      state = 75;
      match(TOKEN_T__2);
      state = 76;
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
      state = 78;
      match(TOKEN_ID);
      state = 79;
      match(TOKEN_EQ);
      state = 80;
      position();
      state = 81;
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
      state = 83;
      match(TOKEN_LPAREN);
      state = 84;
      position();
      state = 89;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 85;
        match(TOKEN_COMMA);
        state = 86;
        position();
        state = 91;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 92;
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
      state = 94;
      match(TOKEN_LPAREN);
      state = 95;
      match(TOKEN_NUMBER);
      state = 96;
      match(TOKEN_COMMA);
      state = 97;
      match(TOKEN_NUMBER);
      state = 98;
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
      state = 100;
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
      state = 103; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 102;
        behavior_statement();
        state = 105; 
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
      state = 107;
      match(TOKEN_T__7);
      state = 108;
      match(TOKEN_ID);
      state = 109;
      match(TOKEN_EQ);
      state = 110;
      match(TOKEN_LBRACE);
      state = 111;
      action_list();
      state = 112;
      match(TOKEN_RBRACE);
      state = 113;
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
      state = 115;
      action_();
      state = 120;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_SEMI) {
        state = 116;
        match(TOKEN_SEMI);
        state = 117;
        action_();
        state = 122;
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
      state = 146;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__8:
        _localctx = WhileLoopContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 123;
        match(TOKEN_T__8);
        state = 124;
        match(TOKEN_LBRACE);
        state = 125;
        action_list();
        state = 126;
        match(TOKEN_RBRACE);
        state = 127;
        match(TOKEN_T__9);
        state = 128;
        condition();
        break;
      case TOKEN_T__10:
        _localctx = RepeatForeverContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 130;
        match(TOKEN_T__10);
        state = 131;
        match(TOKEN_LBRACE);
        state = 132;
        action_list();
        state = 133;
        match(TOKEN_RBRACE);
        break;
      case TOKEN_T__11:
        _localctx = ConditionalContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 135;
        match(TOKEN_T__11);
        state = 136;
        condition();
        state = 137;
        match(TOKEN_T__12);
        state = 138;
        action_();
        state = 141;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
        case 1:
          state = 139;
          match(TOKEN_T__13);
          state = 140;
          action_();
          break;
        }
        break;
      case TOKEN_T__14:
        _localctx = WaitActionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 143;
        match(TOKEN_T__14);
        state = 144;
        match(TOKEN_ID);
        break;
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
      case TOKEN_T__19:
        _localctx = SimpleActionContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 145;
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
      enterOuterAlt(_localctx, 1);
      state = 148;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2031616) != 0))) {
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

  ConditionContext condition() {
    dynamic _localctx = ConditionContext(context, state);
    enterRule(_localctx, 30, RULE_condition);
    try {
      state = 152;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_ID:
        enterOuterAlt(_localctx, 1);
        state = 150;
        match(TOKEN_ID);
        break;
      case TOKEN_NUMBER:
      case TOKEN_STRING:
      case TOKEN_LPAREN:
        enterOuterAlt(_localctx, 2);
        state = 151;
        data();
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

  Query_blockContext query_block() {
    dynamic _localctx = Query_blockContext(context, state);
    enterRule(_localctx, 32, RULE_query_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 155; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 154;
        query_statement();
        state = 157; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_QUESTION);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Query_statementContext query_statement() {
    dynamic _localctx = Query_statementContext(context, state);
    enterRule(_localctx, 34, RULE_query_statement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 159;
      match(TOKEN_QUESTION);
      state = 160;
      data();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DataContext data() {
    dynamic _localctx = DataContext(context, state);
    enterRule(_localctx, 36, RULE_data);
    try {
      state = 166;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 162;
        match(TOKEN_NUMBER);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 163;
        match(TOKEN_STRING);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 164;
        position();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 165;
        position_group();
        break;
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
      4,1,34,169,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,1,0,1,0,3,0,41,8,0,
      1,0,3,0,44,8,0,1,0,1,0,1,1,4,1,49,8,1,11,1,12,1,50,1,2,1,2,1,2,1,2,
      1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,65,8,2,1,3,1,3,1,3,1,3,1,3,1,3,
      1,4,1,4,1,4,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,7,1,7,1,7,1,7,5,7,88,
      8,7,10,7,12,7,91,9,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,10,
      4,10,104,8,10,11,10,12,10,105,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,
      11,1,12,1,12,1,12,5,12,119,8,12,10,12,12,12,122,9,12,1,13,1,13,1,13,
      1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,
      13,1,13,3,13,142,8,13,1,13,1,13,1,13,3,13,147,8,13,1,14,1,14,1,15,
      1,15,3,15,153,8,15,1,16,4,16,156,8,16,11,16,12,16,157,1,17,1,17,1,
      17,1,18,1,18,1,18,1,18,3,18,167,8,18,1,18,0,0,19,0,2,4,6,8,10,12,14,
      16,18,20,22,24,26,28,30,32,34,36,0,2,1,0,4,7,1,0,16,20,168,0,38,1,
      0,0,0,2,48,1,0,0,0,4,64,1,0,0,0,6,66,1,0,0,0,8,72,1,0,0,0,10,75,1,
      0,0,0,12,78,1,0,0,0,14,83,1,0,0,0,16,94,1,0,0,0,18,100,1,0,0,0,20,
      103,1,0,0,0,22,107,1,0,0,0,24,115,1,0,0,0,26,146,1,0,0,0,28,148,1,
      0,0,0,30,152,1,0,0,0,32,155,1,0,0,0,34,159,1,0,0,0,36,166,1,0,0,0,
      38,40,3,2,1,0,39,41,3,20,10,0,40,39,1,0,0,0,40,41,1,0,0,0,41,43,1,
      0,0,0,42,44,3,32,16,0,43,42,1,0,0,0,43,44,1,0,0,0,44,45,1,0,0,0,45,
      46,5,0,0,1,46,1,1,0,0,0,47,49,3,4,2,0,48,47,1,0,0,0,49,50,1,0,0,0,
      50,48,1,0,0,0,50,51,1,0,0,0,51,3,1,0,0,0,52,53,3,6,3,0,53,54,5,29,
      0,0,54,65,1,0,0,0,55,56,3,8,4,0,56,57,5,29,0,0,57,65,1,0,0,0,58,59,
      3,10,5,0,59,60,5,29,0,0,60,65,1,0,0,0,61,62,3,12,6,0,62,63,5,29,0,
      0,63,65,1,0,0,0,64,52,1,0,0,0,64,55,1,0,0,0,64,58,1,0,0,0,64,61,1,
      0,0,0,65,5,1,0,0,0,66,67,5,1,0,0,67,68,5,30,0,0,68,69,5,22,0,0,69,
      70,5,31,0,0,70,71,5,22,0,0,71,7,1,0,0,0,72,73,5,2,0,0,73,74,3,14,7,
      0,74,9,1,0,0,0,75,76,5,3,0,0,76,77,3,14,7,0,77,11,1,0,0,0,78,79,5,
      21,0,0,79,80,5,30,0,0,80,81,3,16,8,0,81,82,3,18,9,0,82,13,1,0,0,0,
      83,84,5,24,0,0,84,89,3,16,8,0,85,86,5,28,0,0,86,88,3,16,8,0,87,85,
      1,0,0,0,88,91,1,0,0,0,89,87,1,0,0,0,89,90,1,0,0,0,90,92,1,0,0,0,91,
      89,1,0,0,0,92,93,5,25,0,0,93,15,1,0,0,0,94,95,5,24,0,0,95,96,5,22,
      0,0,96,97,5,28,0,0,97,98,5,22,0,0,98,99,5,25,0,0,99,17,1,0,0,0,100,
      101,7,0,0,0,101,19,1,0,0,0,102,104,3,22,11,0,103,102,1,0,0,0,104,105,
      1,0,0,0,105,103,1,0,0,0,105,106,1,0,0,0,106,21,1,0,0,0,107,108,5,8,
      0,0,108,109,5,21,0,0,109,110,5,30,0,0,110,111,5,26,0,0,111,112,3,24,
      12,0,112,113,5,27,0,0,113,114,5,29,0,0,114,23,1,0,0,0,115,120,3,26,
      13,0,116,117,5,29,0,0,117,119,3,26,13,0,118,116,1,0,0,0,119,122,1,
      0,0,0,120,118,1,0,0,0,120,121,1,0,0,0,121,25,1,0,0,0,122,120,1,0,0,
      0,123,124,5,9,0,0,124,125,5,26,0,0,125,126,3,24,12,0,126,127,5,27,
      0,0,127,128,5,10,0,0,128,129,3,30,15,0,129,147,1,0,0,0,130,131,5,11,
      0,0,131,132,5,26,0,0,132,133,3,24,12,0,133,134,5,27,0,0,134,147,1,
      0,0,0,135,136,5,12,0,0,136,137,3,30,15,0,137,138,5,13,0,0,138,141,
      3,26,13,0,139,140,5,14,0,0,140,142,3,26,13,0,141,139,1,0,0,0,141,142,
      1,0,0,0,142,147,1,0,0,0,143,144,5,15,0,0,144,147,5,21,0,0,145,147,
      3,28,14,0,146,123,1,0,0,0,146,130,1,0,0,0,146,135,1,0,0,0,146,143,
      1,0,0,0,146,145,1,0,0,0,147,27,1,0,0,0,148,149,7,1,0,0,149,29,1,0,
      0,0,150,153,5,21,0,0,151,153,3,36,18,0,152,150,1,0,0,0,152,151,1,0,
      0,0,153,31,1,0,0,0,154,156,3,34,17,0,155,154,1,0,0,0,156,157,1,0,0,
      0,157,155,1,0,0,0,157,158,1,0,0,0,158,33,1,0,0,0,159,160,5,32,0,0,
      160,161,3,36,18,0,161,35,1,0,0,0,162,167,5,22,0,0,163,167,5,23,0,0,
      164,167,3,16,8,0,165,167,3,14,7,0,166,162,1,0,0,0,166,163,1,0,0,0,
      166,164,1,0,0,0,166,165,1,0,0,0,167,37,1,0,0,0,12,40,43,50,64,89,105,
      120,141,146,152,157,166
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ProgramContext extends ParserRuleContext {
  Context_blockContext? context_block() => getRuleContext<Context_blockContext>(0);
  TerminalNode? EOF() => getToken(AsynchrGrammarParser.TOKEN_EOF, 0);
  Behavior_blockContext? behavior_block() => getRuleContext<Behavior_blockContext>(0);
  Query_blockContext? query_block() => getRuleContext<Query_blockContext>(0);
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
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterCommand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitCommand(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitCommand(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ConditionContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  DataContext? data() => getRuleContext<DataContext>(0);
  ConditionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_condition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitCondition(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitCondition(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Query_blockContext extends ParserRuleContext {
  List<Query_statementContext> query_statements() => getRuleContexts<Query_statementContext>();
  Query_statementContext? query_statement(int i) => getRuleContext<Query_statementContext>(i);
  Query_blockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_query_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterQuery_block(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitQuery_block(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitQuery_block(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Query_statementContext extends ParserRuleContext {
  TerminalNode? QUESTION() => getToken(AsynchrGrammarParser.TOKEN_QUESTION, 0);
  DataContext? data() => getRuleContext<DataContext>(0);
  Query_statementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_query_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterQuery_statement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitQuery_statement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitQuery_statement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class DataContext extends ParserRuleContext {
  TerminalNode? NUMBER() => getToken(AsynchrGrammarParser.TOKEN_NUMBER, 0);
  TerminalNode? STRING() => getToken(AsynchrGrammarParser.TOKEN_STRING, 0);
  PositionContext? position() => getRuleContext<PositionContext>(0);
  Position_groupContext? position_group() => getRuleContext<Position_groupContext>(0);
  DataContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_data;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterData(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitData(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitData(this);
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
}

class WaitActionContext extends ActionContext {
  TerminalNode? ID() => getToken(AsynchrGrammarParser.TOKEN_ID, 0);
  WaitActionContext(ActionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.enterWaitAction(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is AsynchrGrammarListener) listener.exitWaitAction(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AsynchrGrammarVisitor<T>) {
     return visitor.visitWaitAction(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}