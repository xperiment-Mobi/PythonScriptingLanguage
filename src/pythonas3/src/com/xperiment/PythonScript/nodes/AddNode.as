package com.xperiment.PythonScript.nodes
{

	public class AddNode implements SLNode {
	
		private var op1:SLNode, op2:SLNode;
		
		public function AddNode(n1: SLNode, n2: SLNode)
		{
			op1=n1;
			op2=n2;
		}
	
		public function evaluate():SLValue {
			var l:SLValue = op1.evaluate();
			var r:SLValue = op2.evaluate();
			
			return new SLValue(l.asDouble() + r.asDouble());
			
		}
	}
}
