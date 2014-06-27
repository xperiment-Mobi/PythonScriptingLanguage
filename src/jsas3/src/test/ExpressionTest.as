package test 
{
	import com.xperiment.PythonScript.nodes.SLNode;
	import com.xperiment.PythonScript.nodes.SLValue;
	import org.antlr.runtime.ANTLRStringStream;
	import org.antlr.runtime.CommonTokenStream;
	
	import org.antlr.runtime.tree.Tree;
	import org.antlr.runtime.tree.CommonTreeNodeStream;
	/**
	 * ...
	 * @author sanjay
	 */
	public class ExpressionTest extends TestBase 
	{
	
		public function ExpressionTest(input:String, output:String) 
		{
			super(input, output);
			var tree:Object = parser.expression().tree;
			
			// walk the tree
			var nodes:CommonTreeNodeStream = new CommonTreeNodeStream(tree);
			
			// pass the reference to the Map of functions to the tree walker
			
			walker = new TreeWalker(nodes);
			
		}
		
		override public function Evaluate():Boolean 
		{
			var node:SLNode = walker.expression();
			var value:SLValue = node.evaluate();
			var result:Boolean = (value.asString() == output);
			trace("\n");
			trace("Evaluating " + input);
			trace("Expected output = " + output + " Actual output = " + value.asString());
			trace(result ? "Test successful" : "Test failed");
			return result;
		}
		
	}

}