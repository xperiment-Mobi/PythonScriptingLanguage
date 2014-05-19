package com.xperiment.PythonScript.nodes
{

	public class IfNode implements SLNode {
	
		private var choices:Vector.<Choice>;
		private var elseNode:SLNode;
		
		public function IfNode()
		{
			choices = new Vector.<Choice>;
		}
		
		public function addChoice(e:SLNode, b:SLNode):void{
			choices.push(new Choice(b,e));
		}
		
		public function addElse(block:SLNode):void
		{
			elseNode = block;
		}
		
		public function evaluate():SLValue {
			var value:SLValue;

			for(var i:int=0;i<choices.length;i++){
				value= choices[i].expr.evaluate();			
				if(value.asBoolean())
					return choices[i].block.evaluate();
			}
			//if we are here then no conditions matched so just evaluate the else block
			return elseNode!=null?elseNode.evaluate():null;
			
		}
	
	}
}