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
			this.id = id;
			this.items = items;
			this.body = body;
			this.memory = memory;
			
			
		}
	
		public function evaluate():SLValue {
			var items:Array = (this.items.evaluate() as SLValue).asList();
			for(var i:int =0;i<items.length;i++)
			{
				this.memory.put(this.id, i);
				this.body.evaluate();
			}
			
			return null;
		}
	
	}
}