package nodes;

import java.util.List;

public class TailNode implements SLNode {

	public String methodName;
	public List<SLNode> params;
	
	public TailNode(String methodName, List<SLNode> params)
	{
		this.methodName = methodName;
		this.params = params;
	}
	
	@Override
	public SLValue evaluate() throws Exception {
		// no need to evaluate this.
		// FunctionCallNode class's object will access the methodName and params directly.
		// See FunctionCallNode.evaluate() function
		
		return null;
	}

}
