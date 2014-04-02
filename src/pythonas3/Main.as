package com.xperiment.PythonScript
{
	import org.antlr.runtime.ANTLRStringStream;
	import org.antlr.runtime.CommonTokenStream;
	import org.antlr.runtime.ParserRuleReturnScope;
	import org.antlr.runtime.tree.CommonTree;
	import org.antlr.runtime.tree.CommonTreeNodeStream;
	import com.xperiment.PythonScript.nodes.SLNode;


	public class Main
	{
		private static var lexer:PythonJ_AWLexer;
		private static var tokens:CommonTokenStream;
		private static var parser:PythonJ_AWParser;
		private static var _astTA:Object;
		
		public function Main()
		{
			init();
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
			
			var demo:String = parse("x = 'Hello World'/nprint x");
			
			var lexer:PythonJ_AWLexer = new PythonJ_AWLexer(new ANTLRStringStream(demo));
			
			//var parser:PythonJ_AWParser = new PythonJ_AWParser(new CommonTokenStream(lexer));
			
	
			
			
			//var tree:CommonTree  = CommonTree(parser.prog().tree());
			/*
			
			// walk the tree
			var nodes:CommonTreeNodeStream = new CommonTreeNodeStream(tree);
			
			// pass the reference to the Map of functions to the tree walker
			var walker:TreeWalker = new TreeWalker(nodes);
			
			// get the returned node
			var returned:SLNode  = walker.prog();
			// System.out.println(returned == null ? "null" : returned.evaluate());
			trace(returned.evaluate());*/
			
		}
		
		private static function parse(str:String):String{
			return str+"\n";
		}
		
		
	}
}