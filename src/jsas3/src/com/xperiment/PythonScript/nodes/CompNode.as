package com.xperiment.PythonScript.nodes
{
	
	public class CompNode implements SLNode
	{
		
		private var op1:SLNode, op2:SLNode;
		
		private var operator:String;
		
		public function CompNode(n1:SLNode, n2:SLNode, op:String)
		{
			op1 = n1;
			op2 = n2;
			operator = op;
		}
		
		public function evaluate():SLValue
		{
			var l:SLValue = op1.evaluate();
			var r:SLValue = op2.evaluate();
			
			if (!(l.isNumber() && r.isNumber()))
				throw new Error("Only numbers can be compared.");
			
			if (operator == ">")
				return new SLValue(l.asLong() > r.asLong());
			if (operator == "<")
				return new SLValue(l.asLong() < r.asLong());
			if (operator == ">=")
				return new SLValue(l.asLong() >= r.asLong());
			if (operator == "<=")
				return new SLValue(l.asLong() <= r.asLong());
			if (operator == "!=")
				return new SLValue(l.asLong() != r.asLong());
			if (operator == "==")
				return new SLValue(l.asLong() == r.asLong());
			
			throw new Error("Illegal comparison");
		}
	}
}