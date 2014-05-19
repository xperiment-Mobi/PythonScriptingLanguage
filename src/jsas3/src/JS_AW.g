grammar JS_AW;

options {  
  output=AST;
  language=ActionScript; 
}
tokens {
  BLOCK;
  RETURN;
  STATEMENTS;
  ASSIGNMENT;
  FUNC_CALL;
  EXP;
  EXP_LIST;
  ID_LIST;
  IF;
  TERNARY;
  UNARY_MIN;
  UNARY_INCR;
  UNARY_DECR;
  NEGATE;
  FUNCTION;
  INDEXES;
  LIST;
  LOOKUP;
}



prog
  :  block EOF -> block
  ;

block
  :  (statement)*
     -> ^(BLOCK ^(STATEMENTS statement*))
  ;

statement
  :  assignment ';'   -> assignment
  |  functionCall ';' -> functionCall
  |  ifStatement
  |  forStatement
  |  whileStatement
  ;

assignment
  :  Var? Identifier indexes? '=' expression 
     -> ^(ASSIGNMENT Identifier indexes? expression)
  ;

functionCall
  :  Identifier '.' Identifier '(' exprList? ')' -> ^(FUNC_CALL Identifier Identifier exprList?)
  |  Println '(' expression? ')'  -> ^(FUNC_CALL Println expression?)
  |  Print '(' expression ')'     -> ^(FUNC_CALL Print expression)
  ;

ifStatement
  :  ifStat elseIfStat* elseStat? -> ^(IF ifStat elseIfStat* elseStat?)
  ;

ifStat
  :  If OParen expression CParen OBrace block CBrace -> ^(EXP expression block)
  ;

elseIfStat
  :  Else If OParen expression CParen OBrace block CBrace -> ^(EXP expression block)
  ;

elseStat
  :  Else OBrace block CBrace -> ^(EXP block)
  ;


forStatement
  :  For OParen Var Identifier In expression CParen OBrace block CBrace
     -> ^(For Identifier expression  block)
  ;

whileStatement
  :  While OParen expression CParen OBrace block CBrace  -> ^(While expression block)
  ;

idList
  :  Identifier (',' Identifier)* -> ^(ID_LIST Identifier+)
  ;

exprList
  :  expression (',' expression)* -> ^(EXP_LIST expression+)
  ;

expression
  :  condExpr
  ;

condExpr
  :  (orExpr -> orExpr) 
     ( '?' a=expression ':' b=expression -> ^(TERNARY orExpr $a $b)
     )?
  ;

orExpr
  :  andExpr ('||'^ andExpr)*
  ;

andExpr
  :  equExpr ('&&'^ equExpr)*
  ;

equExpr
  :  relExpr (('==' | '!=')^ relExpr)*
  ;

relExpr
  :  addExpr (('>=' | '<=' | '>' | '<')^ addExpr)*
  ;

addExpr
  :  mulExpr (('+' | '-')^ mulExpr)*
  ;

mulExpr
  :  powExpr (('*' | '/' | '%')^ powExpr)*
  ;

powExpr
  :  unaryExpr ('^'^ unaryExpr)*
  ;
  
unaryExpr
  :  '-' atom -> ^(UNARY_MIN atom)
  |  '!' atom -> ^(NEGATE atom)
  |  '++' atom -> ^(UNARY_INCR atom)
  |  '--' atom -> ^(UNARY_DECR atom)
  |  atom
  ;

atom
  : NUMBER
  | Bool 
  | Null 
  | lookup
  ;

list
  :  '[' exprList? ']' -> ^(LIST exprList?)
  ;

lookup
  :  functionCall indexes?       -> ^(LOOKUP functionCall indexes?)
  |  list indexes?               -> ^(LOOKUP list indexes?)
  |  Identifier indexes?         -> ^(LOOKUP Identifier indexes?)
  |  STRING indexes?             -> ^(LOOKUP STRING indexes?)
  |  '(' expression ')' indexes? -> ^(LOOKUP expression indexes?)
  |  Identifier '.' Identifier	 -> ^(LOOKUP Identifier Identifier)
  ;

indexes
  :  ('[' expression ']')+ -> ^(INDEXES expression+)
  ;

Println  : 'println';
Print    : 'print';
Assert   : 'assert';
Size     : 'size';
Def      : 'def';
If       : 'if';
Else     : 'else';
Return   : 'return';
For      : 'for';
While    : 'while';
To       : 'to';
Do       : 'do';
End      : 'end';
In       : 'in';
Null     : 'null';

Or       : '||';
And      : '&&';
Equals   : '==';
NEquals  : '!=';
GTEquals : '>=';
LTEquals : '<=';
Pow      : '^';
Excl     : '!';
GT       : '>';
LT       : '<';
Add      : '+';
Subtract : '-';
Multiply : '*';
Divide   : '/';
Modulus  : '%';
OBrace   : '{';
CBrace   : '}';
OBracket : '[';
CBracket : ']';
OParen   : '(';
CParen   : ')';
SColon   : ';';
Assign   : '=';
Comma    : ',';
QMark    : '?';
Colon    : ':';
Var	:  'var';
Incr	: '++';
Decr	: '--';

Bool
  :  'true' 
  |  'false'
  ;

NUMBER
  :  Int ('.' Digit*)?
  ;

Identifier
  :  ('a'..'z' | 'A'..'Z' | '_') ('a'..'z' | 'A'..'Z' | '_' | Digit)*
  ;

STRING
@after {
  text = (text.substring(1, text.length-1));
}
  :  '"'  (~('"' | '\\')  | '\\' ('\\' | '"'))* '"' 
  |  '\'' (~('\'' | '\\') | '\\' ('\\' | '\''))* '\''
  ;
  /*
STRING
: '"' ~('\\'|'"')* '"'
	;
*/
Comment
  :  '//' ~('\r' | '\n')* {skip();}
  |  '/*' .* '*/'         {skip();}
  ;

Space
  :  (' ' | '\t' | '\r' | '\n' | '\u000C') {skip();}
  ;

fragment Int
  :  '1'..'9' Digit*
  |  '0'
  ;
  
fragment Digit 
  :  '0'..'9'
  ;
  


