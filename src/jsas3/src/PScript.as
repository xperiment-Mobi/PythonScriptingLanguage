
package
{
	import com.xperiment.PythonScript.nodes.AddNode;
	import com.xperiment.PythonScript.nodes.AtomNode;
	import com.xperiment.PythonScript.nodes.CompNode;
	import com.xperiment.PythonScript.nodes.DivNode;
	import com.xperiment.PythonScript.nodes.LookupNode;
	import com.xperiment.PythonScript.nodes.MulNode;
	import com.xperiment.PythonScript.nodes.PowNode;
	import com.xperiment.PythonScript.nodes.PropertyCallNode;
	import com.xperiment.PythonScript.nodes.SLValue;
	import com.xperiment.PythonScript.nodes.SubNode;
	import com.xperiment.PythonScript.nodes.UnaryNode;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
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
		private static var tokens:CommonTokenStream;
		private static var _astTA:Object;
		var myLoader:URLLoader;
		
		var code:String;
		
		function loadComplete(e:Event):void
		{
			//code = (myLoader.data);
			var code:ANTLRStringStream = new ANTLRStringStream(myLoader.data);
			
			var lexer:JS_AWLexer = new JS_AWLexer(code);
			
			var parser:JS_AWParser = new JS_AWParser(new CommonTokenStream(lexer));
			
			var tree:Object = parser.prog().tree;
			
			// walk the tree
			var nodes:CommonTreeNodeStream = new CommonTreeNodeStream(tree);
			
			// pass the reference to the Map of functions to the tree walker
			
			var walker:TreeWalker = new TreeWalker(nodes);
			
			// get the returned node
			var returned:SLNode = walker.prog();
			returned.evaluate();
		}
		
		public function PScript():void
		{
			myLoader= new URLLoader(new URLRequest("code.txt"));
			myLoader.addEventListener(Event.COMPLETE, loadComplete);
			
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		
		}
		
		public static function init():void
		{			
		
		}
	
	}
}