package com.xperiment.PythonScript.nodes 
{
	/**
	 * ...
	 * @author sanjay
	 */
	public class OrNode implements SLNode 
	{
		var op1:SLNode;
		var op2:SLNode;
		
		public function OrNode(o1:SLNode, o2:SLNode) 
		{
			op1 = o1;
			op2 = o2;
		}
		
		/* INTERFACE com.xperiment.PythonScript.nodes.SLNode */
		
		public function evaluate():SLValue 
		{
			var val1:SLValue = op1.evaluate();
			var val2:SLValue = op2.evaluate();
			
			if (!val1.isBoolean() || !val2.isBoolean())
			{
				throw new Error("Illegal expression for ||");
			}
			
			return new SLValue((val1.asBoolean() || val2.asBoolean()));
		}
		
	}

}