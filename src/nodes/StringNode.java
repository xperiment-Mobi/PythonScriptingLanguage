package nodes;

public class StringNode implements SLNode {
	private SLValue output;
	public StringNode(String value){
		output= new SLValue(value);
	}
	@Override
	public SLValue evaluate() throws Exception {
		// TODO Auto-generated method stub
		return output;
	}

}
