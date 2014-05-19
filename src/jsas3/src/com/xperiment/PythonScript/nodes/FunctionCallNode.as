package com.xperiment.PythonScript.nodes
{
	import flash.utils.Dictionary;
	
	/**
	 * ...
	 * @author sanjay
	 */
	public class FunctionCallNode implements SLNode
	{
		private var obj:String;
		private var func:String;
		private var args:Vector.<SLNode>;
		private var memory:Dictionary;
		
		public function FunctionCallNode(obj:String, func:String, args:Vector.<SLNode>, memory:Dictionary)
		{
			this.obj = obj;
			this.func = func;
			this.args = args == null ? new Vector.<SLNode>() : args;
			this.memory = memory;
		}
		
		/* INTERFACE com.xperiment.PythonScript.nodes.SLNode */
		
		public function evaluate():SLValue
		{
			
			trace("Yet to implement this function...");
			return null;
		}
	
	}

}