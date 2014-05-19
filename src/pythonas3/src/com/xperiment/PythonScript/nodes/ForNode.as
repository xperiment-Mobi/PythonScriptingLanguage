package com.xperiment.PythonScript.nodes
{
	import flash.utils.Dictionary;

	public class ForNode implements SLNode {
	
		private var id:String;
		private var items:SLNode;
		private var body:SLNode;
		private var memory:Dictionary;
		
		public function ForNode(id:String, items:SLNode, body:SLNode,memory:Dictionary)
		{
			trace("Init For Node");
			this.id = id;
			this.items = items;
			this.body = body;
			this.memory = memory;
			
			
		}
	
		public function evaluate():SLValue {			
			var temp:Array = this.items.evaluate().asList();
			for (var i:int = 0; i < temp.length; i++)
			{
				this.memory[id] = temp[i];
				body.evaluate();
			}
			return null;
		}
	
	}
}