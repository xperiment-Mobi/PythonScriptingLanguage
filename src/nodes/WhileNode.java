package nodes;

public class WhileNode implements SLNode {

	private SLNode conditionNode, blockNode;
	public WhileNode(SLNode condition, SLNode block)
	{
		conditionNode = condition;
		blockNode = block;
	}
	
	@Override
	public SLValue evaluate() throws Exception {
		while(conditionNode.evaluate().asBoolean())
		{
			blockNode.evaluate();
		}
		return null;
	}


}
