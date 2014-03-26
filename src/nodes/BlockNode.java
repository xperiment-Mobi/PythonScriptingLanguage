package nodes;

import java.util.ArrayList;
import java.util.List;

public class BlockNode implements SLNode {
	private List<SLNode> statements;
	
	public BlockNode() {  
	    statements = new ArrayList<SLNode>();  
	  }  
	
	
	public void addStatement(SLNode stat) {  
	    statements.add(stat);  
	  } 
	
	
	@Override
	public SLValue evaluate() throws Exception {
		for(SLNode stat : statements) {  
		      stat.evaluate();		      
		}
		return null;
	}
}
