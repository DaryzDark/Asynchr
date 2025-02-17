grammar AsynchrGrammar;


program
    : (context | set)* QUESTION data EOF
    ;

QUESTION : '?';

context
    : assignment_list
    | board_def
    | wall_def
    | box_def
    | actor_def
    ;

assignment_list
    : (assignment LSLASH SEMI)+
    ;

assignment
    : ID EQ data
    ;

board_def
    : 'Доска' EQ NUMBER STAR NUMBER SEMI
    ;


wall_def
    : 'Стена' EQ position SEMI
    ;

box_def
    : 'Коробка' EQ position SEMI
    ;

actor_def
    : 'Исполнитель' EQ position direction SEMI
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

set
    : name=ID? EQ LBRACE flow_list RBRACE SEMI
    ;

flow_list
    : flow (COMMA flow)*
    ;

flow
    : name=ID? EQ LBRACE action_list RBRACE
    ;

action_list
    : action (SEMI action)*
    ;

action
    : (ID EQ)? command SEMI

    | probability_act

    | conditional_act

    | wait_act

    | pause_act

    | loop_act

    | repeat_act
    ;

probability_act
    : 'ВЕРОЯТНО' prob=NUMBER PERCENT action
    ;

conditional_act
    : 'ЕСЛИ' cond=condition 'ТО' then=action
    ;

wait_act
    : 'ЖДУ' target=ID SEMI
    ;

pause_act
    : 'ПАУЗА' time=NUMBER SEMI
    ;

loop_act
    : 'ЦИКЛ' body=action 'ПОКА' cond=condition SEMI
    ;

repeat_act
    : 'ПОВТОРИТЬ' body=action count=NUMBER SEMI
    ;

condition
    : ID
    | data
    ;

data
    : NUMBER
    | STRING
    | position
    ;

command
    : ID
    | symbol_cmd
    | parallel_cmd
    | sequence_cmd
    | return_cmd
    ;

parallel_cmd
    : 'ВМЕСТЕ' LBRACE action (COMMA action)* RBRACE
    ;

sequence_cmd
    : 'ОЧЕРЕДЬ' LBRACE action (SEMI action)* RBRACE
    ;

return_cmd
    : 'ВОЗВРАТ' (AT DBANG ID)?
    ;

symbol_cmd
    : 'ШАГ'
    | 'ПОВЕРНИ_НАЛЕВО'
    | 'ПОВЕРНИ_НАПРАВО'
    | 'ВЗЯТЬ'
    | 'ОСТАВИТЬ'
    ;


ID
    : [a-zA-Zа-яА-Я_][a-zA-Zа-яА-Я0-9_]*
    ;

NUMBER
    : [0-9]+ ( '.' [0-9]+ )?
    ;

STRING
    : '"' .*? '"'
    ;

LPAREN : '(' ;
RPAREN : ')' ;
LBRACE : '{' ;
RBRACE : '}' ;
COMMA : ',' ;
SEMI : ';' ;
EQ : '=' ;
STAR : '*' ;
PERCENT : '%' ;
AT : '@' ;
DBANG : '!!' ;
LSLASH : '\\\\' ;

WS : [ \t\r\n]+ -> skip ;


