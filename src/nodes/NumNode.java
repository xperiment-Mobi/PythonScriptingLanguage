package nodes;

public class NumNode implements SLNode{
	private SLValue output;
	public NumNode(String value){
		
		output=new SLValue(Double.parseDouble(value));
	}
	@Override
	public SLValue evaluate() throws Exception {
		return output;
	}

}
