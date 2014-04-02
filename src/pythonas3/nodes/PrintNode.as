package com.xperiment.PythonScript.nodes
{

	public class PrintNode implements SLNode {
	
		public var node:SLNode;
		
		public function PrintNode(n:SLNode)
		{
			node= n;
		}
		
		public function evaluate():SLValue {
			trace(node.evaluate());
			return null;
		}
		
	
	}
}