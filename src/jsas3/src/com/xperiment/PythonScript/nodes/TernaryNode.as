package com.xperiment.PythonScript.nodes 
{
	/**
	 * ...
	 * @author sanjay
	 */
	public class TernaryNode implements SLNode 
	{
		var condition:SLNode;
		var ifTrue:SLNode;
		var ifFalse:SLNode;
		
		public function TernaryNode(c:SLNode, t:SLNode, f:SLNode) 
		{
			condition = c;
			ifTrue = t;
			ifFalse = f;
		}
		
		/* INTERFACE com.xperiment.PythonScript.nodes.SLNode */
		
		public function evaluate():SLValue 
		{
			var v:SLValue = condition.evaluate();
			if (v.isBoolean())
			{
				return v.asBoolean() ? ifTrue.evaluate() : ifFalse.evaluate();
			}
			
			throw new Error("not a valid boolean expression ");
		}
		
	}

}