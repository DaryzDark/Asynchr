grammar AsynchrGrammar;

// ---------- ПРОГРАММА ----------
program
    : context_block behavior_block EOF
    ;

// ---------- КОНТЕКСТ ----------
context_block            : context_statement+ ;
context_statement
    : board_def   SEMI
    | wall_def    SEMI
    | box_def     SEMI
    | actor_def   SEMI
    ;

board_def                : 'Доска'   EQ NUMBER STAR NUMBER ;
wall_def                 : 'Стены'   position_group ;
box_def                  : 'Коробки' position_group ;
actor_def                : ID EQ position direction ;

position_group           : LPAREN position (COMMA position)* RPAREN ;
position                 : LPAREN NUMBER COMMA NUMBER RPAREN ;
direction                : 'ВВЕРХ' | 'ВНИЗ' | 'ВЛЕВО' | 'ВПРАВО' ;

// ---------- ПОВЕДЕНИЕ ----------
behavior_block           : behavior_statement+ ;

behavior_statement
    : 'Для' ID EQ LBRACE action_list RBRACE SEMI
      // каждый блок играет роль «независимого потока»
    ;

action_list              : action (SEMI action)* ;

// ── атомарное действие или группа ─────────────────────
action
    : 'ЦИКЛ'      LBRACE action_list RBRACE 'ПОКА' condition    # WhileLoop
    | 'ПОВТОРИТЬ' LBRACE action_list RBRACE                     # RepeatForever
    | 'ЕСЛИ' condition 'ТО' action ('ИНАЧЕ' action)?            # Conditional
    | 'ЖДАТЬ' ID                                                # WaitOther
    | command                                                   # SimpleAction
    ;

// ---------- КОМАНДЫ ----------
command
    : 'Шаг Вперёд'           # StepCmd
    | 'Повернуть Влево'      # TurnLeftCmd
    | 'Повернуть Вправо'     # TurnRightCmd
    | 'Поднять_коробку'      # PickUpCmd
    | 'Опустить_коробку'     # DropCmd
    | 'ПАУЗА' NUMBER         # PauseCmd        // неблокирующая задержка
    | 'ОТПРАВИТЬ' STRING '->' ID              # SendCmd
    | 'ПОЛУЧИТЬ' (STRING | STAR)              # RecvCmd
    ;

// ---------- УСЛОВИЯ ----------
condition
    : 'СООБЩЕНИЕ?'                       # HasMsgCond   // есть ли входящее
    | ID                                 # IdentifierCond
    | position                           # PositionCond
    ;

// ---------- ЛЕКСЕМА ----------
ID      : [a-zA-Zа-яА-Я_][a-zA-Zа-яА-Я0-9_]* ;
NUMBER  : [0-9]+ ('.' [0-9]+)? ;
STRING  : '"' (~["\r\n] | '\\"')* '"' ;      // поддержка кавычек внутри строки

LPAREN  : '(' ; RPAREN  : ')' ;
LBRACE  : '{' ; RBRACE  : '}' ;
COMMA   : ',' ;  SEMI   : ';' ;
EQ      : '=' ;  STAR   : '*' ;

WS      : [ \t\r\n]+          -> skip ;
COMMENT : '//' ~[\r\n]*       -> skip ;
