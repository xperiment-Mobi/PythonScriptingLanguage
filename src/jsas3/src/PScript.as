
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
	import test.ExpressionTest;
	import test.TestBase;
	import flash.utils.Dictionary ;
	
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
			//myLoader= new URLLoader(new URLRequest("code.txt"));
			//myLoader.addEventListener(Event.COMPLETE, loadComplete);
			if (stage)
				init();
				
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		
		}
		
		public static function init():void
		{	
			var testCases:Dictionary = new Dictionary();
			testCases["24+4"] = "28";								//add test
			testCases["600-200"] = "400";							//subtract test
			testCases["11*4"] = "44";								//multiplication test
			testCases["1200/6"] = "200";							//division test
			testCases["5==4 ? \"true\" : \"false\" "] = "false";	//shorthand test
			testCases["5>10"] = "false";							//relational op test
			testCases["24< 200"] = "true";							//relational op test
			testCases["234 >= 234"] = "true";						//relational op test
			testCases["99 <= 98"] = "false";						//relational op test
			testCases[" (5==5) && (100==100) "] = "true";			//and op test
			testCases[" (5==5) && (100==22) "] = "false";			//and op test
			testCases[" (5==5) || (100==100) "] = "true";			//or op test
			testCases[" (5==5) || (100==22) "] = "true";			//or op test
			
			testCases["-5"] = "-5";
			testCases["! (2==3)"] = "true";
			testCases["2^5"] = "32";
			
			for(var key:Object in testCases)
			{
				var tester:ExpressionTest = new ExpressionTest(String(key), String(testCases[key]));
				tester.Evaluate();
			}
		}
	
	}
}