package test 
{
	import org.antlr.runtime.ANTLRStringStream;
	import org.antlr.runtime.CommonTokenStream;
	
	import org.antlr.runtime.tree.Tree;
	import org.antlr.runtime.tree.CommonTreeNodeStream;
	
	/**
	 * ...
	 * @author sanjay
	 */
	public class TestBase 
	{
		var lexer:JS_AWLexer;
		var parser:JS_AWParser;
		var walker:TreeWalker;
		var code:ANTLRStringStream;
		var input:String;
		var output:String;
		
		public function TestBase(input:String, output:String) 
		{			
			this.output = output;
			this.input = input;
			code = new ANTLRStringStream(input);
			
			lexer = new JS_AWLexer(code);
			parser = new JS_AWParser(new CommonTokenStream(lexer));			
			
		}
		
		public function Evaluate():Boolean
		{
			return null;
		}
		
	}

}