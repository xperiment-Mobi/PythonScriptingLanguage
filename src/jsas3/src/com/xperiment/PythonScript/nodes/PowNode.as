package com.xperiment.PythonScript.nodes
{
	
	/**
	 * ...
	 * @author sanjay
	 */
	public class PowNode implements SLNode
	{
		var n:SLNode;
		var pow:SLNode;
		
		public function PowNode(n:SLNode, pow:SLNode)
		{
			this.n = n;
			this.pow = pow;
		}
		
		/* INTERFACE com.xperiment.PythonScript.nodes.SLNode */
		
		public function evaluate():SLValue
		{
			var nval:SLValue = n.evaluate();
			var powval:SLValue = pow.evaluate();
			
			if (nval.isNumber() && powval.isNumber())
			{
				return new SLValue(Math.pow(nval.asLong(), powval.asLong()));
			}
			
			throw new Error("Power: Only numbers can be used");
		}
	
	}

}