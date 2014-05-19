package com.xperiment.PythonScript.nodes
{
	
	/**
	 * ...
	 * @author sanjay
	 */
	public class PrintLnNode implements SLNode
	{
		public var node:SLNode;
		
		public function PrintLnNode(n:SLNode)
		{
			node = n;
		}
		
		/* INTERFACE com.xperiment.PythonScript.nodes.SLNode */
		
		public function evaluate():SLValue
		{
			trace(node.evaluate().asString() + "\n");
			return null;
		}
	
	}

}