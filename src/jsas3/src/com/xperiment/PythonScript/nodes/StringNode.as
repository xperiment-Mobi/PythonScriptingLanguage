package com.xperiment.PythonScript.nodes
{
	
	public class StringNode implements SLNode
	{
		
		private var output:SLValue;
		
		public function StringNode(value:String)
		{
			output = new SLValue(value);
		}
		
		public function evaluate():SLValue
		{
			trace("Evaluating String Node");
			// TODO Auto-generated method stub
			return output;
		}
	
	}
}