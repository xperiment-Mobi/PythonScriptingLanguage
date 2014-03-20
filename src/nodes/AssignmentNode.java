package nodes;

import java.util.Map;

public class AssignmentNode implements SLNode{
	
	private String id;
	private SLNode node;
	private Map<String, SLValue> memory;
	
	public AssignmentNode(String id, SLNode value, Map<String, SLValue> memory)
	{
		this.id = id;
		this.node = value;
		this.memory = memory;
	}

	@Override
	public SLValue evaluate() throws Exception {
		this.memory.put(id, node.evaluate());
		return null;
	}

}
