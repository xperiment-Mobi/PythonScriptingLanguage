package nodes;

import java.util.Map;  

public class IdNode implements SLNode {
	private String id;
	private Map<String, SLValue> memory;
	
	public IdNode(String id, Map<String, SLValue> memory){
		this.id=id;
		this.memory=memory;
		
	}
	@Override
	public SLValue evaluate() throws Exception {
		if(this.id!=null && memory.containsKey(id)){
			return memory.get(id);
		}
		else
			throw new Exception("Undefined Variable");
		
	}

}
