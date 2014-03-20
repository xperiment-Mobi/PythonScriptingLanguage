package nodes;

import java.util.List;
import java.util.Map;

public class ForNode implements SLNode {

	private String id;
	private SLNode items;
	private SLNode body ;
	private Map<String, SLValue> memory;
	
	public ForNode(String id, SLNode items, SLNode body, Map<String, SLValue> memory)
	{
		this.id = id;
		this.items = items;
		this.body = body;
		this.memory = memory;
		
		
	}
	@Override
	public SLValue evaluate() throws Exception {
		List<SLValue> items = this.items.evaluate().asList();
		for(SLValue i:items)
		{
			this.memory.put(this.id, i);
			this.body.evaluate();
		}
		
		return null;
	}

}
