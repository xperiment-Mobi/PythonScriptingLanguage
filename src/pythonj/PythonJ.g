grammar PythonJ;

options {  
  output=AST;  
}

tokens
{
  EXP;
  STATEMENTS;
}

@lexer::header {
  package pythonj;
  import java.util.Queue;
  import java.util.LinkedList;
}

@parser::header {
  package pythonj;
}

@lexer::members 
{
  private Stack<Integer> indents = new Stack<Integer>();
  private Queue<Token> tokens = new LinkedList<Token>();
  private int openBrace = 0;
  
  @Override
  public void emit(Token t) {
    state.token = t;
    tokens.offer(t);
  }

  @Override
  public Token nextToken() {
    super.nextToken();
    return tokens.isEmpty() ? getEOFToken() : tokens.poll();
  }
  
}


ID  : ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT: '-'? '0'..'9'+;
NUMBER: INT? '.' '0'..'9'+; 


STRING  
  :  '"'  (~('"' | '\\')  | '\\' .)* '"'   
  |  '\'' (~('\'' | '\\') | '\\' .)* '\''   
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
  ;


Skip
 : Spaces  {skip();}
 | Comment {skip();}
 ;


EOL
 : ('\r'? '\n' | '\r') Spaces?
   {
     int next = input.LA(1);
     
     if(openBrace > 0 || next == '\r' || next == '\n' || next == '#') {
       // if we're inside a list or on a blank line, ignore all indents, dedents and line breaks
       skip();
     }
     else {
       emit(new CommonToken(EOL, "EOL"));

       int indent = $Spaces == null ? 0 : $Spaces.text.length();
       int previous = indents.isEmpty() ? 0 : indents.peek();

       if(indent == previous) {
         // skip indents of the same size as the present indent-size
         skip();
       }
       else if(indent > previous) {
         indents.push(indent);
         emit(new CommonToken(INDENT, "INDENT"));
       }
       else {
         while(!indents.isEmpty() && indents.peek() > indent) {
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
