grammar PythonJ_AW;

options {  
  output=AST;
  language=ActionScript;  
}


ID  : ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT: '-'? '0'..'9'+;
NUMBER: INT? '.' '0'..'9'+;

WS  :   ( ' '
        | '\t'
        | '\n'
        | '\r'
        ) {skip();}
;

prog : 'print' INT;