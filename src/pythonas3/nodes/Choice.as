package com.xperiment.PythonScript.nodes
{

	public class Choice {
		public var block:SLNode;
		public var expr:SLNode;
		
		public function Choice(b:SLNode, s: SLNode){
			block=b;
			expr=s;
		}
	}
}
