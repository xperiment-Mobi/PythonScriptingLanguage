package com.xperiment.PythonScript.nodes
{	
	
	public class BlockNode implements SLNode {
		
		private var statements: Vector.<SLNode>;
		private var returnStatement: SLNode; 
	
		
		public function BlockNode() {  
		    statements = new Vector.<SLNode>; 
		    returnStatement = null;  
		  }  
		
		
		public function addStatement(stat:SLNode):void {  
			trace("Adding statements");
		    statements.push(stat);  
		  } 
		
		
		
		public function evaluate():SLValue {
			for each(var stat:SLNode in statements) {  
			      stat.evaluate();		      
			}
			return null;
		}
	}
}