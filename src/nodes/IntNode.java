package nodes;

public class IntNode implements SLNode {
	private SLValue output;
	public IntNode(String value){
		
		output=new SLValue(Integer.parseInt(value));
	}
	@Override
	public SLValue evaluate() throws Exception {
		return output;
	}

}
