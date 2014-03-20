package nodes;

public class Choice {
	public SLNode block;
	public SLNode expr;
	public Choice(SLNode b, SLNode s){
		block=b;
		expr=s;
	}
}
