package nodes;

import java.util.ArrayList;
import java.util.List;

public class BlockNode implements SLNode {
	private List<SLNode> statements;
	private SLNode returnStatement; 

	
	public BlockNode() {  
	    statements = new ArrayList<SLNode>();  
	    returnStatement = null;  
	  }  
	
	
	public void addStatement(SLNode stat) {  
	    statements.add(stat);  
	  } 
	
	
	@Override
	public SLValue evaluate() throws Exception {
		SLValue value = null;
		for(SLNode stat : statements) {  
		      value = stat.evaluate();		      
		}
		return value;
		// return VOID or returnStatement.evaluate() if it's not null  
	    //return returnStatement == null ? SLValue.VOID : returnStatement.evaluate(); 
	}
}
