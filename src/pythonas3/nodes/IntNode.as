package com.xperiment.PythonScript.nodes
{

	public class IntNode implements SLNode {
		private var output:SLValue;
		
		public function IntNode(value:String){
			
			output=new SLValue(int(value));
		}
		
		public function evaluate():SLValue  {
			return output;
		}
	
	}
}