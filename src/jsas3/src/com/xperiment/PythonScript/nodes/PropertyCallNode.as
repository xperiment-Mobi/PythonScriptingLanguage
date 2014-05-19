package com.xperiment.PythonScript.nodes
{
	import flash.utils.Dictionary;
	
	/**
	 * ...Ge the value of given property of an object
	 * @author sanjay
	 */
	public class PropertyCallNode implements SLNode
	{
		var obj:String;
		var property:String;
		var memory:Dictionary;
		
		public function PropertyCallNode(obj:String, property:String, memory:Dictionary)
		{
			this.obj = obj;
			this.property = property;
			this.memory = memory;
		}
		
		/* INTERFACE com.xperiment.PythonScript.nodes.SLNode */
		
		public function evaluate():SLValue
		{
			trace("Not implemented yet...");
			return null;
		}
	
	}

}