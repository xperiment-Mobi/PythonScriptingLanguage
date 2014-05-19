package com.xperiment.PythonScript.nodes
{
	
	/**
	 * ...
	 * @author sanjay
	 */
	public class ArrayNode implements SLNode
	{
		private var items:Vector.<SLNode>;
		
		public function ArrayNode(i:Vector.<SLNode>)
		{
			items = (i != null) ? i : new Vector.<SLNode>();
		}
		
		/* INTERFACE com.xperiment.PythonScript.nodes.SLNode */
		
		public function evaluate():SLValue
		{
			var output:Array = new Array();
			for (var i:int = 0; i < items.length; i++)
			{
				output.push(items[i].evaluate());
			}
			
			return new SLValue(output);
		}
	
	}

}