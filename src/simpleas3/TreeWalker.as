// $ANTLR 3.5 C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\TreeWalker.g 2014-05-12 19:03:34
package {


    import nodes.*;
    import flash.utils.Dictionary ;

import org.antlr.runtime.*;
    import org.antlr.runtime.tree.*;

    public class TreeWalker extends TreeParser {
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

        public function TreeWalker(input:TreeNodeStream, state:RecognizerSharedState = null) {
            super(input, state);
        }

        public override function get tokenNames():Array { return TreeWalker.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\TreeWalker.g"; }


        // $ANTLR start prog
        // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\TreeWalker.g:15:1: prog returns [SLNode node] : 'print' stuff= INT ;
        public final function prog():
        SLNode
         {
            var node:SLNode = null;


            var stuff:CommonTree=null;

            try {
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\TreeWalker.g:15:27: ( 'print' stuff= INT )
                // C:\\Users\\Jangedoo\\Documents\\GitHub\\PythonScriptingLanguage\\src\\simpleas3\\TreeWalker.g:15:29: 'print' stuff= INT
                {
                matchStream(input,8,FOLLOW_8_in_prog52); 

                stuff=CommonTree(matchStream(input,INT,FOLLOW_INT_in_prog56)); 

                 node = new PrintNode(new IntNode((stuff!=null?stuff.text:null)));



                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }

            finally {
            }
            return node;
        }
        // $ANTLR end prog

           // Delegated rules


     

        public static const FOLLOW_8_in_prog52:BitSet = new BitSet([0x00000020, 0x00000000]);
        public static const FOLLOW_INT_in_prog56:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}