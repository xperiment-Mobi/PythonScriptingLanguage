package com.xperiment.PythonScript.nodes
{

	public class TailNode implements SLNode {
	
		public var methodName:String;
		public var params:Array;
		
		public function TailNode(methodName:String, params:Array):void
		{
			this.methodName = methodName;
			this.params = params;
		}
		
		
		public function evaluate():SLValue {
			// no need to evaluate this.
			// FunctionCallNode class's object will access the methodName and params directly.
			// See FunctionCallNode.evaluate() function
			
			return null;
		}
	
	}
}