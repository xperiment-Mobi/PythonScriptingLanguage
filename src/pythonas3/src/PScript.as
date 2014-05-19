
package
{
	import org.antlr.runtime.tree.TreeParser;
	import TreeWalker;
import PythonJ_AWParser;
import PythonJ_AWLexer;
	import flash.display.Sprite;
	import flash.events.Event;
	import org.antlr.runtime.ANTLRFileStream;
	import org.antlr.runtime.ANTLRStringStream;
	import org.antlr.runtime.CharStream;
	import org.antlr.runtime.CommonTokenStream;
	import org.antlr.runtime.ParserRuleReturnScope;
	import org.antlr.runtime.tree.CommonTree;
	import org.antlr.runtime.tree.CommonTreeNodeStream;
	import com.xperiment.PythonScript.nodes.SLNode;
	
	
	public class PScript extends Sprite
	{
		private static var lexer:PythonJ_AWLexer;
		private static var tokens:CommonTokenStream;
		private static var parser:PythonJ_AWParser;
		private static var _astTA:Object;
		
		public function PScript(): void
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			
			
		}
		
		public static function init():void
		{
			/*var demo:String = "x =1+1"
			
			var stream:ANTLRStringStream = new ANTLRStringStream(demo);
			
			lexer = new PythonJ_AWLexer(new ANTLRStringStream (demo));
			tokens = new CommonTokenStream(lexer);
			
			parser ||= new PythonJ_AWParser(tokens);
			var r:ParserRuleReturnScope = parser.expr()
			
			// This is the root of the AST.
			var root:CommonTree = (CommonTree)(r.tree);
			trace("text:"+root.toStringTree());
			
			var nodes:CommonTreeNodeStream = new CommonTreeNodeStream(root);
			nodes.tokenStream = tokens;
			var walker:TreeWalker = new TreeWalker(nodes);
			*/
			

			var code:ANTLRStringStream = new ANTLRStringStream(parse("x=10 \n print 2+ x"));
			
			var lexer:PythonJ_AWLexer = new PythonJ_AWLexer(code);
			
			
			var parser:PythonJ_AWParser = new PythonJ_AWParser(new CommonTokenStream(lexer));
			
			var tree:Object = parser.prog().tree;
			
			trace("LOL");
			
			// walk the tree
			var nodes:CommonTreeNodeStream = new CommonTreeNodeStream(tree);
			
			// pass the reference to the Map of functions to the tree walker
			//var walker:TreeParser = new TreeParser(nodes);
			var walker:TreeWalker = new TreeWalker(nodes);
			
			// get the returned node
			var returned:SLNode  = walker.prog();
			trace(returned.evaluate());
			
		}
		
		private static function parse(str:String):String{
			var output:String = str;
			//output = output + "\n";
			return output;
		}
		
	}
}