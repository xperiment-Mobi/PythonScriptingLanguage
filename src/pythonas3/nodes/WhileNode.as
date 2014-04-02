package com.xperiment.PythonScript.nodes
{

	public class WhileNode implements SLNode {
	
		private var conditionNode:SLNode;
		private var blockNode:SLNode;
		
		public function WhileNode(condition:SLNode, block:SLNode)
		{
			conditionNode = condition;
			blockNode = block;
		}
		
		public function evaluate():SLValue {
			while(conditionNode.evaluate().asBoolean())
			{
				blockNode.evaluate();
			}
			return null;
		}
	
	}
}
