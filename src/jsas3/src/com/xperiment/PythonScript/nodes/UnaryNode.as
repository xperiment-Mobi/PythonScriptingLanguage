package com.xperiment.PythonScript.nodes
{
	
	/**
	 * ...
	 * @author sanjay
	 */
	public class UnaryNode implements SLNode
	{
		private var operand:SLNode;
		private var operator:String;
		
		public function UnaryNode(o:SLNode, operator:String)
		{
			operand = o;
			this.operator = operator;
		}
		
		/* INTERFACE com.xperiment.PythonScript.nodes.SLNode */
		
		public function evaluate():SLValue
		{
			if (operator == "!")
				return new SLValue(!operand.evaluate().asBoolean());
			if (operator == "++")
				return new SLValue(operand.evaluate().asLong() + 1);
			if (operator == "--")
				return new SLValue(operand.evaluate().asLong() - 1);
			if (operator == "-")
				return new SLValue(operand.evaluate().asLong() * (-1));
			
			throw new Error("Illegal unary operator");
		}
	
	}

}