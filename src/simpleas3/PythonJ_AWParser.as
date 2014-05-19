// $ANTLR 3.5 C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g 2014-05-12 19:03:35
package {
import org.antlr.runtime.*;

import org.antlr.runtime.tree.*;


    public class PythonJ_AWParser extends Parser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "NUMBER", "WS", "'print'"
        ];

        public static const EOF:int=-1;
        public static const T__8:int=8;
        public static const ID:int=4;
        public static const INT:int=5;
        public static const NUMBER:int=6;
        public static const WS:int=7;

        // delegates
        // delegators

        public function PythonJ_AWParser(input:TokenStream, state:RecognizerSharedState = null) {
            super(input, state);
        }

    protected var adaptor:TreeAdaptor = new CommonTreeAdaptor();

    override public function set treeAdaptor(adaptor:TreeAdaptor):void {
        this.adaptor = adaptor;
    }
    override public function get treeAdaptor():TreeAdaptor {
        return adaptor;
    }
        public override function get tokenNames():Array { return PythonJ_AWParser.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g"; }


        // $ANTLR start prog
        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:22:1: prog : 'print' INT ;
        public final function prog():
        ParserRuleReturnScope
         {
            var retval:
            ParserRuleReturnScope
             = new 
            ParserRuleReturnScope
            ();
            retval.start = input.LT(1);


            var root_0:Object = null;

            var string_literal1:Token=null;
            var INT2:Token=null;

            var string_literal1_tree:Object=null;
            var INT2_tree:Object=null;

            try {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:22:6: ( 'print' INT )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\PythonJ_AW.g:22:8: 'print' INT
                {
                root_0 = Object(adaptor.nil());


                string_literal1=Token(matchStream(input,8,FOLLOW_8_in_prog164)); 
                string_literal1_tree = 
                Object(adaptor.create(string_literal1))
                ;
                adaptor.addChild(root_0, string_literal1_tree);


                INT2=Token(matchStream(input,INT,FOLLOW_INT_in_prog166)); 
                INT2_tree = 
                Object(adaptor.create(INT2))
                ;
                adaptor.addChild(root_0, INT2_tree);


                }

                retval.stop = input.LT(-1);


                retval.tree = Object(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = Object(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }

            finally {
            }
            return retval;
        }
        // $ANTLR end prog

           // Delegated rules


     

        public static const FOLLOW_8_in_prog164:BitSet = new BitSet([0x00000020, 0x00000000]);
        public static const FOLLOW_INT_in_prog166:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}