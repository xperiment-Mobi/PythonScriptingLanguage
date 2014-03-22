// $ANTLR 3.5 C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g 2014-03-22 12:43:34

  package pythonj;
  import java.util.Queue;
  import java.util.LinkedList;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class PythonJLexer extends Lexer {
	public static final int EOF=-1;
	public static final int T__17=17;
	public static final int T__18=18;
	public static final int T__19=19;
	public static final int T__20=20;
	public static final int T__21=21;
	public static final int T__22=22;
	public static final int T__23=23;
	public static final int T__24=24;
	public static final int T__25=25;
	public static final int T__26=26;
	public static final int T__27=27;
	public static final int T__28=28;
	public static final int T__29=29;
	public static final int T__30=30;
	public static final int T__31=31;
	public static final int T__32=32;
	public static final int T__33=33;
	public static final int T__34=34;
	public static final int T__35=35;
	public static final int T__36=36;
	public static final int T__37=37;
	public static final int T__38=38;
	public static final int T__39=39;
	public static final int T__40=40;
	public static final int T__41=41;
	public static final int T__42=42;
	public static final int T__43=43;
	public static final int Comment=4;
	public static final int DEDENT=5;
	public static final int EOL=6;
	public static final int EXP=7;
	public static final int ID=8;
	public static final int INDENT=9;
	public static final int INT=10;
	public static final int LOOKUP=11;
	public static final int NUMBER=12;
	public static final int STATEMENTS=13;
	public static final int STRING=14;
	public static final int Skip=15;
	public static final int Spaces=16;

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
	  


	// delegates
	// delegators
	public Lexer[] getDelegates() {
		return new Lexer[] {};
	}

	public PythonJLexer() {} 
	public PythonJLexer(CharStream input) {
		this(input, new RecognizerSharedState());
	}
	public PythonJLexer(CharStream input, RecognizerSharedState state) {
		super(input,state);
	}
	@Override public String getGrammarFileName() { return "C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g"; }

	// $ANTLR start "T__17"
	public final void mT__17() throws RecognitionException {
		try {
			int _type = T__17;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:26:7: ( '!=' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:26:9: '!='
			{
			match("!="); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__17"

	// $ANTLR start "T__18"
	public final void mT__18() throws RecognitionException {
		try {
			int _type = T__18;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:27:7: ( '%' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:27:9: '%'
			{
			match('%'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__18"

	// $ANTLR start "T__19"
	public final void mT__19() throws RecognitionException {
		try {
			int _type = T__19;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:28:7: ( '(' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:28:9: '('
			{
			match('('); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__19"

	// $ANTLR start "T__20"
	public final void mT__20() throws RecognitionException {
		try {
			int _type = T__20;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:29:7: ( ')' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:29:9: ')'
			{
			match(')'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__20"

	// $ANTLR start "T__21"
	public final void mT__21() throws RecognitionException {
		try {
			int _type = T__21;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:30:7: ( '*' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:30:9: '*'
			{
			match('*'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__21"

	// $ANTLR start "T__22"
	public final void mT__22() throws RecognitionException {
		try {
			int _type = T__22;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:31:7: ( '+' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:31:9: '+'
			{
			match('+'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__22"

	// $ANTLR start "T__23"
	public final void mT__23() throws RecognitionException {
		try {
			int _type = T__23;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:32:7: ( ',' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:32:9: ','
			{
			match(','); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__23"

	// $ANTLR start "T__24"
	public final void mT__24() throws RecognitionException {
		try {
			int _type = T__24;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:33:7: ( '-' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:33:9: '-'
			{
			match('-'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__24"

	// $ANTLR start "T__25"
	public final void mT__25() throws RecognitionException {
		try {
			int _type = T__25;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:34:7: ( '.' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:34:9: '.'
			{
			match('.'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__25"

	// $ANTLR start "T__26"
	public final void mT__26() throws RecognitionException {
		try {
			int _type = T__26;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:35:7: ( '/' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:35:9: '/'
			{
			match('/'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__26"

	// $ANTLR start "T__27"
	public final void mT__27() throws RecognitionException {
		try {
			int _type = T__27;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:36:7: ( ':' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:36:9: ':'
			{
			match(':'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__27"

	// $ANTLR start "T__28"
	public final void mT__28() throws RecognitionException {
		try {
			int _type = T__28;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:37:7: ( '<' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:37:9: '<'
			{
			match('<'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__28"

	// $ANTLR start "T__29"
	public final void mT__29() throws RecognitionException {
		try {
			int _type = T__29;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:38:7: ( '<=' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:38:9: '<='
			{
			match("<="); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__29"

	// $ANTLR start "T__30"
	public final void mT__30() throws RecognitionException {
		try {
			int _type = T__30;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:39:7: ( '=' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:39:9: '='
			{
			match('='); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__30"

	// $ANTLR start "T__31"
	public final void mT__31() throws RecognitionException {
		try {
			int _type = T__31;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:40:7: ( '==' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:40:9: '=='
			{
			match("=="); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__31"

	// $ANTLR start "T__32"
	public final void mT__32() throws RecognitionException {
		try {
			int _type = T__32;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:41:7: ( '>' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:41:9: '>'
			{
			match('>'); 
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__32"

	// $ANTLR start "T__33"
	public final void mT__33() throws RecognitionException {
		try {
			int _type = T__33;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:42:7: ( '>=' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:42:9: '>='
			{
			match(">="); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__33"

	// $ANTLR start "T__34"
	public final void mT__34() throws RecognitionException {
		try {
			int _type = T__34;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:43:7: ( 'and' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:43:9: 'and'
			{
			match("and"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__34"

	// $ANTLR start "T__35"
	public final void mT__35() throws RecognitionException {
		try {
			int _type = T__35;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:44:7: ( 'contains' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:44:9: 'contains'
			{
			match("contains"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__35"

	// $ANTLR start "T__36"
	public final void mT__36() throws RecognitionException {
		try {
			int _type = T__36;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:45:7: ( 'elif' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:45:9: 'elif'
			{
			match("elif"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__36"

	// $ANTLR start "T__37"
	public final void mT__37() throws RecognitionException {
		try {
			int _type = T__37;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:46:7: ( 'else' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:46:9: 'else'
			{
			match("else"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__37"

	// $ANTLR start "T__38"
	public final void mT__38() throws RecognitionException {
		try {
			int _type = T__38;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:47:7: ( 'for' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:47:9: 'for'
			{
			match("for"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__38"

	// $ANTLR start "T__39"
	public final void mT__39() throws RecognitionException {
		try {
			int _type = T__39;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:48:7: ( 'if' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:48:9: 'if'
			{
			match("if"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__39"

	// $ANTLR start "T__40"
	public final void mT__40() throws RecognitionException {
		try {
			int _type = T__40;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:49:7: ( 'in' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:49:9: 'in'
			{
			match("in"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__40"

	// $ANTLR start "T__41"
	public final void mT__41() throws RecognitionException {
		try {
			int _type = T__41;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:50:7: ( 'or' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:50:9: 'or'
			{
			match("or"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__41"

	// $ANTLR start "T__42"
	public final void mT__42() throws RecognitionException {
		try {
			int _type = T__42;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:51:7: ( 'print' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:51:9: 'print'
			{
			match("print"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__42"

	// $ANTLR start "T__43"
	public final void mT__43() throws RecognitionException {
		try {
			int _type = T__43;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:52:7: ( 'while' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:52:9: 'while'
			{
			match("while"); 

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "T__43"

	// $ANTLR start "ID"
	public final void mID() throws RecognitionException {
		try {
			int _type = ID;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:45:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:45:7: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
			{
			if ( (input.LA(1) >= 'A' && input.LA(1) <= 'Z')||input.LA(1)=='_'||(input.LA(1) >= 'a' && input.LA(1) <= 'z') ) {
				input.consume();
			}
			else {
				MismatchedSetException mse = new MismatchedSetException(null,input);
				recover(mse);
				throw mse;
			}
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:45:31: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
			loop1:
			while (true) {
				int alt1=2;
				int LA1_0 = input.LA(1);
				if ( ((LA1_0 >= '0' && LA1_0 <= '9')||(LA1_0 >= 'A' && LA1_0 <= 'Z')||LA1_0=='_'||(LA1_0 >= 'a' && LA1_0 <= 'z')) ) {
					alt1=1;
				}

				switch (alt1) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:
					{
					if ( (input.LA(1) >= '0' && input.LA(1) <= '9')||(input.LA(1) >= 'A' && input.LA(1) <= 'Z')||input.LA(1)=='_'||(input.LA(1) >= 'a' && input.LA(1) <= 'z') ) {
						input.consume();
					}
					else {
						MismatchedSetException mse = new MismatchedSetException(null,input);
						recover(mse);
						throw mse;
					}
					}
					break;

				default :
					break loop1;
				}
			}

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "ID"

	// $ANTLR start "INT"
	public final void mINT() throws RecognitionException {
		try {
			int _type = INT;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:48:4: ( ( '-' )? ( '0' .. '9' )+ )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:48:6: ( '-' )? ( '0' .. '9' )+
			{
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:48:6: ( '-' )?
			int alt2=2;
			int LA2_0 = input.LA(1);
			if ( (LA2_0=='-') ) {
				alt2=1;
			}
			switch (alt2) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:48:6: '-'
					{
					match('-'); 
					}
					break;

			}

			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:48:11: ( '0' .. '9' )+
			int cnt3=0;
			loop3:
			while (true) {
				int alt3=2;
				int LA3_0 = input.LA(1);
				if ( ((LA3_0 >= '0' && LA3_0 <= '9')) ) {
					alt3=1;
				}

				switch (alt3) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:
					{
					if ( (input.LA(1) >= '0' && input.LA(1) <= '9') ) {
						input.consume();
					}
					else {
						MismatchedSetException mse = new MismatchedSetException(null,input);
						recover(mse);
						throw mse;
					}
					}
					break;

				default :
					if ( cnt3 >= 1 ) break loop3;
					EarlyExitException eee = new EarlyExitException(3, input);
					throw eee;
				}
				cnt3++;
			}

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "INT"

	// $ANTLR start "NUMBER"
	public final void mNUMBER() throws RecognitionException {
		try {
			int _type = NUMBER;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:49:7: ( ( INT )? '.' ( '0' .. '9' )+ )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:49:9: ( INT )? '.' ( '0' .. '9' )+
			{
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:49:9: ( INT )?
			int alt4=2;
			int LA4_0 = input.LA(1);
			if ( (LA4_0=='-'||(LA4_0 >= '0' && LA4_0 <= '9')) ) {
				alt4=1;
			}
			switch (alt4) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:49:9: INT
					{
					mINT(); 

					}
					break;

			}

			match('.'); 
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:49:18: ( '0' .. '9' )+
			int cnt5=0;
			loop5:
			while (true) {
				int alt5=2;
				int LA5_0 = input.LA(1);
				if ( ((LA5_0 >= '0' && LA5_0 <= '9')) ) {
					alt5=1;
				}

				switch (alt5) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:
					{
					if ( (input.LA(1) >= '0' && input.LA(1) <= '9') ) {
						input.consume();
					}
					else {
						MismatchedSetException mse = new MismatchedSetException(null,input);
						recover(mse);
						throw mse;
					}
					}
					break;

				default :
					if ( cnt5 >= 1 ) break loop5;
					EarlyExitException eee = new EarlyExitException(5, input);
					throw eee;
				}
				cnt5++;
			}

			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "NUMBER"

	// $ANTLR start "STRING"
	public final void mSTRING() throws RecognitionException {
		try {
			int _type = STRING;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:53:2: ( '\"' ( '\"\"' |~ ( '\\r' | '\\n' | '\"' ) )* '\"' )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:53:4: '\"' ( '\"\"' |~ ( '\\r' | '\\n' | '\"' ) )* '\"'
			{
			match('\"'); 
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:53:8: ( '\"\"' |~ ( '\\r' | '\\n' | '\"' ) )*
			loop6:
			while (true) {
				int alt6=3;
				int LA6_0 = input.LA(1);
				if ( (LA6_0=='\"') ) {
					int LA6_1 = input.LA(2);
					if ( (LA6_1=='\"') ) {
						alt6=1;
					}

				}
				else if ( ((LA6_0 >= '\u0000' && LA6_0 <= '\t')||(LA6_0 >= '\u000B' && LA6_0 <= '\f')||(LA6_0 >= '\u000E' && LA6_0 <= '!')||(LA6_0 >= '#' && LA6_0 <= '\uFFFF')) ) {
					alt6=2;
				}

				switch (alt6) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:53:9: '\"\"'
					{
					match("\"\""); 

					}
					break;
				case 2 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:53:16: ~ ( '\\r' | '\\n' | '\"' )
					{
					if ( (input.LA(1) >= '\u0000' && input.LA(1) <= '\t')||(input.LA(1) >= '\u000B' && input.LA(1) <= '\f')||(input.LA(1) >= '\u000E' && input.LA(1) <= '!')||(input.LA(1) >= '#' && input.LA(1) <= '\uFFFF') ) {
						input.consume();
					}
					else {
						MismatchedSetException mse = new MismatchedSetException(null,input);
						recover(mse);
						throw mse;
					}
					}
					break;

				default :
					break loop6;
				}
			}

			match('\"'); 

			     String s = getText().replace("\\n", "\n").replace("\\r", "\r").replace("\\t", "\t");
			     setText(s.substring(1, s.length()-1).replace("\"\"", "\""));
			   
			}

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "STRING"

	// $ANTLR start "Skip"
	public final void mSkip() throws RecognitionException {
		try {
			int _type = Skip;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:129:2: ( Spaces | Comment )
			int alt7=2;
			int LA7_0 = input.LA(1);
			if ( (LA7_0=='\t'||LA7_0==' ') ) {
				alt7=1;
			}
			else if ( (LA7_0=='#') ) {
				alt7=2;
			}

			else {
				NoViableAltException nvae =
					new NoViableAltException("", 7, 0, input);
				throw nvae;
			}

			switch (alt7) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:129:4: Spaces
					{
					mSpaces(); 

					skip();
					}
					break;
				case 2 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:130:4: Comment
					{
					mComment(); 

					skip();
					}
					break;

			}
			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "Skip"

	// $ANTLR start "EOL"
	public final void mEOL() throws RecognitionException {
		try {
			int _type = EOL;
			int _channel = DEFAULT_TOKEN_CHANNEL;
			CommonToken Spaces1=null;

			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:135:2: ( ( ( '\\r' )? '\\n' | '\\r' ) ( Spaces )? )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:135:4: ( ( '\\r' )? '\\n' | '\\r' ) ( Spaces )?
			{
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:135:4: ( ( '\\r' )? '\\n' | '\\r' )
			int alt9=2;
			int LA9_0 = input.LA(1);
			if ( (LA9_0=='\r') ) {
				int LA9_1 = input.LA(2);
				if ( (LA9_1=='\n') ) {
					alt9=1;
				}

				else {
					alt9=2;
				}

			}
			else if ( (LA9_0=='\n') ) {
				alt9=1;
			}

			else {
				NoViableAltException nvae =
					new NoViableAltException("", 9, 0, input);
				throw nvae;
			}

			switch (alt9) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:135:5: ( '\\r' )? '\\n'
					{
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:135:5: ( '\\r' )?
					int alt8=2;
					int LA8_0 = input.LA(1);
					if ( (LA8_0=='\r') ) {
						alt8=1;
					}
					switch (alt8) {
						case 1 :
							// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:135:5: '\\r'
							{
							match('\r'); 
							}
							break;

					}

					match('\n'); 
					}
					break;
				case 2 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:135:18: '\\r'
					{
					match('\r'); 
					}
					break;

			}

			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:135:24: ( Spaces )?
			int alt10=2;
			int LA10_0 = input.LA(1);
			if ( (LA10_0=='\t'||LA10_0==' ') ) {
				alt10=1;
			}
			switch (alt10) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:135:24: Spaces
					{
					int Spaces1Start377 = getCharIndex();
					int Spaces1StartLine377 = getLine();
					int Spaces1StartCharPos377 = getCharPositionInLine();
					mSpaces(); 
					Spaces1 = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, Spaces1Start377, getCharIndex()-1);
					Spaces1.setLine(Spaces1StartLine377);
					Spaces1.setCharPositionInLine(Spaces1StartCharPos377);

					}
					break;

			}


			     int next = input.LA(1);
			     
			     if(openBrace > 0 || next == '\r' || next == '\n' || next == '#') {
			       // if we're inside a list or on a blank line, ignore all indents, dedents and line breaks
			       skip();
			     }
			     else {
			       emit(new CommonToken(EOL, "EOL"));

			       int indent = Spaces1 == null ? 0 : (Spaces1!=null?Spaces1.getText():null).length();
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

			state.type = _type;
			state.channel = _channel;
		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "EOL"

	// $ANTLR start "Spaces"
	public final void mSpaces() throws RecognitionException {
		try {
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:171:2: ( ( ' ' | '\\t' )+ )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:171:4: ( ' ' | '\\t' )+
			{
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:171:4: ( ' ' | '\\t' )+
			int cnt11=0;
			loop11:
			while (true) {
				int alt11=2;
				int LA11_0 = input.LA(1);
				if ( (LA11_0=='\t'||LA11_0==' ') ) {
					alt11=1;
				}

				switch (alt11) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:
					{
					if ( input.LA(1)=='\t'||input.LA(1)==' ' ) {
						input.consume();
					}
					else {
						MismatchedSetException mse = new MismatchedSetException(null,input);
						recover(mse);
						throw mse;
					}
					}
					break;

				default :
					if ( cnt11 >= 1 ) break loop11;
					EarlyExitException eee = new EarlyExitException(11, input);
					throw eee;
				}
				cnt11++;
			}

			setText(getText().replace("\t", "    "));
			}

		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "Spaces"

	// $ANTLR start "Comment"
	public final void mComment() throws RecognitionException {
		try {
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:175:2: ( '#' (~ ( '\\r' | '\\n' ) )* )
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:175:4: '#' (~ ( '\\r' | '\\n' ) )*
			{
			match('#'); 
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:175:8: (~ ( '\\r' | '\\n' ) )*
			loop12:
			while (true) {
				int alt12=2;
				int LA12_0 = input.LA(1);
				if ( ((LA12_0 >= '\u0000' && LA12_0 <= '\t')||(LA12_0 >= '\u000B' && LA12_0 <= '\f')||(LA12_0 >= '\u000E' && LA12_0 <= '\uFFFF')) ) {
					alt12=1;
				}

				switch (alt12) {
				case 1 :
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:
					{
					if ( (input.LA(1) >= '\u0000' && input.LA(1) <= '\t')||(input.LA(1) >= '\u000B' && input.LA(1) <= '\f')||(input.LA(1) >= '\u000E' && input.LA(1) <= '\uFFFF') ) {
						input.consume();
					}
					else {
						MismatchedSetException mse = new MismatchedSetException(null,input);
						recover(mse);
						throw mse;
					}
					}
					break;

				default :
					break loop12;
				}
			}

			}

		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "Comment"

	// $ANTLR start "DEDENT"
	public final void mDEDENT() throws RecognitionException {
		try {
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:178:17: ()
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:178:19: 
			{
			}

		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "DEDENT"

	// $ANTLR start "INDENT"
	public final void mINDENT() throws RecognitionException {
		try {
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:179:17: ()
			// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:179:19: 
			{
			}

		}
		finally {
			// do for sure before leaving
		}
	}
	// $ANTLR end "INDENT"

	@Override
	public void mTokens() throws RecognitionException {
		// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:8: ( T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | ID | INT | NUMBER | STRING | Skip | EOL )
		int alt13=33;
		alt13 = dfa13.predict(input);
		switch (alt13) {
			case 1 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:10: T__17
				{
				mT__17(); 

				}
				break;
			case 2 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:16: T__18
				{
				mT__18(); 

				}
				break;
			case 3 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:22: T__19
				{
				mT__19(); 

				}
				break;
			case 4 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:28: T__20
				{
				mT__20(); 

				}
				break;
			case 5 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:34: T__21
				{
				mT__21(); 

				}
				break;
			case 6 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:40: T__22
				{
				mT__22(); 

				}
				break;
			case 7 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:46: T__23
				{
				mT__23(); 

				}
				break;
			case 8 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:52: T__24
				{
				mT__24(); 

				}
				break;
			case 9 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:58: T__25
				{
				mT__25(); 

				}
				break;
			case 10 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:64: T__26
				{
				mT__26(); 

				}
				break;
			case 11 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:70: T__27
				{
				mT__27(); 

				}
				break;
			case 12 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:76: T__28
				{
				mT__28(); 

				}
				break;
			case 13 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:82: T__29
				{
				mT__29(); 

				}
				break;
			case 14 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:88: T__30
				{
				mT__30(); 

				}
				break;
			case 15 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:94: T__31
				{
				mT__31(); 

				}
				break;
			case 16 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:100: T__32
				{
				mT__32(); 

				}
				break;
			case 17 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:106: T__33
				{
				mT__33(); 

				}
				break;
			case 18 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:112: T__34
				{
				mT__34(); 

				}
				break;
			case 19 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:118: T__35
				{
				mT__35(); 

				}
				break;
			case 20 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:124: T__36
				{
				mT__36(); 

				}
				break;
			case 21 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:130: T__37
				{
				mT__37(); 

				}
				break;
			case 22 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:136: T__38
				{
				mT__38(); 

				}
				break;
			case 23 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:142: T__39
				{
				mT__39(); 

				}
				break;
			case 24 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:148: T__40
				{
				mT__40(); 

				}
				break;
			case 25 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:154: T__41
				{
				mT__41(); 

				}
				break;
			case 26 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:160: T__42
				{
				mT__42(); 

				}
				break;
			case 27 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:166: T__43
				{
				mT__43(); 

				}
				break;
			case 28 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:172: ID
				{
				mID(); 

				}
				break;
			case 29 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:175: INT
				{
				mINT(); 

				}
				break;
			case 30 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:179: NUMBER
				{
				mNUMBER(); 

				}
				break;
			case 31 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:186: STRING
				{
				mSTRING(); 

				}
				break;
			case 32 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:193: Skip
				{
				mSkip(); 

				}
				break;
			case 33 :
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\pythonj\\PythonJ.g:1:198: EOL
				{
				mEOL(); 

				}
				break;

		}
	}


	protected DFA13 dfa13 = new DFA13(this);
	static final String DFA13_eotS =
		"\10\uffff\1\34\1\35\2\uffff\1\40\1\42\1\44\10\27\1\uffff\1\56\14\uffff"+
		"\4\27\1\64\1\65\1\66\2\27\1\uffff\1\71\3\27\1\75\3\uffff\2\27\1\uffff"+
		"\1\27\1\101\1\102\1\uffff\3\27\2\uffff\1\106\1\107\1\27\2\uffff\1\27\1"+
		"\112\1\uffff";
	static final String DFA13_eofS =
		"\113\uffff";
	static final String DFA13_minS =
		"\1\11\7\uffff\2\60\2\uffff\3\75\1\156\1\157\1\154\1\157\1\146\2\162\1"+
		"\150\1\uffff\1\56\14\uffff\1\144\1\156\1\151\1\162\3\60\2\151\1\uffff"+
		"\1\60\1\164\1\146\1\145\1\60\3\uffff\1\156\1\154\1\uffff\1\141\2\60\1"+
		"\uffff\1\164\1\145\1\151\2\uffff\2\60\1\156\2\uffff\1\163\1\60\1\uffff";
	static final String DFA13_maxS =
		"\1\172\7\uffff\2\71\2\uffff\3\75\1\156\1\157\1\154\1\157\1\156\2\162\1"+
		"\150\1\uffff\1\71\14\uffff\1\144\1\156\1\163\1\162\3\172\2\151\1\uffff"+
		"\1\172\1\164\1\146\1\145\1\172\3\uffff\1\156\1\154\1\uffff\1\141\2\172"+
		"\1\uffff\1\164\1\145\1\151\2\uffff\2\172\1\156\2\uffff\1\163\1\172\1\uffff";
	static final String DFA13_acceptS =
		"\1\uffff\1\1\1\2\1\3\1\4\1\5\1\6\1\7\2\uffff\1\12\1\13\13\uffff\1\34\1"+
		"\uffff\1\37\1\40\1\41\1\10\1\11\1\36\1\15\1\14\1\17\1\16\1\21\1\20\11"+
		"\uffff\1\35\5\uffff\1\27\1\30\1\31\2\uffff\1\22\3\uffff\1\26\3\uffff\1"+
		"\24\1\25\3\uffff\1\32\1\33\2\uffff\1\23";
	static final String DFA13_specialS =
		"\113\uffff}>";
	static final String[] DFA13_transitionS = {
			"\1\32\1\33\2\uffff\1\33\22\uffff\1\32\1\1\1\31\1\32\1\uffff\1\2\2\uffff"+
			"\1\3\1\4\1\5\1\6\1\7\1\10\1\11\1\12\12\30\1\13\1\uffff\1\14\1\15\1\16"+
			"\2\uffff\32\27\4\uffff\1\27\1\uffff\1\17\1\27\1\20\1\27\1\21\1\22\2\27"+
			"\1\23\5\27\1\24\1\25\6\27\1\26\3\27",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"\12\30",
			"\12\36",
			"",
			"",
			"\1\37",
			"\1\41",
			"\1\43",
			"\1\45",
			"\1\46",
			"\1\47",
			"\1\50",
			"\1\51\7\uffff\1\52",
			"\1\53",
			"\1\54",
			"\1\55",
			"",
			"\1\36\1\uffff\12\30",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"\1\57",
			"\1\60",
			"\1\61\11\uffff\1\62",
			"\1\63",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			"\1\67",
			"\1\70",
			"",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			"\1\72",
			"\1\73",
			"\1\74",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			"",
			"",
			"",
			"\1\76",
			"\1\77",
			"",
			"\1\100",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			"",
			"\1\103",
			"\1\104",
			"\1\105",
			"",
			"",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			"\1\110",
			"",
			"",
			"\1\111",
			"\12\27\7\uffff\32\27\4\uffff\1\27\1\uffff\32\27",
			""
	};

	static final short[] DFA13_eot = DFA.unpackEncodedString(DFA13_eotS);
	static final short[] DFA13_eof = DFA.unpackEncodedString(DFA13_eofS);
	static final char[] DFA13_min = DFA.unpackEncodedStringToUnsignedChars(DFA13_minS);
	static final char[] DFA13_max = DFA.unpackEncodedStringToUnsignedChars(DFA13_maxS);
	static final short[] DFA13_accept = DFA.unpackEncodedString(DFA13_acceptS);
	static final short[] DFA13_special = DFA.unpackEncodedString(DFA13_specialS);
	static final short[][] DFA13_transition;

	static {
		int numStates = DFA13_transitionS.length;
		DFA13_transition = new short[numStates][];
		for (int i=0; i<numStates; i++) {
			DFA13_transition[i] = DFA.unpackEncodedString(DFA13_transitionS[i]);
		}
	}

	protected class DFA13 extends DFA {

		public DFA13(BaseRecognizer recognizer) {
			this.recognizer = recognizer;
			this.decisionNumber = 13;
			this.eot = DFA13_eot;
			this.eof = DFA13_eof;
			this.min = DFA13_min;
			this.max = DFA13_max;
			this.accept = DFA13_accept;
			this.special = DFA13_special;
			this.transition = DFA13_transition;
		}
		@Override
		public String getDescription() {
			return "1:1: Tokens : ( T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | ID | INT | NUMBER | STRING | Skip | EOL );";
		}
	}

}
