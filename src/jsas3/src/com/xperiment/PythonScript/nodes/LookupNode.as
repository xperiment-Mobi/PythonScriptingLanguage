package com.xperiment.PythonScript.nodes
{
	
	public class LookupNode implements SLNode
	{
		private var expression:SLNode;
		private var indexes:Vector.<SLNode>;
		
		public function LookupNode(e:SLNode, i:Vector.<SLNode>)
		{
			expression = e;
			indexes = i;
		}
		
		public function evaluate():SLValue
		{
			
			var value:SLValue = expression.evaluate();
			
			var indexValues:Vector.<SLValue> = new Vector.<SLValue>();
			
			for each (var indexNode:SLNode in indexes)
			{
				indexValues.push(indexNode.evaluate());
			}
			
			for each (var index:SLValue in indexValues)
			{
				
				if (!index.isNumber() || !(value.isList() || value.isString()))
				{
					throw new Error("illegal expression: ");
				}
				
				var idx:int = index.asLong() as int;
				
				if (value.isList())
				{
					value = value.asList()[idx];
				}
				else if (value.isString())
				{
					value = new SLValue(value.asString().charAt(idx));
				}
			}
			
			return value;
		}
	
	}

}