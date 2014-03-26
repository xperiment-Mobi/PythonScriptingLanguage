grammar PythonJ_AW;

options {  
  output=AST;
  language=ActionScript;  
}

tokens
{
  EXP;
  STATEMENTS;
  LOOKUP;
}

@lexer::header {
  package pythonj;
}

@parser::header {
  package pythonj;
}

@lexer::members 
{
  private var indents:Array = [];
  private var tokens:Array = [];
  private var openBrace:int = 0;
  
  //@Override
  //public void emit(Token t) {
  //  state.token = t;
  //  tokens.offer(t);
  //}
  @Override
  public function emit(Token t):void {
    state.token = t;
    tokens.push(t);
  }

  @Override
  public function nextToken():void {
    super.nextToken();
    return tokens.length==0 ? getEOFToken() : tokens[0];
  }
  
}


ID  : ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT: '-'? '0'..'9'+;
NUMBER: INT? '.' '0'..'9'+;


STRING  
 : '"' ('""' | ~('\r' | '\n' | '"'))* '"'
   {
     String s = getText().replace("\\n", "\n").replace("\\r", "\r").replace("\\t", "\t");
     setText(s.substring(1, s.length()-1).replace("\"\"", "\""));
   }
 ;


prog  : EOL* block;

block : stat*
  ;
  
stat  : expr EOL
  | ID '=' expr EOL
  | for_stmt 
  | if_stmt 
  | while_stmt 
  ;


for_stmt  : 'for' item=ID 'in' items=expr ':' EOL INDENT actions=block DEDENT EOL* 
-> ^('for' ID expr block)
  ;

if_stmt : 'if' expr ':' EOL INDENT block DEDENT EOL* ('elif' expr ':'EOL INDENT block DEDENT EOL*)* ('else' ':' EOL INDENT block DEDENT EOL*)?
  ;

while_stmt: 'while' '(' condition=expr ')' ':' EOL INDENT actions=block DEDENT EOL* -> ^('while' expr block);


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
  | lookup
  ;

lookup : ID tail -> ^(ID tail);

tail : '.' ID params;

params : '(' expr? (',' expr)* ')';


Skip
 : Spaces  {skip();}
 | Comment {skip();}
 ;


EOL
 : ('\r'? '\n' | '\r') Spaces?
   {
     var next:int= input.LA(1);
     
     if(openBrace > 0|| next == '\r' || next == '\n' || next == '#') {
       // if we're inside a list or on a blank line, ignore all indents, dedents and line breaks
       return;
     }
     else {
       emit(new CommonToken(EOL, "EOL"));

       var indent:int= $Spaces == null ? 0: $Spaces.text.length();
       var previous:int= indents.length==0 ? 0: indents[0];

       if(indent == previous) {
         // skip indents of the same size as the present indent-size
         return; 
       }
       else if(indent > previous) {
         indents.push(indent);
         emit(new CommonToken(INDENT, "INDENT"));
       }
       else {
         while(!indents.length==0 && indents[0] > indent) {
           emit(new CommonToken(DEDENT, "DEDENT"));
           indents.pop();
         }
       }
     }
   }
 ;
 

/* fragments */
fragment Spaces
 : (' ' | '\t')+ {setText(getText().replace("\t", "    "));}
 ;

fragment Comment
 : '#' ~('\r' | '\n')*
 ;

fragment DEDENT : ;
fragment INDENT : ;
