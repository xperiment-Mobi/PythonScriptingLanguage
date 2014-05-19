// $ANTLR 3.5 C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g 2014-05-12 19:03:35
package {
import org.antlr.runtime.*;

    public class PythonJ_AWLexer extends Lexer {
        public static const EOF:int=-1;
        public static const T__8:int=8;
        public static const ID:int=4;
        public static const INT:int=5;
        public static const NUMBER:int=6;
        public static const WS:int=7;

        // delegates
        // delegators

        public function PythonJ_AWLexer(input:CharStream = null, state:RecognizerSharedState = null) {
            super(input, state);
            dfa6 = new DFA(this, 6,
                        "1:1: Tokens : ( T__8 | ID | INT | NUMBER | WS );",
                        DFA6_eot, DFA6_eof, DFA6_min,
                        DFA6_max, DFA6_accept, DFA6_special,
                        DFA6_transition);

        }
        public override function get grammarFileName():String { return "C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g"; }

        // $ANTLR start T__8
        public final function mT__8():void {
            try {
                var _type:int = T__8;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:7:6: ( 'print' )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:7:8: 'print'
                {
                matchString("print"); 



                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__8

        // $ANTLR start ID
        public final function mID():void {
            try {
                var _type:int = ID;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:9:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:9:7: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
                {
                if ( (input.LA(1) >= 65 && input.LA(1) <= 90)||input.LA(1)==95||(input.LA(1) >= 97 && input.LA(1) <= 122) ) {
                    input.consume();
                }
                else {
                    throw recover(new MismatchedSetException(null,input));

                }


                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:9:31: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
                loop1:
                do {
                    var alt1:int=2;
                    var LA1_0:int = input.LA(1);

                    if ( ((LA1_0 >= 48 && LA1_0 <= 57)||(LA1_0 >= 65 && LA1_0 <= 90)||LA1_0==95||(LA1_0 >= 97 && LA1_0 <= 122)) ) {
                        alt1=1;
                    }


                    switch (alt1) {
                	case 1 :
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:
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
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:12:4: ( ( '-' )? ( '0' .. '9' )+ )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:12:6: ( '-' )? ( '0' .. '9' )+
                {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:12:6: ( '-' )?
                var alt2:int=2;
                var LA2_0:int = input.LA(1);

                if ( (LA2_0==45) ) {
                    alt2=1;
                }
                switch (alt2) {
                    case 1 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:12:6: '-'
                        {
                        match(45); 

                        }
                        break;

                }


                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:12:11: ( '0' .. '9' )+
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
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:
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
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:13:7: ( ( INT )? '.' ( '0' .. '9' )+ )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:13:9: ( INT )? '.' ( '0' .. '9' )+
                {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:13:9: ( INT )?
                var alt4:int=2;
                var LA4_0:int = input.LA(1);

                if ( (LA4_0==45||(LA4_0 >= 48 && LA4_0 <= 57)) ) {
                    alt4=1;
                }
                switch (alt4) {
                    case 1 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:13:9: INT
                        {
                        mINT(); 


                        }
                        break;

                }


                match(46); 

                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:13:18: ( '0' .. '9' )+
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
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:
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

        // $ANTLR start WS
        public final function mWS():void {
            try {
                var _type:int = WS;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:15:5: ( ( ' ' | '\\t' | '\\n' | '\\r' ) )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:15:9: ( ' ' | '\\t' | '\\n' | '\\r' )
                {
                if ( (input.LA(1) >= 9 && input.LA(1) <= 10)||input.LA(1)==13||input.LA(1)==32 ) {
                    input.consume();
                }
                else {
                    throw recover(new MismatchedSetException(null,input));

                }


                skip();


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end WS

        public override function mTokens():void {
            // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:1:8: ( T__8 | ID | INT | NUMBER | WS )
            var alt6:int=5;
            alt6 = dfa6.predict(input);
            switch (alt6) {
                case 1 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:1:10: T__8
                    {
                    mT__8(); 


                    }
                    break;
                case 2 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:1:15: ID
                    {
                    mID(); 


                    }
                    break;
                case 3 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:1:18: INT
                    {
                    mINT(); 


                    }
                    break;
                case 4 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:1:22: NUMBER
                    {
                    mNUMBER(); 


                    }
                    break;
                case 5 :
                    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:1:29: WS
                    {
                    mWS(); 


                    }
                    break;

            }

        }


        private const DFA6_eot:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x02\x02\u80ff\xff"+
            "\x01\x08\x02\u80ff\xff\x01\x02\x01\u80ff\xff\x02\x02\x01\x0c"+
            "\x01\u80ff\xff");
        private const DFA6_eof:Array =
            DFA.unpackEncodedString("\x0d\u80ff\xff");
        private const DFA6_min:Array =
            DFA.unpackEncodedString("\x01\x09\x01\x72\x01\u80ff\xff\x01\x30"+
            "\x01\x2e\x02\u80ff\xff\x01\x69\x01\u80ff\xff\x01\x6e\x01\x74"+
            "\x01\x30\x01\u80ff\xff", true);
        private const DFA6_max:Array =
            DFA.unpackEncodedString("\x01\x7a\x01\x72\x01\u80ff\xff\x02\x39"+
            "\x02\u80ff\xff\x01\x69\x01\u80ff\xff\x01\x6e\x01\x74\x01\x7a"+
            "\x01\u80ff\xff", true);
        private const DFA6_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x02\x02\u80ff\xff"+
            "\x01\x04\x01\x05\x01\u80ff\xff\x01\x03\x03\u80ff\xff\x01\x01");
        private const DFA6_special:Array =
            DFA.unpackEncodedString("\x0d\u80ff\xff");
        private const DFA6_transition:Array = [
                DFA.unpackEncodedString("\x02\x06\x02\u80ff\xff\x01\x06\x12"+
                "\u80ff\xff\x01\x06\x0c\u80ff\xff\x01\x03\x01\x05\x01\u80ff\xff"+
                "\x0a\x04\x07\u80ff\xff\x1a\x02\x04\u80ff\xff\x01\x02\x01"+
                "\u80ff\xff\x0f\x02\x01\x01\x0a\x02"),
                DFA.unpackEncodedString("\x01\x07"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x04"),
                DFA.unpackEncodedString("\x01\x05\x01\u80ff\xff\x0a\x04"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x09"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x0a"),
                DFA.unpackEncodedString("\x01\x0b"),
                DFA.unpackEncodedString("\x0a\x02\x07\u80ff\xff\x1a\x02"+
                "\x04\u80ff\xff\x01\x02\x01\u80ff\xff\x1a\x02"),
                DFA.unpackEncodedString("")
        ];
        protected var dfa6:DFA;  // initialized in constructor
     

    }
}