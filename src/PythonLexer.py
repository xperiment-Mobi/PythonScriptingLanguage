# $ANTLR 3.5 C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g 2014-03-26 18:34:15

import sys
from antlr3 import *
from antlr3.compat import set, frozenset



# for convenience in actions
HIDDEN = BaseRecognizer.HIDDEN

# token types
EOF=-1
T__16=16
T__17=17
T__18=18
T__19=19
T__20=20
T__21=21
T__22=22
T__23=23
T__24=24
T__25=25
T__26=26
T__27=27
T__28=28
T__29=29
T__30=30
T__31=31
T__32=32
T__33=33
T__34=34
T__35=35
T__36=36
T__37=37
T__38=38
T__39=39
Comment=4
DEDENT=5
EOL=6
EXP=7
ID=8
INDENT=9
INT=10
NUMBER=11
STATEMENTS=12
STRING=13
Skip=14
Spaces=15


class PythonLexer(Lexer):

    grammarFileName = "C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g"
    api_version = 1

    def __init__(self, input=None, state=None):
        if state is None:
            state = RecognizerSharedState()
        super(PythonLexer, self).__init__(input, state)

        self.delegates = []

        self.dfa15 = self.DFA15(
            self, 15,
            eot = self.DFA15_eot,
            eof = self.DFA15_eof,
            min = self.DFA15_min,
            max = self.DFA15_max,
            accept = self.DFA15_accept,
            special = self.DFA15_special,
            transition = self.DFA15_transition
            )




             

     
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
      



    # $ANTLR start "T__16"
    def mT__16(self, ):
        try:
            _type = T__16
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:29:7: ( '!=' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:29:9: '!='
            pass 
            self.match("!=")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__16"



    # $ANTLR start "T__17"
    def mT__17(self, ):
        try:
            _type = T__17
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:30:7: ( '%' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:30:9: '%'
            pass 
            self.match(37)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__17"



    # $ANTLR start "T__18"
    def mT__18(self, ):
        try:
            _type = T__18
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:31:7: ( '(' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:31:9: '('
            pass 
            self.match(40)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__18"



    # $ANTLR start "T__19"
    def mT__19(self, ):
        try:
            _type = T__19
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:32:7: ( ')' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:32:9: ')'
            pass 
            self.match(41)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__19"



    # $ANTLR start "T__20"
    def mT__20(self, ):
        try:
            _type = T__20
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:33:7: ( '*' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:33:9: '*'
            pass 
            self.match(42)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__20"



    # $ANTLR start "T__21"
    def mT__21(self, ):
        try:
            _type = T__21
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:34:7: ( '+' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:34:9: '+'
            pass 
            self.match(43)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__21"



    # $ANTLR start "T__22"
    def mT__22(self, ):
        try:
            _type = T__22
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:35:7: ( '-' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:35:9: '-'
            pass 
            self.match(45)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__22"



    # $ANTLR start "T__23"
    def mT__23(self, ):
        try:
            _type = T__23
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:36:7: ( '/' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:36:9: '/'
            pass 
            self.match(47)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__23"



    # $ANTLR start "T__24"
    def mT__24(self, ):
        try:
            _type = T__24
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:37:7: ( ':' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:37:9: ':'
            pass 
            self.match(58)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__24"



    # $ANTLR start "T__25"
    def mT__25(self, ):
        try:
            _type = T__25
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:38:7: ( '<' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:38:9: '<'
            pass 
            self.match(60)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__25"



    # $ANTLR start "T__26"
    def mT__26(self, ):
        try:
            _type = T__26
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:39:7: ( '<=' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:39:9: '<='
            pass 
            self.match("<=")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__26"



    # $ANTLR start "T__27"
    def mT__27(self, ):
        try:
            _type = T__27
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:40:7: ( '=' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:40:9: '='
            pass 
            self.match(61)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__27"



    # $ANTLR start "T__28"
    def mT__28(self, ):
        try:
            _type = T__28
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:41:7: ( '==' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:41:9: '=='
            pass 
            self.match("==")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__28"



    # $ANTLR start "T__29"
    def mT__29(self, ):
        try:
            _type = T__29
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:42:7: ( '>' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:42:9: '>'
            pass 
            self.match(62)



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__29"



    # $ANTLR start "T__30"
    def mT__30(self, ):
        try:
            _type = T__30
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:43:7: ( '>=' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:43:9: '>='
            pass 
            self.match(">=")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__30"



    # $ANTLR start "T__31"
    def mT__31(self, ):
        try:
            _type = T__31
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:44:7: ( 'and' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:44:9: 'and'
            pass 
            self.match("and")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__31"



    # $ANTLR start "T__32"
    def mT__32(self, ):
        try:
            _type = T__32
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:45:7: ( 'contains' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:45:9: 'contains'
            pass 
            self.match("contains")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__32"



    # $ANTLR start "T__33"
    def mT__33(self, ):
        try:
            _type = T__33
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:46:7: ( 'elif' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:46:9: 'elif'
            pass 
            self.match("elif")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__33"



    # $ANTLR start "T__34"
    def mT__34(self, ):
        try:
            _type = T__34
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:47:7: ( 'else' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:47:9: 'else'
            pass 
            self.match("else")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__34"



    # $ANTLR start "T__35"
    def mT__35(self, ):
        try:
            _type = T__35
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:48:7: ( 'for' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:48:9: 'for'
            pass 
            self.match("for")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__35"



    # $ANTLR start "T__36"
    def mT__36(self, ):
        try:
            _type = T__36
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:49:7: ( 'if' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:49:9: 'if'
            pass 
            self.match("if")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__36"



    # $ANTLR start "T__37"
    def mT__37(self, ):
        try:
            _type = T__37
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:50:7: ( 'in' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:50:9: 'in'
            pass 
            self.match("in")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__37"



    # $ANTLR start "T__38"
    def mT__38(self, ):
        try:
            _type = T__38
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:51:7: ( 'or' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:51:9: 'or'
            pass 
            self.match("or")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__38"



    # $ANTLR start "T__39"
    def mT__39(self, ):
        try:
            _type = T__39
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:52:7: ( 'while' )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:52:9: 'while'
            pass 
            self.match("while")




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "T__39"



    # $ANTLR start "ID"
    def mID(self, ):
        try:
            _type = ID
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:41:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:41:7: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
            pass 
            if (65 <= self.input.LA(1) <= 90) or self.input.LA(1) == 95 or (97 <= self.input.LA(1) <= 122):
                self.input.consume()
            else:
                mse = MismatchedSetException(None, self.input)
                self.recover(mse)
                raise mse



            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:41:31: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
            while True: #loop1
                alt1 = 2
                LA1_0 = self.input.LA(1)

                if ((48 <= LA1_0 <= 57) or (65 <= LA1_0 <= 90) or LA1_0 == 95 or (97 <= LA1_0 <= 122)) :
                    alt1 = 1


                if alt1 == 1:
                    # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:
                    pass 
                    if (48 <= self.input.LA(1) <= 57) or (65 <= self.input.LA(1) <= 90) or self.input.LA(1) == 95 or (97 <= self.input.LA(1) <= 122):
                        self.input.consume()
                    else:
                        mse = MismatchedSetException(None, self.input)
                        self.recover(mse)
                        raise mse




                else:
                    break #loop1




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "ID"



    # $ANTLR start "INT"
    def mINT(self, ):
        try:
            _type = INT
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:44:4: ( ( '-' )? ( '0' .. '9' )+ )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:44:6: ( '-' )? ( '0' .. '9' )+
            pass 
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:44:6: ( '-' )?
            alt2 = 2
            LA2_0 = self.input.LA(1)

            if (LA2_0 == 45) :
                alt2 = 1
            if alt2 == 1:
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:44:6: '-'
                pass 
                self.match(45)




            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:44:11: ( '0' .. '9' )+
            cnt3 = 0
            while True: #loop3
                alt3 = 2
                LA3_0 = self.input.LA(1)

                if ((48 <= LA3_0 <= 57)) :
                    alt3 = 1


                if alt3 == 1:
                    # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:
                    pass 
                    if (48 <= self.input.LA(1) <= 57):
                        self.input.consume()
                    else:
                        mse = MismatchedSetException(None, self.input)
                        self.recover(mse)
                        raise mse




                else:
                    if cnt3 >= 1:
                        break #loop3

                    eee = EarlyExitException(3, self.input)
                    raise eee

                cnt3 += 1




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "INT"



    # $ANTLR start "NUMBER"
    def mNUMBER(self, ):
        try:
            _type = NUMBER
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:45:7: ( ( INT )? '.' ( '0' .. '9' )+ )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:45:9: ( INT )? '.' ( '0' .. '9' )+
            pass 
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:45:9: ( INT )?
            alt4 = 2
            LA4_0 = self.input.LA(1)

            if (LA4_0 == 45 or (48 <= LA4_0 <= 57)) :
                alt4 = 1
            if alt4 == 1:
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:45:9: INT
                pass 
                self.mINT()





            self.match(46)

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:45:18: ( '0' .. '9' )+
            cnt5 = 0
            while True: #loop5
                alt5 = 2
                LA5_0 = self.input.LA(1)

                if ((48 <= LA5_0 <= 57)) :
                    alt5 = 1


                if alt5 == 1:
                    # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:
                    pass 
                    if (48 <= self.input.LA(1) <= 57):
                        self.input.consume()
                    else:
                        mse = MismatchedSetException(None, self.input)
                        self.recover(mse)
                        raise mse




                else:
                    if cnt5 >= 1:
                        break #loop5

                    eee = EarlyExitException(5, self.input)
                    raise eee

                cnt5 += 1




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "NUMBER"



    # $ANTLR start "STRING"
    def mSTRING(self, ):
        try:
            _type = STRING
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:49:3: ( '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' | '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' )
            alt8 = 2
            LA8_0 = self.input.LA(1)

            if (LA8_0 == 34) :
                alt8 = 1
            elif (LA8_0 == 39) :
                alt8 = 2
            else:
                nvae = NoViableAltException("", 8, 0, self.input)

                raise nvae


            if alt8 == 1:
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:49:6: '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"'
                pass 
                self.match(34)

                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:49:11: (~ ( '\"' | '\\\\' ) | '\\\\' . )*
                while True: #loop6
                    alt6 = 3
                    LA6_0 = self.input.LA(1)

                    if ((0 <= LA6_0 <= 33) or (35 <= LA6_0 <= 91) or (93 <= LA6_0 <= 65535)) :
                        alt6 = 1
                    elif (LA6_0 == 92) :
                        alt6 = 2


                    if alt6 == 1:
                        # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:49:12: ~ ( '\"' | '\\\\' )
                        pass 
                        if (0 <= self.input.LA(1) <= 33) or (35 <= self.input.LA(1) <= 91) or (93 <= self.input.LA(1) <= 65535):
                            self.input.consume()
                        else:
                            mse = MismatchedSetException(None, self.input)
                            self.recover(mse)
                            raise mse




                    elif alt6 == 2:
                        # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:49:29: '\\\\' .
                        pass 
                        self.match(92)

                        self.matchAny()


                    else:
                        break #loop6


                self.match(34)


            elif alt8 == 2:
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:50:6: '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\''
                pass 
                self.match(39)

                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:50:11: (~ ( '\\'' | '\\\\' ) | '\\\\' . )*
                while True: #loop7
                    alt7 = 3
                    LA7_0 = self.input.LA(1)

                    if ((0 <= LA7_0 <= 38) or (40 <= LA7_0 <= 91) or (93 <= LA7_0 <= 65535)) :
                        alt7 = 1
                    elif (LA7_0 == 92) :
                        alt7 = 2


                    if alt7 == 1:
                        # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:50:12: ~ ( '\\'' | '\\\\' )
                        pass 
                        if (0 <= self.input.LA(1) <= 38) or (40 <= self.input.LA(1) <= 91) or (93 <= self.input.LA(1) <= 65535):
                            self.input.consume()
                        else:
                            mse = MismatchedSetException(None, self.input)
                            self.recover(mse)
                            raise mse




                    elif alt7 == 2:
                        # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:50:29: '\\\\' .
                        pass 
                        self.match(92)

                        self.matchAny()


                    else:
                        break #loop7


                self.match(39)


            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "STRING"



    # $ANTLR start "Skip"
    def mSkip(self, ):
        try:
            _type = Skip
            _channel = DEFAULT_CHANNEL

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:108:2: ( Spaces | Comment )
            alt9 = 2
            LA9_0 = self.input.LA(1)

            if (LA9_0 == 9 or LA9_0 == 32) :
                alt9 = 1
            elif (LA9_0 == 35) :
                alt9 = 2
            else:
                nvae = NoViableAltException("", 9, 0, self.input)

                raise nvae


            if alt9 == 1:
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:108:4: Spaces
                pass 
                self.mSpaces()


                #action start
                self.skip();
                #action end



            elif alt9 == 2:
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:109:4: Comment
                pass 
                self.mComment()


                #action start
                self.skip();
                #action end



            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "Skip"



    # $ANTLR start "EOL"
    def mEOL(self, ):
        try:
            _type = EOL
            _channel = DEFAULT_CHANNEL

            Spaces1 = None

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:114:2: ( ( ( '\\r' )? '\\n' | '\\r' ) ( Spaces )? )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:114:4: ( ( '\\r' )? '\\n' | '\\r' ) ( Spaces )?
            pass 
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:114:4: ( ( '\\r' )? '\\n' | '\\r' )
            alt11 = 2
            LA11_0 = self.input.LA(1)

            if (LA11_0 == 13) :
                LA11_1 = self.input.LA(2)

                if (LA11_1 == 10) :
                    alt11 = 1
                else:
                    alt11 = 2

            elif (LA11_0 == 10) :
                alt11 = 1
            else:
                nvae = NoViableAltException("", 11, 0, self.input)

                raise nvae


            if alt11 == 1:
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:114:5: ( '\\r' )? '\\n'
                pass 
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:114:5: ( '\\r' )?
                alt10 = 2
                LA10_0 = self.input.LA(1)

                if (LA10_0 == 13) :
                    alt10 = 1
                if alt10 == 1:
                    # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:114:5: '\\r'
                    pass 
                    self.match(13)




                self.match(10)


            elif alt11 == 2:
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:114:18: '\\r'
                pass 
                self.match(13)




            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:114:24: ( Spaces )?
            alt12 = 2
            LA12_0 = self.input.LA(1)

            if (LA12_0 == 9 or LA12_0 == 32) :
                alt12 = 1
            if alt12 == 1:
                # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:114:24: Spaces
                pass 
                Spaces1Start392 = self.getCharIndex()
                self.mSpaces()
                Spaces1StartLine392 = self.getLine()
                Spaces1StartCharPos392 = self.getCharPositionInLine()
                Spaces1 = CommonToken(
                    input=self.input,
                    type=INVALID_TOKEN_TYPE,
                    channel=DEFAULT_CHANNEL,
                    start=Spaces1Start392,
                    stop=self.getCharIndex()-1)
                Spaces1.setLine(Spaces1StartLine392)
                Spaces1.setCharPositionInLine(Spaces1StartCharPos392)





            #action start
               
            next = input.LA(1)


            if(openBrace > 0 or next == '\r' or next == '\n' or next == '#'):
              self.skip();

            else:
              self.emit(CommonToken(EOL, "EOL"));

              indent = 0
              if(Spaces1):
               indent = len(((Spaces1 is not None) and [Spaces1.text] or [None])[0])
              
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
               
            #action end




            self._state.type = _type
            self._state.channel = _channel
        finally:
            pass

    # $ANTLR end "EOL"



    # $ANTLR start "Spaces"
    def mSpaces(self, ):
        try:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:151:2: ( ( ' ' | '\\t' )+ )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:151:4: ( ' ' | '\\t' )+
            pass 
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:151:4: ( ' ' | '\\t' )+
            cnt13 = 0
            while True: #loop13
                alt13 = 2
                LA13_0 = self.input.LA(1)

                if (LA13_0 == 9 or LA13_0 == 32) :
                    alt13 = 1


                if alt13 == 1:
                    # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:
                    pass 
                    if self.input.LA(1) == 9 or self.input.LA(1) == 32:
                        self.input.consume()
                    else:
                        mse = MismatchedSetException(None, self.input)
                        self.recover(mse)
                        raise mse




                else:
                    if cnt13 >= 1:
                        break #loop13

                    eee = EarlyExitException(13, self.input)
                    raise eee

                cnt13 += 1


            #action start
            setText(getText().replace("\t", "    "));
            #action end





        finally:
            pass

    # $ANTLR end "Spaces"



    # $ANTLR start "Comment"
    def mComment(self, ):
        try:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:155:2: ( '#' (~ ( '\\r' | '\\n' ) )* )
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:155:4: '#' (~ ( '\\r' | '\\n' ) )*
            pass 
            self.match(35)

            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:155:8: (~ ( '\\r' | '\\n' ) )*
            while True: #loop14
                alt14 = 2
                LA14_0 = self.input.LA(1)

                if ((0 <= LA14_0 <= 9) or (11 <= LA14_0 <= 12) or (14 <= LA14_0 <= 65535)) :
                    alt14 = 1


                if alt14 == 1:
                    # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:
                    pass 
                    if (0 <= self.input.LA(1) <= 9) or (11 <= self.input.LA(1) <= 12) or (14 <= self.input.LA(1) <= 65535):
                        self.input.consume()
                    else:
                        mse = MismatchedSetException(None, self.input)
                        self.recover(mse)
                        raise mse




                else:
                    break #loop14





        finally:
            pass

    # $ANTLR end "Comment"



    # $ANTLR start "DEDENT"
    def mDEDENT(self, ):
        try:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:158:17: ()
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:158:19: 
            pass 



        finally:
            pass

    # $ANTLR end "DEDENT"



    # $ANTLR start "INDENT"
    def mINDENT(self, ):
        try:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:159:17: ()
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:159:19: 
            pass 



        finally:
            pass

    # $ANTLR end "INDENT"



    def mTokens(self):
        # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:8: ( T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | ID | INT | NUMBER | STRING | Skip | EOL )
        alt15 = 30
        alt15 = self.dfa15.predict(self.input)
        if alt15 == 1:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:10: T__16
            pass 
            self.mT__16()



        elif alt15 == 2:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:16: T__17
            pass 
            self.mT__17()



        elif alt15 == 3:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:22: T__18
            pass 
            self.mT__18()



        elif alt15 == 4:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:28: T__19
            pass 
            self.mT__19()



        elif alt15 == 5:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:34: T__20
            pass 
            self.mT__20()



        elif alt15 == 6:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:40: T__21
            pass 
            self.mT__21()



        elif alt15 == 7:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:46: T__22
            pass 
            self.mT__22()



        elif alt15 == 8:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:52: T__23
            pass 
            self.mT__23()



        elif alt15 == 9:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:58: T__24
            pass 
            self.mT__24()



        elif alt15 == 10:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:64: T__25
            pass 
            self.mT__25()



        elif alt15 == 11:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:70: T__26
            pass 
            self.mT__26()



        elif alt15 == 12:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:76: T__27
            pass 
            self.mT__27()



        elif alt15 == 13:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:82: T__28
            pass 
            self.mT__28()



        elif alt15 == 14:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:88: T__29
            pass 
            self.mT__29()



        elif alt15 == 15:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:94: T__30
            pass 
            self.mT__30()



        elif alt15 == 16:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:100: T__31
            pass 
            self.mT__31()



        elif alt15 == 17:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:106: T__32
            pass 
            self.mT__32()



        elif alt15 == 18:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:112: T__33
            pass 
            self.mT__33()



        elif alt15 == 19:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:118: T__34
            pass 
            self.mT__34()



        elif alt15 == 20:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:124: T__35
            pass 
            self.mT__35()



        elif alt15 == 21:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:130: T__36
            pass 
            self.mT__36()



        elif alt15 == 22:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:136: T__37
            pass 
            self.mT__37()



        elif alt15 == 23:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:142: T__38
            pass 
            self.mT__38()



        elif alt15 == 24:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:148: T__39
            pass 
            self.mT__39()



        elif alt15 == 25:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:154: ID
            pass 
            self.mID()



        elif alt15 == 26:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:157: INT
            pass 
            self.mINT()



        elif alt15 == 27:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:161: NUMBER
            pass 
            self.mNUMBER()



        elif alt15 == 28:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:168: STRING
            pass 
            self.mSTRING()



        elif alt15 == 29:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:175: Skip
            pass 
            self.mSkip()



        elif alt15 == 30:
            # C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\Python.g:1:180: EOL
            pass 
            self.mEOL()








    # lookup tables for DFA #15

    DFA15_eot = DFA.unpack(
        u"\7\uffff\1\32\2\uffff\1\34\1\36\1\40\7\24\1\uffff\1\51\13\uffff"
        u"\4\24\1\57\1\60\1\61\1\24\1\uffff\1\63\3\24\1\67\3\uffff\1\24\1"
        u"\uffff\1\24\1\72\1\73\1\uffff\2\24\2\uffff\1\76\1\24\1\uffff\1"
        u"\24\1\101\1\uffff"
        )

    DFA15_eof = DFA.unpack(
        u"\102\uffff"
        )

    DFA15_min = DFA.unpack(
        u"\1\11\6\uffff\1\60\2\uffff\3\75\1\156\1\157\1\154\1\157\1\146\1"
        u"\162\1\150\1\uffff\1\56\13\uffff\1\144\1\156\1\151\1\162\3\60\1"
        u"\151\1\uffff\1\60\1\164\1\146\1\145\1\60\3\uffff\1\154\1\uffff"
        u"\1\141\2\60\1\uffff\1\145\1\151\2\uffff\1\60\1\156\1\uffff\1\163"
        u"\1\60\1\uffff"
        )

    DFA15_max = DFA.unpack(
        u"\1\172\6\uffff\1\71\2\uffff\3\75\1\156\1\157\1\154\1\157\1\156"
        u"\1\162\1\150\1\uffff\1\71\13\uffff\1\144\1\156\1\163\1\162\3\172"
        u"\1\151\1\uffff\1\172\1\164\1\146\1\145\1\172\3\uffff\1\154\1\uffff"
        u"\1\141\2\172\1\uffff\1\145\1\151\2\uffff\1\172\1\156\1\uffff\1"
        u"\163\1\172\1\uffff"
        )

    DFA15_accept = DFA.unpack(
        u"\1\uffff\1\1\1\2\1\3\1\4\1\5\1\6\1\uffff\1\10\1\11\12\uffff\1\31"
        u"\1\uffff\1\33\1\34\1\35\1\36\1\7\1\13\1\12\1\15\1\14\1\17\1\16"
        u"\10\uffff\1\32\5\uffff\1\25\1\26\1\27\1\uffff\1\20\3\uffff\1\24"
        u"\2\uffff\1\22\1\23\2\uffff\1\30\2\uffff\1\21"
        )

    DFA15_special = DFA.unpack(
        u"\102\uffff"
        )


    DFA15_transition = [
        DFA.unpack(u"\1\30\1\31\2\uffff\1\31\22\uffff\1\30\1\1\1\27\1\30"
        u"\1\uffff\1\2\1\uffff\1\27\1\3\1\4\1\5\1\6\1\uffff\1\7\1\26\1\10"
        u"\12\25\1\11\1\uffff\1\12\1\13\1\14\2\uffff\32\24\4\uffff\1\24\1"
        u"\uffff\1\15\1\24\1\16\1\24\1\17\1\20\2\24\1\21\5\24\1\22\7\24\1"
        u"\23\3\24"),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u"\12\25"),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u"\1\33"),
        DFA.unpack(u"\1\35"),
        DFA.unpack(u"\1\37"),
        DFA.unpack(u"\1\41"),
        DFA.unpack(u"\1\42"),
        DFA.unpack(u"\1\43"),
        DFA.unpack(u"\1\44"),
        DFA.unpack(u"\1\45\7\uffff\1\46"),
        DFA.unpack(u"\1\47"),
        DFA.unpack(u"\1\50"),
        DFA.unpack(u""),
        DFA.unpack(u"\1\26\1\uffff\12\25"),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u"\1\52"),
        DFA.unpack(u"\1\53"),
        DFA.unpack(u"\1\54\11\uffff\1\55"),
        DFA.unpack(u"\1\56"),
        DFA.unpack(u"\12\24\7\uffff\32\24\4\uffff\1\24\1\uffff\32\24"),
        DFA.unpack(u"\12\24\7\uffff\32\24\4\uffff\1\24\1\uffff\32\24"),
        DFA.unpack(u"\12\24\7\uffff\32\24\4\uffff\1\24\1\uffff\32\24"),
        DFA.unpack(u"\1\62"),
        DFA.unpack(u""),
        DFA.unpack(u"\12\24\7\uffff\32\24\4\uffff\1\24\1\uffff\32\24"),
        DFA.unpack(u"\1\64"),
        DFA.unpack(u"\1\65"),
        DFA.unpack(u"\1\66"),
        DFA.unpack(u"\12\24\7\uffff\32\24\4\uffff\1\24\1\uffff\32\24"),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u"\1\70"),
        DFA.unpack(u""),
        DFA.unpack(u"\1\71"),
        DFA.unpack(u"\12\24\7\uffff\32\24\4\uffff\1\24\1\uffff\32\24"),
        DFA.unpack(u"\12\24\7\uffff\32\24\4\uffff\1\24\1\uffff\32\24"),
        DFA.unpack(u""),
        DFA.unpack(u"\1\74"),
        DFA.unpack(u"\1\75"),
        DFA.unpack(u""),
        DFA.unpack(u""),
        DFA.unpack(u"\12\24\7\uffff\32\24\4\uffff\1\24\1\uffff\32\24"),
        DFA.unpack(u"\1\77"),
        DFA.unpack(u""),
        DFA.unpack(u"\1\100"),
        DFA.unpack(u"\12\24\7\uffff\32\24\4\uffff\1\24\1\uffff\32\24"),
        DFA.unpack(u"")
    ]

    # class definition for DFA #15

    class DFA15(DFA):
        pass


 



def main(argv, stdin=sys.stdin, stdout=sys.stdout, stderr=sys.stderr):
    from antlr3.main import LexerMain
    main = LexerMain(PythonLexer)

    main.stdin = stdin
    main.stdout = stdout
    main.stderr = stderr
    main.execute(argv)



if __name__ == '__main__':
    main(sys.argv)
