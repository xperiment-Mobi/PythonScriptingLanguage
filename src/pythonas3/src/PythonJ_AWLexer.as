// $ANTLR 3.5 C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g 2014-05-13 14:14:55
package {
import org.antlr.runtime.*;

    public class PythonJ_AWLexer extends Lexer {
        public static const EOF:int=-1;
        public static const T__14:int=14;
        public static const T__15:int=15;
        public static const T__16:int=16;
        public static const T__17:int=17;
        public static const T__18:int=18;
        public static const T__19:int=19;
        public static const T__20:int=20;
        public static const T__21:int=21;
        public static const T__22:int=22;
        public static const T__23:int=23;
        public static const T__24:int=24;
        public static const T__25:int=25;
        public static const T__26:int=26;
        public static const T__27:int=27;
        public static const T__28:int=28;
        public static const T__29:int=29;
        public static const T__30:int=30;
        public static const T__31:int=31;
        public static const T__32:int=32;
        public static const T__33:int=33;
        public static const T__34:int=34;
        public static const T__35:int=35;
        public static const T__36:int=36;
        public static const T__37:int=37;
        public static const T__38:int=38;
        public static const T__39:int=39;
        public static const T__40:int=40;
        public static const T__41:int=41;
        public static const Comment:int=4;
        public static const DEDENT:int=5;
        public static const EOL:int=6;
        public static const ID:int=7;
        public static const INDENT:int=8;
        public static const INT:int=9;
        public static const NUMBER:int=10;
        public static const STRING:int=11;
        public static const Skip:int=12;
        public static const Spaces:int=13;

          private var indents:Array = [];
          private var tokens:Array = [];
          private var openBrace:int = 0;
          
          //@Override
        //  public void emit(Token t) {
        //    state.token = t;
        //    tokens.offer(t);
        //  }
         
          public function addToken(t:Token):void {
          	state.token = t;
          	tokens.push(t);
          }
          override public function nextToken():Token {
            super.nextToken();
            return tokens.length==0 ? TokenConstants.EOF_TOKEN : tokens[0];
          }
          


        // delegates
        // delegators

        public function PythonJ_AWLexer(input:CharStream = null, state:RecognizerSharedState = null) {
            super(input, state);
            dfa13 = new DFA(this, 13,
                        "1:1: Tokens : ( T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | ID | INT | NUMBER | STRING | Skip | EOL );",
                        DFA13_eot, DFA13_eof, DFA13_min,
                        DFA13_max, DFA13_accept, DFA13_special,
                        DFA13_transition);

        }
        public override function get grammarFileName():String { return "C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g"; }

        // $ANTLR start T__14
        public final function mT__14():void {
            try {
                var _type:int = T__14;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:29:7: ( '!=' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:29:9: '!='
                {
                matchString("!="); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__14

        // $ANTLR start T__15
        public final function mT__15():void {
            try {
                var _type:int = T__15;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:30:7: ( '%' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:30:9: '%'
                {
                match(37); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__15

        // $ANTLR start T__16
        public final function mT__16():void {
            try {
                var _type:int = T__16;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:31:7: ( '(' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:31:9: '('
                {
                match(40); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__16

        // $ANTLR start T__17
        public final function mT__17():void {
            try {
                var _type:int = T__17;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:32:7: ( ')' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:32:9: ')'
                {
                match(41); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__17

        // $ANTLR start T__18
        public final function mT__18():void {
            try {
                var _type:int = T__18;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:33:7: ( '*' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:33:9: '*'
                {
                match(42); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__18

        // $ANTLR start T__19
        public final function mT__19():void {
            try {
                var _type:int = T__19;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:34:7: ( '+' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:34:9: '+'
                {
                match(43); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__19

        // $ANTLR start T__20
        public final function mT__20():void {
            try {
                var _type:int = T__20;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:35:7: ( ',' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:35:9: ','
                {
                match(44); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__20

        // $ANTLR start T__21
        public final function mT__21():void {
            try {
                var _type:int = T__21;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:36:7: ( '-' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:36:9: '-'
                {
                match(45); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__21

        // $ANTLR start T__22
        public final function mT__22():void {
            try {
                var _type:int = T__22;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:37:7: ( '.' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:37:9: '.'
                {
                match(46); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__22

        // $ANTLR start T__23
        public final function mT__23():void {
            try {
                var _type:int = T__23;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:38:7: ( '/' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:38:9: '/'
                {
                match(47); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__23

        // $ANTLR start T__24
        public final function mT__24():void {
            try {
                var _type:int = T__24;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:39:7: ( '<' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:39:9: '<'
                {
                match(60); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__24

        // $ANTLR start T__25
        public final function mT__25():void {
            try {
                var _type:int = T__25;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:40:7: ( '<=' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:40:9: '<='
                {
                matchString("<="); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__25

        // $ANTLR start T__26
        public final function mT__26():void {
            try {
                var _type:int = T__26;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:41:7: ( '=' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:41:9: '='
                {
                match(61); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__26

        // $ANTLR start T__27
        public final function mT__27():void {
            try {
                var _type:int = T__27;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:42:7: ( '==' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:42:9: '=='
                {
                matchString("=="); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__27

        // $ANTLR start T__28
        public final function mT__28():void {
            try {
                var _type:int = T__28;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:43:7: ( '>' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:43:9: '>'
                {
                match(62); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__28

        // $ANTLR start T__29
        public final function mT__29():void {
            try {
                var _type:int = T__29;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:44:7: ( '>=' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:44:9: '>='
                {
                matchString(">="); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__29

        // $ANTLR start T__30
        public final function mT__30():void {
            try {
                var _type:int = T__30;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:45:7: ( 'and' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:45:9: 'and'
                {
                matchString("and"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__30

        // $ANTLR start T__31
        public final function mT__31():void {
            try {
                var _type:int = T__31;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:46:7: ( 'contains' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:46:9: 'contains'
                {
                matchString("contains"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__31

        // $ANTLR start T__32
        public final function mT__32():void {
            try {
                var _type:int = T__32;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:47:7: ( 'elif' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:47:9: 'elif'
                {
                matchString("elif"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__32

        // $ANTLR start T__33
        public final function mT__33():void {
            try {
                var _type:int = T__33;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:48:7: ( 'else' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:48:9: 'else'
                {
                matchString("else"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__33

        // $ANTLR start T__34
        public final function mT__34():void {
            try {
                var _type:int = T__34;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:49:7: ( 'for' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:49:9: 'for'
                {
                matchString("for"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__34

        // $ANTLR start T__35
        public final function mT__35():void {
            try {
                var _type:int = T__35;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:50:7: ( 'if' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:50:9: 'if'
                {
                matchString("if"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__35

        // $ANTLR start T__36
        public final function mT__36():void {
            try {
                var _type:int = T__36;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:51:7: ( 'in' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:51:9: 'in'
                {
                matchString("in"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__36

        // $ANTLR start T__37
        public final function mT__37():void {
            try {
                var _type:int = T__37;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:52:7: ( 'or' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:52:9: 'or'
                {
                matchString("or"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__37

        // $ANTLR start T__38
        public final function mT__38():void {
            try {
                var _type:int = T__38;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:53:7: ( 'print' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:53:9: 'print'
                {
                matchString("print"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__38

        // $ANTLR start T__39
        public final function mT__39():void {
            try {
                var _type:int = T__39;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:54:7: ( 'while' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:54:9: 'while'
                {
                matchString("while"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__39

        // $ANTLR start T__40
        public final function mT__40():void {
            try {
                var _type:int = T__40;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:55:7: ( '{' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:55:9: '{'
                {
                match(123); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__40

        // $ANTLR start T__41
        public final function mT__41():void {
            try {
                var _type:int = T__41;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:56:7: ( '}' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:56:9: '}'
                {
                match(125); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__41

        // $ANTLR start ID
        public final function mID():void {
            try {
                var _type:int = ID;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:31:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:31:7: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
                {
                if ( (input.LA(1) >= 65 && input.LA(1) <= 90)||input.LA(1)==95||(input.LA(1) >= 97 && input.LA(1) <= 122) ) {
                    input.consume();
                }
                else {
                    throw recover(new MismatchedSetException(null,input));

                }


                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:31:31: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
                loop1:
                do {
                    var alt1:int=2;
                    var LA1_0:int = input.LA(1);

                    if ( ((LA1_0 >= 48 && LA1_0 <= 57)||(LA1_0 >= 65 && LA1_0 <= 90)||LA1_0==95||(LA1_0 >= 97 && LA1_0 <= 122)) ) {
                        alt1=1;
                    }


                    switch (alt1) {
                	case 1 :
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:
                	    {
                	    if ( (input.LA(1) >= 48 && input.LA(1) <= 57)||(input.LA(1) >= 65 && input.LA(1) <= 90)||input.LA(1)==95||(input.LA(1) >= 97 && input.LA(1) <= 122) ) {
                	        input.consume();
                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));

                	    }


                	    }
                	    break;

                	default :
                	    break loop1;
                    }
                } while (true);


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end ID

        // $ANTLR start INT
        public final function mINT():void {
            try {
                var _type:int = INT;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:34:4: ( ( '-' )? ( '0' .. '9' )+ )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:34:6: ( '-' )? ( '0' .. '9' )+
                {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:34:6: ( '-' )?
                var alt2:int=2;
                var LA2_0:int = input.LA(1);

                if ( (LA2_0==45) ) {
                    alt2=1;
                }
                switch (alt2) {
                    case 1 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:34:6: '-'
                        {
                        match(45); 

                        }
                        break;

                }


                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:34:11: ( '0' .. '9' )+
                var cnt3:int=0;
                loop3:
                do {
                    var alt3:int=2;
                    var LA3_0:int = input.LA(1);

                    if ( ((LA3_0 >= 48 && LA3_0 <= 57)) ) {
                        alt3=1;
                    }


                    switch (alt3) {
                	case 1 :
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:
                	    {
                	    if ( (input.LA(1) >= 48 && input.LA(1) <= 57) ) {
                	        input.consume();
                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));

                	    }


                	    }
                	    break;

                	default :
                	    if ( cnt3 >= 1 ) break loop3;
                            throw new EarlyExitException(3, input);
                    }
                    cnt3++;
                } while (true);


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end INT

        // $ANTLR start NUMBER
        public final function mNUMBER():void {
            try {
                var _type:int = NUMBER;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:35:7: ( ( INT )? '.' ( '0' .. '9' )+ )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:35:9: ( INT )? '.' ( '0' .. '9' )+
                {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:35:9: ( INT )?
                var alt4:int=2;
                var LA4_0:int = input.LA(1);

                if ( (LA4_0==45||(LA4_0 >= 48 && LA4_0 <= 57)) ) {
                    alt4=1;
                }
                switch (alt4) {
                    case 1 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:35:9: INT
                        {
                        mINT(); 


                        }
                        break;

                }


                match(46); 

                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:35:18: ( '0' .. '9' )+
                var cnt5:int=0;
                loop5:
                do {
                    var alt5:int=2;
                    var LA5_0:int = input.LA(1);

                    if ( ((LA5_0 >= 48 && LA5_0 <= 57)) ) {
                        alt5=1;
                    }


                    switch (alt5) {
                	case 1 :
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:
                	    {
                	    if ( (input.LA(1) >= 48 && input.LA(1) <= 57) ) {
                	        input.consume();
                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));

                	    }


                	    }
                	    break;

                	default :
                	    if ( cnt5 >= 1 ) break loop5;
                            throw new EarlyExitException(5, input);
                    }
                    cnt5++;
                } while (true);


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end NUMBER

        // $ANTLR start STRING
        public final function mSTRING():void {
            try {
                var _type:int = STRING;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:39:2: ( '\"' ( '\"\"' |~ ( '\\r' | '\\n' | '\"' ) )* '\"' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:39:4: '\"' ( '\"\"' |~ ( '\\r' | '\\n' | '\"' ) )* '\"'
                {
                match(34); 

                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:39:8: ( '\"\"' |~ ( '\\r' | '\\n' | '\"' ) )*
                loop6:
                do {
                    var alt6:int=3;
                    var LA6_0:int = input.LA(1);

                    if ( (LA6_0==34) ) {
                        var LA6_1:int = input.LA(2);

                        if ( (LA6_1==34) ) {
                            alt6=1;
                        }


                    }
                    else if ( ((LA6_0 >= 0 && LA6_0 <= 9)||(LA6_0 >= 11 && LA6_0 <= 12)||(LA6_0 >= 14 && LA6_0 <= 33)||(LA6_0 >= 35 && LA6_0 <= 65535)) ) {
                        alt6=2;
                    }


                    switch (alt6) {
                	case 1 :
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:39:9: '\"\"'
                	    {
                	    matchString("\"\""); 



                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:39:16: ~ ( '\\r' | '\\n' | '\"' )
                	    {
                	    if ( (input.LA(1) >= 0 && input.LA(1) <= 9)||(input.LA(1) >= 11 && input.LA(1) <= 12)||(input.LA(1) >= 14 && input.LA(1) <= 33)||(input.LA(1) >= 35 && input.LA(1) <= 65535) ) {
                	        input.consume();
                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));

                	    }


                	    }
                	    break;

                	default :
                	    break loop6;
                    }
                } while (true);


                match(34); 


                     var s:String = super.text.replace("\\n", "\n").replace("\\r", "\r").replace("\\t", "\t");
                     super.text = (s.substring(1, s.length-1).replace("\"\"", "\""));
                   


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end STRING

        // $ANTLR start Skip
        public final function mSkip():void {
            try {
                var _type:int = Skip;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:111:2: ( Spaces | Comment )
                var alt7:int=2;
                var LA7_0:int = input.LA(1);

                if ( (LA7_0==9||LA7_0==32) ) {
                    alt7=1;
                }
                else if ( (LA7_0==35) ) {
                    alt7=2;
                }
                else {
                    throw new NoViableAltException("", 7, 0, input);

                }
                switch (alt7) {
                    case 1 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:111:4: Spaces
                        {
                        mSpaces(); 


                        skip();


                        }
                        break;
                    case 2 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:112:4: Comment
                        {
                        mComment(); 


                        skip();


                        }
                        break;

                }
                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end Skip

        // $ANTLR start EOL
        public final function mEOL():void {
            try {
                var _type:int = EOL;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                var Spaces1:Token=null;

                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:117:2: ( ( ( '\\r' )? '\\n' | '\\r' ) ( Spaces )? )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:117:4: ( ( '\\r' )? '\\n' | '\\r' ) ( Spaces )?
                {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:117:4: ( ( '\\r' )? '\\n' | '\\r' )
                var alt9:int=2;
                var LA9_0:int = input.LA(1);

                if ( (LA9_0==13) ) {
                    var LA9_1:int = input.LA(2);

                    if ( (LA9_1==10) ) {
                        alt9=1;
                    }
                    else {
                        alt9=2;
                    }
                }
                else if ( (LA9_0==10) ) {
                    alt9=1;
                }
                else {
                    throw new NoViableAltException("", 9, 0, input);

                }
                switch (alt9) {
                    case 1 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:117:5: ( '\\r' )? '\\n'
                        {
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:117:5: ( '\\r' )?
                        var alt8:int=2;
                        var LA8_0:int = input.LA(1);

                        if ( (LA8_0==13) ) {
                            alt8=1;
                        }
                        switch (alt8) {
                            case 1 :
                                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:117:5: '\\r'
                                {
                                match(13); 

                                }
                                break;

                        }


                        match(10); 

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:117:18: '\\r'
                        {
                        match(13); 

                        }
                        break;

                }


                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:117:24: ( Spaces )?
                var alt10:int=2;
                var LA10_0:int = input.LA(1);

                if ( (LA10_0==9||LA10_0==32) ) {
                    alt10=1;
                }
                switch (alt10) {
                    case 1 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:117:24: Spaces
                        {
                        var Spaces1Start393:int = charIndex;
                        var Spaces1StartLine393:int = line;
                        var Spaces1StartCharPos393:int = charPositionInLine;
                        mSpaces(); 
                        Spaces1 = CommonToken.createFromStream(input, TokenConstants.INVALID_TOKEN_TYPE, TokenConstants.DEFAULT_CHANNEL, Spaces1Start393, charIndex-1);
                        Spaces1.line = Spaces1StartLine393;
                        Spaces1.charPositionInLine = Spaces1StartCharPos393;


                        }
                        break;

                }



                     var next:String= String.fromCharCode(input.LA(1));
                     
                     if(openBrace > 0|| next == '\r' || next == '\n' || next == '#') {
                       // if we're inside a list or on a blank line, ignore all indents, dedents and line breaks
                       return;
                     }
                     else {
                       addToken(new CommonToken(EOL, "EOL"));

                       var indent:int= Spaces1 == null ? 0: (Spaces1!=null?Spaces1.text:null).length;
                       var previous:int= indents.length==0 ? 0: indents[0];

                       if(indent == previous) {
                         // skip indents of the same size as the present indent-size
                         return; 
                       }
                       else if(indent > previous) {
                         indents.push(indent);
                         addToken(new CommonToken(INDENT, "INDENT"));
                       }
                       else {
                         while(!indents.length==0 && indents[0] > indent) {
                           addToken(new CommonToken(DEDENT, "DEDENT"));
                           indents.pop();
                         }
                       }
                     }
                   


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end EOL

        // $ANTLR start Spaces
        public final function mSpaces():void {
            try {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:152:2: ( ( ' ' | '\\t' )+ )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:152:4: ( ' ' | '\\t' )+
                {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:152:4: ( ' ' | '\\t' )+
                var cnt11:int=0;
                loop11:
                do {
                    var alt11:int=2;
                    var LA11_0:int = input.LA(1);

                    if ( (LA11_0==9||LA11_0==32) ) {
                        alt11=1;
                    }


                    switch (alt11) {
                	case 1 :
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:
                	    {
                	    if ( input.LA(1)==9||input.LA(1)==32 ) {
                	        input.consume();
                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));

                	    }


                	    }
                	    break;

                	default :
                	    if ( cnt11 >= 1 ) break loop11;
                            throw new EarlyExitException(11, input);
                    }
                    cnt11++;
                } while (true);


                super.text = (super.text.replace("\t", "    "));


                }


            }
            finally {
            }
        }
        // $ANTLR end Spaces

        // $ANTLR start Comment
        public final function mComment():void {
            try {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:156:2: ( '#' (~ ( '\\r' | '\\n' ) )* )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:156:4: '#' (~ ( '\\r' | '\\n' ) )*
                {
                match(35); 

                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:156:8: (~ ( '\\r' | '\\n' ) )*
                loop12:
                do {
                    var alt12:int=2;
                    var LA12_0:int = input.LA(1);

                    if ( ((LA12_0 >= 0 && LA12_0 <= 9)||(LA12_0 >= 11 && LA12_0 <= 12)||(LA12_0 >= 14 && LA12_0 <= 65535)) ) {
                        alt12=1;
                    }


                    switch (alt12) {
                	case 1 :
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:
                	    {
                	    if ( (input.LA(1) >= 0 && input.LA(1) <= 9)||(input.LA(1) >= 11 && input.LA(1) <= 12)||(input.LA(1) >= 14 && input.LA(1) <= 65535) ) {
                	        input.consume();
                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));

                	    }


                	    }
                	    break;

                	default :
                	    break loop12;
                    }
                } while (true);


                }


            }
            finally {
            }
        }
        // $ANTLR end Comment

        // $ANTLR start DEDENT
        public final function mDEDENT():void {
            try {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:159:17: ()
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:159:19: 
                {
                }


            }
            finally {
            }
        }
        // $ANTLR end DEDENT

        // $ANTLR start INDENT
        public final function mINDENT():void {
            try {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:160:17: ()
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:160:19: 
                {
                }


            }
            finally {
            }
        }
        // $ANTLR end INDENT

        public override function mTokens():void {
            // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:8: ( T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | ID | INT | NUMBER | STRING | Skip | EOL )
            var alt13:int=34;
            alt13 = dfa13.predict(input);
            switch (alt13) {
                case 1 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:10: T__14
                    {
                    mT__14(); 


                    }
                    break;
                case 2 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:16: T__15
                    {
                    mT__15(); 


                    }
                    break;
                case 3 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:22: T__16
                    {
                    mT__16(); 


                    }
                    break;
                case 4 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:28: T__17
                    {
                    mT__17(); 


                    }
                    break;
                case 5 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:34: T__18
                    {
                    mT__18(); 


                    }
                    break;
                case 6 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:40: T__19
                    {
                    mT__19(); 


                    }
                    break;
                case 7 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:46: T__20
                    {
                    mT__20(); 


                    }
                    break;
                case 8 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:52: T__21
                    {
                    mT__21(); 


                    }
                    break;
                case 9 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:58: T__22
                    {
                    mT__22(); 


                    }
                    break;
                case 10 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:64: T__23
                    {
                    mT__23(); 


                    }
                    break;
                case 11 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:70: T__24
                    {
                    mT__24(); 


                    }
                    break;
                case 12 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:76: T__25
                    {
                    mT__25(); 


                    }
                    break;
                case 13 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:82: T__26
                    {
                    mT__26(); 


                    }
                    break;
                case 14 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:88: T__27
                    {
                    mT__27(); 


                    }
                    break;
                case 15 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:94: T__28
                    {
                    mT__28(); 


                    }
                    break;
                case 16 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:100: T__29
                    {
                    mT__29(); 


                    }
                    break;
                case 17 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:106: T__30
                    {
                    mT__30(); 


                    }
                    break;
                case 18 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:112: T__31
                    {
                    mT__31(); 


                    }
                    break;
                case 19 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:118: T__32
                    {
                    mT__32(); 


                    }
                    break;
                case 20 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:124: T__33
                    {
                    mT__33(); 


                    }
                    break;
                case 21 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:130: T__34
                    {
                    mT__34(); 


                    }
                    break;
                case 22 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:136: T__35
                    {
                    mT__35(); 


                    }
                    break;
                case 23 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:142: T__36
                    {
                    mT__36(); 


                    }
                    break;
                case 24 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:148: T__37
                    {
                    mT__37(); 


                    }
                    break;
                case 25 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:154: T__38
                    {
                    mT__38(); 


                    }
                    break;
                case 26 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:160: T__39
                    {
                    mT__39(); 


                    }
                    break;
                case 27 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:166: T__40
                    {
                    mT__40(); 


                    }
                    break;
                case 28 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:172: T__41
                    {
                    mT__41(); 


                    }
                    break;
                case 29 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:178: ID
                    {
                    mID(); 


                    }
                    break;
                case 30 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:181: INT
                    {
                    mINT(); 


                    }
                    break;
                case 31 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:185: NUMBER
                    {
                    mNUMBER(); 


                    }
                    break;
                case 32 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:192: STRING
                    {
                    mSTRING(); 


                    }
                    break;
                case 33 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:199: Skip
                    {
                    mSkip(); 


                    }
                    break;
                case 34 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonas3\\PythonJ_AW.g:1:204: EOL
                    {
                    mEOL(); 


                    }
                    break;

            }

        }


        private const DFA13_eot:Array =
            DFA.unpackEncodedString("\x08\u80ff\xff\x01\x1d\x01\x1e\x01\u80ff\xff"+
            "\x01\x21\x01\x23\x01\x25\x08\x18\x03\u80ff\xff\x01\x2f\x0c\u80ff\xff"+
            "\x04\x18\x01\x35\x01\x36\x01\x37\x02\x18\x01\u80ff\xff\x01\x3a"+
            "\x03\x18\x01\x3e\x03\u80ff\xff\x02\x18\x01\u80ff\xff\x01\x18"+
            "\x01\x42\x01\x43\x01\u80ff\xff\x03\x18\x02\u80ff\xff\x01\x47"+
            "\x01\x48\x01\x18\x02\u80ff\xff\x01\x18\x01\x4b\x01\u80ff\xff");
        private const DFA13_eof:Array =
            DFA.unpackEncodedString("\x4c\u80ff\xff");
        private const DFA13_min:Array =
            DFA.unpackEncodedString("\x01\x09\x07\u80ff\xff\x02\x30\x01\u80ff\xff"+
            "\x03\x3d\x01\x6e\x01\x6f\x01\x6c\x01\x6f\x01\x66\x02\x72\x01"+
            "\x68\x03\u80ff\xff\x01\x2e\x0c\u80ff\xff\x01\x64\x01\x6e\x01"+
            "\x69\x01\x72\x03\x30\x02\x69\x01\u80ff\xff\x01\x30\x01\x74\x01"+
            "\x66\x01\x65\x01\x30\x03\u80ff\xff\x01\x6e\x01\x6c\x01\u80ff\xff"+
            "\x01\x61\x02\x30\x01\u80ff\xff\x01\x74\x01\x65\x01\x69\x02\u80ff\xff"+
            "\x02\x30\x01\x6e\x02\u80ff\xff\x01\x73\x01\x30\x01\u80ff\xff", true);
        private const DFA13_max:Array =
            DFA.unpackEncodedString("\x01\x7d\x07\u80ff\xff\x02\x39\x01\u80ff\xff"+
            "\x03\x3d\x01\x6e\x01\x6f\x01\x6c\x01\x6f\x01\x6e\x02\x72\x01"+
            "\x68\x03\u80ff\xff\x01\x39\x0c\u80ff\xff\x01\x64\x01\x6e\x01"+
            "\x73\x01\x72\x03\x7a\x02\x69\x01\u80ff\xff\x01\x7a\x01\x74\x01"+
            "\x66\x01\x65\x01\x7a\x03\u80ff\xff\x01\x6e\x01\x6c\x01\u80ff\xff"+
            "\x01\x61\x02\x7a\x01\u80ff\xff\x01\x74\x01\x65\x01\x69\x02\u80ff\xff"+
            "\x02\x7a\x01\x6e\x02\u80ff\xff\x01\x73\x01\x7a\x01\u80ff\xff", true);
        private const DFA13_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x01\x01\x02\x01\x03"+
            "\x01\x04\x01\x05\x01\x06\x01\x07\x02\u80ff\xff\x01\x0a\x0b\u80ff\xff"+
            "\x01\x1b\x01\x1c\x01\x1d\x01\u80ff\xff\x01\x20\x01\x21\x01\x22"+
            "\x01\x08\x01\x09\x01\x1f\x01\x0c\x01\x0b\x01\x0e\x01\x0d\x01"+
            "\x10\x01\x0f\x09\u80ff\xff\x01\x1e\x05\u80ff\xff\x01\x16\x01"+
            "\x17\x01\x18\x02\u80ff\xff\x01\x11\x03\u80ff\xff\x01\x15\x03"+
            "\u80ff\xff\x01\x13\x01\x14\x03\u80ff\xff\x01\x19\x01\x1a\x02"+
            "\u80ff\xff\x01\x12");
        private const DFA13_special:Array =
            DFA.unpackEncodedString("\x4c\u80ff\xff");
        private const DFA13_transition:Array = [
                DFA.unpackEncodedString("\x01\x1b\x01\x1c\x02\u80ff\xff\x01"+
                "\x1c\x12\u80ff\xff\x01\x1b\x01\x01\x01\x1a\x01\x1b\x01\u80ff\xff"+
                "\x01\x02\x02\u80ff\xff\x01\x03\x01\x04\x01\x05\x01\x06\x01"+
                "\x07\x01\x08\x01\x09\x01\x0a\x0a\x19\x02\u80ff\xff\x01\x0b"+
                "\x01\x0c\x01\x0d\x02\u80ff\xff\x1a\x18\x04\u80ff\xff\x01"+
                "\x18\x01\u80ff\xff\x01\x0e\x01\x18\x01\x0f\x01\x18\x01\x10"+
                "\x01\x11\x02\x18\x01\x12\x05\x18\x01\x13\x01\x14\x06\x18"+
                "\x01\x15\x03\x18\x01\x16\x01\u80ff\xff\x01\x17"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x19"),
                DFA.unpackEncodedString("\x0a\x1f"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x20"),
                DFA.unpackEncodedString("\x01\x22"),
                DFA.unpackEncodedString("\x01\x24"),
                DFA.unpackEncodedString("\x01\x26"),
                DFA.unpackEncodedString("\x01\x27"),
                DFA.unpackEncodedString("\x01\x28"),
                DFA.unpackEncodedString("\x01\x29"),
                DFA.unpackEncodedString("\x01\x2a\x07\u80ff\xff\x01\x2b"),
                DFA.unpackEncodedString("\x01\x2c"),
                DFA.unpackEncodedString("\x01\x2d"),
                DFA.unpackEncodedString("\x01\x2e"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x1f\x01\u80ff\xff\x0a\x19"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x30"),
                DFA.unpackEncodedString("\x01\x31"),
                DFA.unpackEncodedString("\x01\x32\x09\u80ff\xff\x01\x33"),
                DFA.unpackEncodedString("\x01\x34"),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString("\x01\x38"),
                DFA.unpackEncodedString("\x01\x39"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString("\x01\x3b"),
                DFA.unpackEncodedString("\x01\x3c"),
                DFA.unpackEncodedString("\x01\x3d"),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x3f"),
                DFA.unpackEncodedString("\x01\x40"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x41"),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x44"),
                DFA.unpackEncodedString("\x01\x45"),
                DFA.unpackEncodedString("\x01\x46"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString("\x01\x49"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x4a"),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x18"+
                "\x04\u80ff\xff\x01\x18\x01\u80ff\xff\x1a\x18"),
                DFA.unpackEncodedString("")
        ];
        protected var dfa13:DFA;  // initialized in constructor
     

    }
}