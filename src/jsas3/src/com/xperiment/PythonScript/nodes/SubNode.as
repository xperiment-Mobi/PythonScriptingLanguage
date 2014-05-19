package com.xperiment.PythonScript.nodes
{
	
	public class SubNode implements SLNode
	{
		
		private var op1:SLNode
		private var op2:SLNode;
		
		public function SubNode(n1:SLNode, n2:SLNode)
		{
			op1 = n1;
			op2 = n2;
		
		}
		
		public function evaluate():SLValue
		{
			var l:SLValue = op1.evaluate();
			var r:SLValue = op2.evaluate();
			
			if (l.isNumber() && r.isNumber())
			{
				return new SLValue(l.asDouble() - r.asDouble());
			}
			else
			{
				throw new Error("Sub Requires Numbers!!!!");
			}
		}
	
	}
}