package nodes;

public class PrintNode implements SLNode {

	public SLNode node;
	
	public PrintNode(SLNode n)
	{
		node= n;
	}
	@Override
	public SLValue evaluate() throws Exception {
		System.out.println(node.evaluate());
		return null;
	}
	

}
