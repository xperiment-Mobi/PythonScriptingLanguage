package com.xperiment.PythonScript.nodes
{

	import flash.utils.Dictionary;
	
	public class IdNode implements SLNode {
		
		private var id:String;
		private var memory:Dictionary;
		
		public function IdNode(id:String, memory:Dictionary){
			this.id=id;
			this.memory=memory;
			
		}
		
		public function evaluate():SLValue {
			if(this.id!=null && memory[id]!=null){
				return memory[id];
			}
			else
				throw new Error("Undefined Variable");
			
		}
	
	}
}
