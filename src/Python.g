grammar Python;

options {
  language=Python;
  output=AST;  
}

tokens
{
  EXP;
  STATEMENTS;
}


@lexer::members 
{

 
  tokens = []
  indents = []
  openBrace = 0
  

  def emit(self, t):
    self._state.token = t;
    self.tokens.append(t);
  

  
  def nextToken(self):
    print "In next token"
    try:
      super(Lexer,self).nextToken()
    except Exception, e:
      print e     
    return len(self.tokens) == 0 and EOF_TOKEN or self.tokens.pop(0);
  
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

block : stat* -> ^(STATEMENTS stat+)
  ;
  
stat  : expr EOL
  | ID '=' expr  EOL
  | for_stmt 
  | if_stmt 
  | while_stmt 
  ;


for_stmt  : 'for' item=ID 'in' items=expr ':' EOL INDENT actions=block DEDENT EOL* 
  ;

if_stmt : 'if' expr ':' EOL INDENT block DEDENT EOL* ('elif' expr ':'EOL INDENT block DEDENT EOL*)* ('else' ':' EOL INDENT block DEDENT EOL*)?
  ;

while_stmt: 'while' '(' condition=expr ')' ':' EOL INDENT actions=block DEDENT EOL* -> ^('while' expr block);


expr : orExpr
  ;

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
 : Spaces  {self.skip();}
 | Comment {self.skip();}
 ;


EOL
 : ('\r'? '\n' | '\r') Spaces?
   {
     next = input.LA(1)


     if(openBrace > 0 or next == '\r' or next == '\n' or next == '#'):
       self.skip();

     else:
       self.emit(CommonToken(EOL, "EOL"));

       indent = 0
       if($Spaces):
        indent = len($Spaces.text)
       
       previous = 0
       if len(self.indents) > 0:
        previous = self.indents[0]
       

       if(indent == previous):
         self.skip();

       elif(indent > previous):
         self.indents.insert(0, indent);
         self.emit(CommonToken(INDENT, "INDENT"));

       else:
         while(len(self.indents) > 0 and self.indents[0] > indent):
           self.emit(CommonToken(DEDENT, "DEDENT"));
           self.indents.pop(0);
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
