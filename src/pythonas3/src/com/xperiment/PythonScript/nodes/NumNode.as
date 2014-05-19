package com.xperiment.PythonScript.nodes
{

	public class NumNode implements SLNode{
		
		private var output:SLValue;
		
		public function NumNode(value:String){
			output=new SLValue(Number(value));
		}
		
		public function evaluate():SLValue {
			return output;
		}
	
	}
}