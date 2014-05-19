package com.xperiment.PythonScript.nodes
{
	
	import com.xperiment.PythonScript.nodes.SLNode;
	import com.xperiment.PythonScript.nodes.SLValue;
	
	public class FunctionCallNode implements SLNode {
		
		private var object:SLNode
		private var tail:SLNode;
			
		public function FunctionCallNode(object:SLNode, tail:SLNode):void
		{
			this.object = object;
			this.tail = tail;
		}
	
		public function evaluate():SLValue {
			//get the object
			var o:Object = this.object.evaluate().value;
			//get the function name
			var method:String = (this.tail as TailNode).methodName;
			//using reflection get the method
			var f:Function = o.getClass().getMethod(method);
			
			var params:Object = {};
			for(var i:int=0;i< (this.tail as TailNode).params.length; i++){
				if((this.tail as TailNode).params[i] != null)	params[i] = (this.tail as TailNode).params[i].evaluate().value;
			}
			
			if(f.getParameterTypes().length ==0)
				return new SLValue(f.invoke(o));
			
			return new SLValue(f.invoke(o, params));
			 
		}	
	}
}