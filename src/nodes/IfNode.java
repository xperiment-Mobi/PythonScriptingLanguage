package nodes;

import java.util.ArrayList;
import java.util.List;

public class IfNode implements SLNode {
	private List<Choice> choices;
	private SLNode elseNode;
	
	public IfNode()
	{
		choices = new ArrayList<Choice>();
	}
	
	public void addChoice(SLNode e, SLNode b){
		
		choices.add(new Choice(b,e));
	}
	
	public void addElse(SLNode block)
	{
		elseNode = block;
	}
	@Override
	public SLValue evaluate() throws Exception {
		SLValue value=null;
		for(Choice c:choices){
			value= c.expr.evaluate();			
			if(value.asBoolean())
				return c.block.evaluate();
		}
		//if we are here then no conditions matched so just evaluate the else block
		return elseNode.evaluate();
		
	}

}
