package com.xperiment.PythonScript.nodes
{
	
	/**
	 * ...
	 * @author sanjay
	 */
	public class AtomNode implements SLNode
	{
		private var value:SLValue;
		
		public function AtomNode(v:Object)
		{
			value = new SLValue(v);
		}
		
		/* INTERFACE com.xperiment.PythonScript.nodes.SLNode */
		
		public function evaluate():SLValue
		{
			return value;
		}
	
	}

}