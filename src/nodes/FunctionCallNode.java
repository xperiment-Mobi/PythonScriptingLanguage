package nodes;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class FunctionCallNode implements SLNode {
	
	private SLNode object, tail;
	
	
	public FunctionCallNode(SLNode object, SLNode tail)
	{
		this.object = object;
		this.tail = tail;
	}


	@Override
	public SLValue evaluate() throws Exception {
		//get the object
		Object o = this.object.evaluate().value;
		//get the function name
		String method = ((TailNode)this.tail).methodName;
		//using reflection get the method
		Method m = o.getClass().getMethod(method);
		
		Object[] params = new Object[((TailNode)this.tail).params.size()];
		for(int i=0;i< params.length; i++)
		{
			if(((TailNode)this.tail).params.get(i) != null)
				params[i] = ((TailNode)this.tail).params.get(i).evaluate().value;
		}
		if(m.getParameterTypes().length ==0)
			return new SLValue(m.invoke(o));
		
		return new SLValue(m.invoke(o, params));
		 
	}


}
