package com.xperiment.PythonScript.nodes
{
	import flash.utils.Dictionary;
	
	public class ForNode implements SLNode
	{
		
		private var id:String;
		private var itemsNode:SLNode;
		private var bodyNode:SLNode;
		private var memory:Dictionary;
		
		public function ForNode(id:String, items:SLNode, body:SLNode, memory:Dictionary)
		{
			this.id = id;
			this.itemsNode = items;
			this.bodyNode = body;
			this.memory = memory;
		
		}
		
		public function evaluate():SLValue
		{
			var temp:Array = this.itemsNode.evaluate().asList();
			for (var i:int = 0; i < temp.length; i++)
			{
				this.memory[id] = temp[i];
				bodyNode.evaluate();
			}
			return null;
		}
	
	}
}