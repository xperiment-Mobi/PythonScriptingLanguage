package com.xperiment.PythonScript.nodes
{
	import flash.utils.Dictionary;

	public class AssignmentNode implements SLNode{
		
		private var id:String;
		private var node:SLNode;
		private var memory:Dictionary;
		
		public function AssignmentNode(id:String, value:SLNode, memory:Dictionary)
		{
			this.id = id;
			this.node = value;
			this.memory = memory;
		}
	
		public function evaluate():SLValue {
			memory[id] = node.evaluate();
			return null;
		}
	
	}
}