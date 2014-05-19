package
{
	import org.antlr.runtime.tree.TreeParser;
	
	public class TestClass implements TreeParser
	{
		public static const tokenNames:Array = ["<invalid>", "<EOR>", "<DOWN>", "<UP>", "ASSIGNMENT", "Add", "And", "Assert", "Assign", "BLOCK", "Bool", "CBrace", "CBracket", "CParen", "Colon", "Comma", "Comment", "Def", "Digit", "Divide", "Do", "EXP", "EXP_LIST", "Else", "End", "Equals", "Excl", "FUNCTION", "FUNC_CALL", "For", "GT", "GTEquals", "ID_LIST", "IF", "INDEXES", "Identifier", "If", "In", "Int", "LIST", "LOOKUP", "LT", "LTEquals", "Modulus", "Multiply", "NEGATE", "NEquals", "NUMBER", "Null", "OBrace", "OBracket", "OParen", "Or", "Pow", "Print", "Println", "QMark", "RETURN", "Return", "SColon", "STATEMENTS", "STRING", "Size", "Space", "Subtract", "TERNARY", "To", "UNARY_DECR", "UNARY_INCR", "UNARY_MIN", "Var", "While", "'++'", "'--'", "'.'"];
		
		public static const EOF:int = -1;
		public static const T__72:int = 72;
		public static const T__73:int = 73;
		public static const T__74:int = 74;
		public static const ASSIGNMENT:int = 4;
		public static const Add:int = 5;
		public static const And:int = 6;
		public static const Assert:int = 7;
		public static const Assign:int = 8;
		public static const BLOCK:int = 9;
		public static const Bool:int = 10;
		public static const CBrace:int = 11;
		public static const CBracket:int = 12;
		public static const CParen:int = 13;
		public static const Colon:int = 14;
		public static const Comma:int = 15;
		public static const Comment:int = 16;
		public static const Def:int = 17;
		public static const Digit:int = 18;
		public static const Divide:int = 19;
		public static const Do:int = 20;
		public static const EXP:int = 21;
		public static const EXP_LIST:int = 22;
		public static const Else:int = 23;
		public static const End:int = 24;
		public static const Equals:int = 25;
		public static const Excl:int = 26;
		public static const FUNCTION:int = 27;
		public static const FUNC_CALL:int = 28;
		public static const For:int = 29;
		public static const GT:int = 30;
		public static const GTEquals:int = 31;
		public static const ID_LIST:int = 32;
		public static const IF:int = 33;
		public static const INDEXES:int = 34;
		public static const Identifier:int = 35;
		public static const If:int = 36;
		public static const In:int = 37;
		public static const Int:int = 38;
		public static const LIST:int = 39;
		public static const LOOKUP:int = 40;
		public static const LT:int = 41;
		public static const LTEquals:int = 42;
		public static const Modulus:int = 43;
		public static const Multiply:int = 44;
		public static const NEGATE:int = 45;
		public static const NEquals:int = 46;
		public static const NUMBER:int = 47;
		public static const Null:int = 48;
		public static const OBrace:int = 49;
		public static const OBracket:int = 50;
		public static const OParen:int = 51;
		public static const Or:int = 52;
		public static const Pow:int = 53;
		public static const Print:int = 54;
		public static const Println:int = 55;
		public static const QMark:int = 56;
		public static const RETURN:int = 57;
		public static const Return:int = 58;
		public static const SColon:int = 59;
		public static const STATEMENTS:int = 60;
		public static const STRING:int = 61;
		public static const Size:int = 62;
		public static const Space:int = 63;
		public static const Subtract:int = 64;
		public static const TERNARY:int = 65;
		public static const To:int = 66;
		public static const UNARY_DECR:int = 67;
		public static const UNARY_INCR:int = 68;
		public static const UNARY_MIN:int = 69;
		public static const Var:int = 70;
		public static const While:int = 71;
		
		// delegates
		// delegators
		
		public function TreeWalker(input:TreeNodeStream, state:RecognizerSharedState = null)
		{
			super(input, state);
		}
		
		public override function get tokenNames():Array
		{
			return TreeWalker.tokenNames;
		}
		
		public override function get grammarFileName():String
		{
			return "C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g";
		}
		
		public var memory:Dictionary = new Dictionary();
		
		// $ANTLR start prog
		// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:20:1: prog returns [SLNode node] : block ;
		public final function prog():SLNode
		{
			var node:SLNode = null;
			
			var block1:SLNode = null;
			
			try
			{
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:21:3: ( block )
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:21:6: block
				{
					pushFollow(FOLLOW_block_in_prog62);
					block1 = block();
					
					state._fsp = state._fsp - 1;
					
					node = block1
					;
				
				}
				
			}
			catch (re:RecognitionException)
			{
				reportError(re);
				recoverStream(input, re);
			}
			
			finally
			{
			}
			return node;
		}
		
		// $ANTLR end prog
		
		// $ANTLR start block
		// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:24:1: block returns [SLNode node] : ^( BLOCK ^( STATEMENTS ( statement )* ) ) ;
		public final function block():SLNode
		{
			var node:SLNode = null;
			
			var statement2:SLNode = null;
			
			var bn:BlockNode = new BlockNode();
			node = bn;
			
			try
			{
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:29:3: ( ^( BLOCK ^( STATEMENTS ( statement )* ) ) )
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:29:6: ^( BLOCK ^( STATEMENTS ( statement )* ) )
				{
					matchStream(input, BLOCK, FOLLOW_BLOCK_in_block88);
					
					matchStream(input, TokenConstants.DOWN, null);
					matchStream(input, STATEMENTS, FOLLOW_STATEMENTS_in_block91);
					
					if (input.LA(1) == TokenConstants.DOWN)
					{
						matchStream(input, TokenConstants.DOWN, null);
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:29:27: ( statement )*
						loop1: do
						{
							var alt1:int = 2;
							var LA1_0:int = input.LA(1);
							
							if ((LA1_0 == 4 || (LA1_0 >= 28 && LA1_0 <= 29) || LA1_0 == 33 || LA1_0 == 71))
							{
								alt1 = 1;
							}
							
							switch (alt1)
							{
								case 1: 
									// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:29:28: statement
								{
									pushFollow(FOLLOW_statement_in_block94);
									statement2 = statement();
									
									state._fsp = state._fsp - 1;
									
									bn.addStatement(statement2);
									
								}
									break;
								
								default: 
									break loop1;
							}
						} while (true);
						
						matchStream(input, TokenConstants.UP, null);
					}
					
					matchStream(input, TokenConstants.UP, null);
				
				}
				
			}
			catch (re:RecognitionException)
			{
				reportError(re);
				recoverStream(input, re);
			}
			
			finally
			{
			}
			return node;
		}
		
		// $ANTLR end block
		
		// $ANTLR start statement
		// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:32:1: statement returns [SLNode node] : ( assignment | functionCall | ifStatement | forStatement | whileStatement );
		public final function statement():SLNode
		{
			var node:SLNode = null;
			
			var assignment3:SLNode = null;
			
			var functionCall4:SLNode = null;
			
			var ifStatement5:SLNode = null;
			
			var forStatement6:SLNode = null;
			
			var whileStatement7:SLNode = null;
			
			try
			{
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:33:3: ( assignment | functionCall | ifStatement | forStatement | whileStatement )
				var alt2:int = 5;
				switch (input.LA(1))
				{
					case ASSIGNMENT: 
					{
						alt2 = 1;
					}
						break;
					case FUNC_CALL: 
					{
						alt2 = 2;
					}
						break;
					case IF: 
					{
						alt2 = 3;
					}
						break;
					case For: 
					{
						alt2 = 4;
					}
						break;
					case While: 
					{
						alt2 = 5;
					}
						break;
					default: 
						throw new NoViableAltException("", 2, 0, input);
				
				}
				
				switch (alt2)
				{
					case 1: 
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:33:6: assignment
					{
						pushFollow(FOLLOW_assignment_in_statement118);
						assignment3 = assignment();
						
						state._fsp = state._fsp - 1;
						
						node = assignment3
						;
						
					}
						break;
					case 2: 
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:34:6: functionCall
					{
						pushFollow(FOLLOW_functionCall_in_statement131);
						functionCall4 = functionCall();
						
						state._fsp = state._fsp - 1;
						
						node = functionCall4
						;
						
					}
						break;
					case 3: 
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:35:6: ifStatement
					{
						pushFollow(FOLLOW_ifStatement_in_statement142);
						ifStatement5 = ifStatement();
						
						state._fsp = state._fsp - 1;
						
						node = ifStatement5
						;
						
					}
						break;
					case 4: 
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:36:6: forStatement
					{
						pushFollow(FOLLOW_forStatement_in_statement154);
						forStatement6 = forStatement();
						
						state._fsp = state._fsp - 1;
						
						node = forStatement6
						;
						
					}
						break;
					case 5: 
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:37:6: whileStatement
					{
						pushFollow(FOLLOW_whileStatement_in_statement165);
						whileStatement7 = whileStatement();
						
						state._fsp = state._fsp - 1;
						
						node = whileStatement7
						;
						
					}
						break;
				
				}
			}
			catch (re:RecognitionException)
			{
				reportError(re);
				recoverStream(input, re);
			}
			
			finally
			{
			}
			return node;
		}
		
		// $ANTLR end statement
		
		// $ANTLR start assignment
		// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:40:1: assignment returns [SLNode node] : ^( ASSIGNMENT Identifier ( indexes )? expression ) ;
		public final function assignment():SLNode
		{
			var node:SLNode = null;
			
			var Identifier8:CommonTree = null;
			var indexes9:Vector.<SLNode> = null;
			
			var expression10:SLNode = null;
			
			try
			{
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:41:3: ( ^( ASSIGNMENT Identifier ( indexes )? expression ) )
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:41:6: ^( ASSIGNMENT Identifier ( indexes )? expression )
				{
					matchStream(input, ASSIGNMENT, FOLLOW_ASSIGNMENT_in_assignment186);
					
					matchStream(input, TokenConstants.DOWN, null);
					Identifier8 = CommonTree(matchStream(input, Identifier, FOLLOW_Identifier_in_assignment188));
					
					// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:41:30: ( indexes )?
					var alt3:int = 2;
					var LA3_0:int = input.LA(1);
					
					if ((LA3_0 == 34))
					{
						alt3 = 1;
					}
					switch (alt3)
					{
						case 1: 
							// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:41:30: indexes
						{
							pushFollow(FOLLOW_indexes_in_assignment190);
							indexes9 = indexes();
							
							state._fsp = state._fsp - 1;
							
						}
							break;
					
					}
					
					pushFollow(FOLLOW_expression_in_assignment193);
					expression10 = expression();
					
					state._fsp = state._fsp - 1;
					
					matchStream(input, TokenConstants.UP, null);
					
					node = new AssignmentNode((Identifier8 != null ? Identifier8.text : null), indexes9, expression10, memory);
				
				}
				
			}
			catch (re:RecognitionException)
			{
				reportError(re);
				recoverStream(input, re);
			}
			
			finally
			{
			}
			return node;
		}
		
		// $ANTLR end assignment
		
		// $ANTLR start functionCall
		// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:44:1: functionCall returns [SLNode node] : ( ^( FUNC_CALL obj= Identifier func= Identifier (params= exprList )? ) | ^( FUNC_CALL Println ( expression )? ) | ^( FUNC_CALL Print expression ) );
		public final function functionCall():SLNode
		{
			var node:SLNode = null;
			
			var obj:CommonTree = null;
			var func:CommonTree = null;
			var params:Vector.<SLNode> = null;
			
			var expression11:SLNode = null;
			
			var expression12:SLNode = null;
			
			try
			{
				// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:45:3: ( ^( FUNC_CALL obj= Identifier func= Identifier (params= exprList )? ) | ^( FUNC_CALL Println ( expression )? ) | ^( FUNC_CALL Print expression ) )
				var alt6:int = 3;
				var LA6_0:int = input.LA(1);
				
				if ((LA6_0 == 28))
				{
					var LA6_1:int = input.LA(2);
					
					if ((LA6_1 == 2))
					{
						switch (input.LA(3))
						{
							case Identifier: 
							{
								alt6 = 1;
							}
								break;
							case Println: 
							{
								alt6 = 2;
							}
								break;
							case Print: 
							{
								alt6 = 3;
							}
								break;
							default: 
								throw new NoViableAltException("", 6, 2, input);
						
						}
						
					}
					else
					{
						throw new NoViableAltException("", 6, 1, input);
						
					}
				}
				else
				{
					throw new NoViableAltException("", 6, 0, input);
					
				}
				switch (alt6)
				{
					case 1: 
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:45:6: ^( FUNC_CALL obj= Identifier func= Identifier (params= exprList )? )
					{
						matchStream(input, FUNC_CALL, FOLLOW_FUNC_CALL_in_functionCall215);
						
						matchStream(input, TokenConstants.DOWN, null);
						obj = CommonTree(matchStream(input, Identifier, FOLLOW_Identifier_in_functionCall219));
						
						func = CommonTree(matchStream(input, Identifier, FOLLOW_Identifier_in_functionCall223));
						
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:45:55: (params= exprList )?
						var alt4:int = 2;
						var LA4_0:int = input.LA(1);
						
						if ((LA4_0 == 22))
						{
							alt4 = 1;
						}
						switch (alt4)
						{
							case 1: 
								// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:45:55: params= exprList
							{
								pushFollow(FOLLOW_exprList_in_functionCall227);
								params = exprList();
								
								state._fsp = state._fsp - 1;
								
							}
								break;
						
						}
						
						matchStream(input, TokenConstants.UP, null);
						
						node = new FunctionCallNode((obj != null ? obj.text : null), func.text, params);
						
					}
						break;
					case 2: 
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:46:6: ^( FUNC_CALL Println ( expression )? )
					{
						matchStream(input, FUNC_CALL, FOLLOW_FUNC_CALL_in_functionCall239);
						
						matchStream(input, TokenConstants.DOWN, null);
						matchStream(input, Println, FOLLOW_Println_in_functionCall241);
						
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:46:26: ( expression )?
						var alt5:int = 2;
						var LA5_0:int = input.LA(1);
						
						if (((LA5_0 >= 5 && LA5_0 <= 6) || LA5_0 == 10 || LA5_0 == 19 || LA5_0 == 25 || (LA5_0 >= 30 && LA5_0 <= 31) || LA5_0 == 37 || (LA5_0 >= 40 && LA5_0 <= 48) || (LA5_0 >= 52 && LA5_0 <= 53) || (LA5_0 >= 64 && LA5_0 <= 65) || (LA5_0 >= 67 && LA5_0 <= 69)))
						{
							alt5 = 1;
						}
						switch (alt5)
						{
							case 1: 
								// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:46:26: expression
							{
								pushFollow(FOLLOW_expression_in_functionCall243);
								expression11 = expression();
								
								state._fsp = state._fsp - 1;
								
							}
								break;
						
						}
						
						matchStream(input, TokenConstants.UP, null);
						
						node = new PrintlnNode(expression11);
						
					}
						break;
					case 3: 
						// C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:47:6: ^( FUNC_CALL Print expression )
					{
						matchStream(input, FUNC_CALL, FOLLOW_FUNC_CALL_in_functionCall256);
						
						matchStream(input, TokenConstants.DOWN, null);
						matchStream(input, Print, FOLLOW_Print_in_functionCall258);
						
						pushFollow(FOLLOW_expression_in_functionCall260);
						expression12 = expression();
						
						state._fsp = state._fsp - 1;
						
						matchStream(input, TokenConstants.UP, null);
						
						node = new PrintNode(expression12);
						
					}
						break;
				
				}
			}
			catch (re:RecognitionException)
			{
				reportError(re);
				recoverStream(input, re);
			}
			
			finally
			{
			}
			return node;
		}
		// $ANTLR end functionCall
		
		// $ANTLR start ifStatement
        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:50:1: ifStatement returns [SLNode node] : ^( IF ifStat[ifNode] ( elseIfStat[ifNode] )* ( elseStat[ifNode] )? ) ;
        public final function ifStatement():
        SLNode
         {
            var node:SLNode = null;


            IfNode ifNode = new IfNode();
            try {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:53:3: ( ^( IF ifStat[ifNode] ( elseIfStat[ifNode] )* ( elseStat[ifNode] )? ) )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:53:6: ^( IF ifStat[ifNode] ( elseIfStat[ifNode] )* ( elseStat[ifNode] )? )
                {
                matchStream(input,IF,FOLLOW_IF_in_ifStatement297); 

                matchStream(input, TokenConstants.DOWN, null); 
                pushFollow(FOLLOW_ifStat_in_ifStatement299);
                ifStat(ifNode);

                state._fsp = state._fsp - 1;


                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:53:26: ( elseIfStat[ifNode] )*
                loop7:
                do {
                    var alt7:int=2;
                    var LA7_0:int = input.LA(1);

                    if ( (LA7_0==21) ) {
                        var LA7_1:int = input.LA(2);

                        if ( (LA7_1==2) ) {
                            var LA7_3:int = input.LA(3);

                            if ( ((LA7_3 >= 5 && LA7_3 <= 6)||LA7_3==10||LA7_3==19||LA7_3==25||(LA7_3 >= 30 && LA7_3 <= 31)||LA7_3==37||(LA7_3 >= 40 && LA7_3 <= 48)||(LA7_3 >= 52 && LA7_3 <= 53)||(LA7_3 >= 64 && LA7_3 <= 65)||(LA7_3 >= 67 && LA7_3 <= 69)) ) {
                                alt7=1;
                            }


                        }


                    }


                    switch (alt7) {
                	case 1 :
                	    // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:53:27: elseIfStat[ifNode]
                	    {
                	    pushFollow(FOLLOW_elseIfStat_in_ifStatement303);
                	    elseIfStat(ifNode);

                	    state._fsp = state._fsp - 1;


                	    }
                	    break;

                	default :
                	    break loop7;
                    }
                } while (true);


                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:53:48: ( elseStat[ifNode] )?
                var alt8:int=2;
                var LA8_0:int = input.LA(1);

                if ( (LA8_0==21) ) {
                    alt8=1;
                }
                switch (alt8) {
                    case 1 :
                        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\jsas3\\src\\TreeWalker.g:53:49: elseStat[ifNode]
                        {
                        pushFollow(FOLLOW_elseStat_in_ifStatement309);
                        elseStat(ifNode);

                        state._fsp = state._fsp - 1;


                        }
                        break;

                }


                matchStream(input, TokenConstants.UP, null); 


                }

                node = ifNode;

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }

            finally {
            }
            return node;
        }
        // $ANTLR end ifStatement
	
	} //end class
}