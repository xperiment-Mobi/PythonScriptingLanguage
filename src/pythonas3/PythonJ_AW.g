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
        ) {$channel=HIDDEN; skip();}
        ;


STRING  
 : '"' ('""' | ~('\r' | '\n' | '"'))* '"'
   {
     var s:String = super.text.replace("\\n", "\n").replace("\\r", "\r").replace("\\t", "\t");
     super.text = (s.substring(1, s.length-1).replace("\"\"", "\""));
   }
 ;


prog  : block;

block : stat*;

stat  : expr
  | ID '=' expr
  | while_stmt
  | if_stmt
  | for_stmt
  ;
  
  
for_stmt 
	:	'for' ID 'in' expr '{' block '}';
	  
if_stmt : 'if' expr '{' block '}' ('elif' expr '{' block '}')* ('else' '{' block '}')?
  ;
  
while_stmt: 'while' '(' condition=expr ')' '{' actions=block '}' -> 'while' expr block;
  
expr : orExpr
    | printExpr
    
  ;
  
 

printExpr : 'print' expr;

orExpr
 : andExpr ('or' ^ andExpr)*
 ;

andExpr
 : relationExpr ('and' ^ relationExpr)*
 ;
 
relationExpr
  : addExpr (('>'^|'<'^|'>='^|'<='^| '!='^ | '=='^ | 'contains'^) addExpr)*
  ;
  
addExpr
  : multExpr (('+'^|'-'^|'%'^) multExpr)*
  ;

multExpr
  : atom (('*'^|'/'^) atom) * 
  ;

atom  : INT
  | ID
  | '(' expr ')' -> expr
  | NUMBER
  | STRING
  ;
  
  

