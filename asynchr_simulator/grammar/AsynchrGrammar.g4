grammar AsynchrGrammar;

program
    : context_block behavior_block? query_block? EOF
    ;

// ---------------------- КОНТЕКСТ ----------------------

context_block
    : context_statement+
    ;

context_statement
    : board_def SEMI
    | wall_def SEMI
    | box_def SEMI
    | actor_def SEMI
    ;

board_def
    : 'Доска' EQ NUMBER STAR NUMBER
    ;

wall_def
    : 'Стены' position_group
    ;

box_def
    : 'Коробки' position_group
    ;

actor_def
    : ID EQ position direction
    ;

position_group
    : LPAREN position (COMMA position)* RPAREN
    ;

position
    : LPAREN NUMBER COMMA NUMBER RPAREN
    ;

direction
    : 'ВВЕРХ'
    | 'ВНИЗ'
    | 'ВЛЕВО'
    | 'ВПРАВО'
    ;

// ---------------------- ПОВЕДЕНИЕ ----------------------

behavior_block
    : behavior_statement+
    ;

behavior_statement
    : 'Для' ID EQ LBRACE action_list RBRACE SEMI
    ;

action_list
    : action (SEMI action)*
    ;

action
    : 'ЦИКЛ' LBRACE action_list RBRACE 'ПОКА' condition     #WhileLoop
    | 'ПОВТОРИТЬ' LBRACE action_list RBRACE                 #RepeatForever
    | 'ЕСЛИ' condition 'ТО' action ('ИНАЧЕ' action)?        #Conditional
    | 'ЖДАТЬ' ID                                             #WaitAction
    | command                                                #SimpleAction
    ;

command
    : 'Шаг Вперёд'
    | 'Повернуть Влево'
    | 'Повернуть Вправо'
    | 'Поднять_коробку'
    | 'Опустить_коробку'
    ;

// ---------------------- УСЛОВИЯ ----------------------

condition
    : ID
    | data
    ;

// ---------------------- ЗАПРОС ----------------------

query_block
    : query_statement+
    ;

query_statement
    : QUESTION data
    ;

// ---------------------- ДАННЫЕ ----------------------

data
    : NUMBER
    | STRING
    | position
    | position_group
    ;

// ---------------------- ЛЕКСИКА ----------------------

ID      : [a-zA-Zа-яА-Я_][a-zA-Zа-яА-Я0-9_]* ;
NUMBER  : [0-9]+ ('.' [0-9]+)? ;
STRING  : '"' .*? '"' ;

LPAREN  : '(' ;
RPAREN  : ')' ;
LBRACE  : '{' ;
RBRACE  : '}' ;
COMMA   : ',' ;
SEMI    : ';' ;
EQ      : '=' ;
STAR    : '*' ;
QUESTION: '?' ;

WS      : [ \t\r\n]+ -> skip ;
COMMENT : '//' ~[\r\n]* -> skip ;

