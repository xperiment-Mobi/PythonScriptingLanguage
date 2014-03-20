package nodes;

public class SubNode implements SLNode {

	private SLNode op1, op2;
	
	public SubNode(SLNode n1, SLNode n2)
	{
		op1=n1;
		op2=n2;
		
	}
	
	@Override
	public SLValue evaluate() throws Exception {
		SLValue l = op1.evaluate();
		SLValue r = op2.evaluate();
		
		if (l.isNumber() && r.isNumber())
		{
			return new SLValue(l.asDouble() - r.asDouble());
		}
		else
		{
			throw new Exception("Sub Requires Numbers!!!!");
		}
	}


}
