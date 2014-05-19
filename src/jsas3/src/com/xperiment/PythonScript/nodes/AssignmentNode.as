package com.xperiment.PythonScript.nodes
{
	import flash.utils.Dictionary;
	
	public class AssignmentNode implements SLNode
	{
		
		private var id:String;
		private var node:SLNode;
		private var memory:Dictionary;
		private var indexNodes:Vector.<SLNode>;
		
		public function AssignmentNode(id:String, e:Vector.<SLNode>, value:SLNode, memory:Dictionary)
		{
			this.id = id;
			this.node = value;
			this.memory = memory;
			this.indexNodes = e == null ? new Vector.<SLNode>() : e;
		}
		
		public function evaluate():SLValue
		{
			var value:SLValue = node.evaluate();
			
			if (indexNodes.length == 0)
			{
				memory[id] = node.evaluate();
			}
			else
			{
				var list:SLValue = memory[id];
				for (var i:int; i < indexNodes.length - 1 && list != null; i++)
				{
					var index:SLValue = indexNodes[i].evaluate();
					if (!index.isNumber() || !list.isList())
					{
						throw new Error("illegal statement ");
					}
					
					var idx:int = int(index.asLong());
					list = list.asList()[idx];
				}
				
				//list is now pointing to [x][y] in case of [x][y][z]
				
				//get the value 'z': the last index
				var idxx:SLValue = indexNodes[indexNodes.length - 1].evaluate();
				if (!idxx.isNumber() || !list.isList())
				{
					throw new Error("illegal statement ");
				}
				
				var existing:Array = list.asList();
				existing[int(idxx.asLong())] = value;
			}
			return null;
		}
	
	}
}