package nodes;

import java.util.ArrayList;
import java.util.List;

public class ListNode implements SLNode {

	private List<SLNode> items;
	
	public ListNode()
	{
		items = new ArrayList<SLNode>();
	}
	
	public void addItem(SLNode item)
	{
		items.add(item);
	}
	
	@Override
	public SLValue evaluate() throws Exception {
		List<SLValue> output = new ArrayList<SLValue>();
		for(SLNode n: items)
		{
			output.add(n.evaluate());
		}
		return new SLValue(output);
	}

}
