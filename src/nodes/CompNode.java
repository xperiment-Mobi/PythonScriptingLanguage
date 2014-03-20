package nodes;

public class CompNode implements SLNode {

	private SLNode op1, op2;
	
	private String operator;
	
	public CompNode(SLNode n1, SLNode n2, String op)
	{
		op1=n1;
		op2=n2;
		operator=op;
		
	}
	
	@Override
	public SLValue evaluate() throws Exception {
		SLValue l = op1.evaluate();
		SLValue r = op2.evaluate();
		
		
		
		if(!(l.isNumber() && r.isNumber()))
			throw new Exception("Only numbers can be compared.");
		
		
		if(operator == ">")
		{
			SLValue temp  = new SLValue(l.asLong() > r.asLong());
			return temp;
		}
		else if(operator == "<")
		{
			SLValue temp  = new SLValue(l.asLong() < r.asLong());
			return temp;
		}
		else if(operator == ">=")
		{
			SLValue temp  = new SLValue(l.asLong() >= r.asLong());
			return temp;
		}
		else if(operator == "<=")
		{
			SLValue temp  = new SLValue(l.asLong() <= r.asLong());
			return temp;
		}
		else if(operator == "!=")
		{
			SLValue temp  = new SLValue(l.asLong() != r.asLong());
			return temp;
		}
		else if(operator == "==")
		{
			SLValue temp  = new SLValue(l.asLong() == r.asLong());
			return temp;
		}
		else
		{
			throw new Exception("Illegal comparison"); 
		}
		
	}


}
