// =====================================================================
//  AsynchrGrammar — чистый параллельный DSL для клеточных агентов
// =====================================================================
grammar AsynchrGrammar;

/* ───────────────────────── ПРОГРАММА ─────────────────────────────── */
program
    : context_block?                 // описание мира
      (set_block)*                   // наборы параллельных потоков
      result_expr?                   // опц. результат
      EOF
    ;

/* ───────────────────────── КОНТЕКСТ ─────────────────────────────── */
context_block       : context_statement+ ;

context_statement
    : board_def SEMI
    | wall_def  SEMI
    | box_def   SEMI
    | actor_def SEMI
    ;

board_def           : 'Доска' EQ NUMBER STAR NUMBER ;
wall_def            : 'Стены'   position_group ;
box_def             : 'Коробки' position_group ;
actor_def           : ID EQ position direction ;

direction           : 'ВВЕРХ' | 'ВНИЗ' | 'ВЛЕВО' | 'ВПРАВО' ;
position_group      : LPAREN position (COMMA position)* RPAREN ;
position            : LPAREN NUMBER COMMA NUMBER RPAREN ;

/* ──────────────── НАБОР ПАРАЛЛЕЛЬНЫХ ПОТОКОВ ─────────────────────── */
set_block
    : 'Набор' (ID EQ)? LPAREN thread (COMMA thread)* RPAREN fold_op? SEMI
    ;

thread              : (ID EQ)? LBRACE action_list RBRACE ;

fold_op
    : PLUS | STAR | 'МИН' | 'МАКС' | 'ДЛИНА' | 'ПЕРВЫЙ' | 'ПОСЛЕДНИЙ' ;

/* ────────── СПИСОК ДЕЙСТВИЙ ───────────────────────── */
action_list
    : action (SEMI action)* ;

action
    : 'ПОКА' condition LBRACE action_list RBRACE                  # WhileLoop
    | 'ПОВТОРИТЬ' LBRACE action_list RBRACE                       # RepeatForever
    | 'ЕСЛИ' condition 'ТО' block ('ИНАЧЕ' block)?                # Conditional
    | command                                                     # SimpleCmd
    ;

block : action | LBRACE action_list RBRACE ;

/* ─────────────────────── КОМАНДЫ ПОЛЯ ────────────────────────────── */
command
    : 'Шаг_Вперед'                        # StepForward
    | 'Повернуть_Влево'                   # TurnLeft
    | 'Повернуть_Вправо'                  # TurnRight
    | 'Поднять_Коробку'                   # PickUp
    | 'Опустить_Коробку'                  # Drop
    | 'ПАУЗА' NUMBER                      # Pause
    | 'ОТПРАВИТЬ' STRING ARROW ID         # Send
    | 'ПОЛУЧИТЬ' (STRING | STAR)          # Receive
    ;

/* ──────────────────────── УСЛОВИЯ ───────────────────────────────── */
condition
    : 'СООБЩЕНИЕ?' (STRING)?              # MessageCondition
    | 'Впереди_Свободно'                  # PathClearCondition
    | 'Есть_Коробка_Впереди'              # BoxAheadCondition
    | 'Несу_Коробку'                      # CarryingBoxCondition
    | 'Коллега_Впереди'                   # ActorAheadCondition
    | ID                                  # IdentifierCondition
    | position                            # PositionCondition
    ;

/* ───────────── РЕЗУЛЬТАТ ПРОГРАММЫ ─────────────────────────────── */
result_expr
    : 'РЕЗУЛЬТАТ' ID SEMI ;

/* ───────────────────────── ЛЕКСЕР ───────────────────────────────── */
ID        : [a-zA-Zа-яА-Я_][a-zA-Zа-яА-Я0-9_]* ;
NUMBER    : [0-9]+ ('.' [0-9]+)? ;
STRING    : '"' (~["\r\n] | '\\"')* '"' ;

LPAREN    : '(' ;
RPAREN    : ')' ;
LBRACE    : '{' ;
RBRACE    : '}' ;
COMMA     : ',' ;
SEMI      : ';' ;
EQ        : '=' ;
PLUS      : '+' ;
STAR      : '*' ;
ARROW     : '->' ;

WS        : [ \t\r\n]+          -> skip ;
COMMENT   : '//' ~[\r\n]*       -> skip ;
