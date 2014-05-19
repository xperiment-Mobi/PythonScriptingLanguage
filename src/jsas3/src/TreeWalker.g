tree grammar TreeWalker;

options
{
  language = ActionScript;
  tokenVocab = JS_AW;
  ASTLabelType = CommonTree;
}

@header{
import com.xperiment.PythonScript.nodes.*;
import flash.utils.Dictionary ;
}

@members{
  public var memory:Dictionary = new Dictionary();
}


prog returns [SLNode node]
  :  block {node = $block.node;}
  ;

block returns [SLNode node]
@init {
  var bn:BlockNode = new BlockNode();
  node = bn;
}
 	:	 ^(BLOCK ^(STATEMENTS (statement {bn.addStatement($statement.node);})*))
  ;

statement returns [SLNode node]
  :  assignment     {node = $assignment.node;}
  |  functionCall   {node = $functionCall.node;}
  |  ifStatement    {node = $ifStatement.node;}
  |  forStatement   {node = $forStatement.node;}
  |  whileStatement {node = $whileStatement.node;}
  ;

assignment returns [SLNode node]
  :  ^(ASSIGNMENT Identifier indexes? expression) {node = new AssignmentNode($Identifier.text, $indexes.e, $expression.node, memory);}
  ;

functionCall returns [SLNode node]
  :  ^(FUNC_CALL obj=Identifier func=Identifier params=exprList?) {node = new FunctionCallNode($obj.text, $func.text, $params.e, memory);}
  |  ^(FUNC_CALL Println expression?)  {node = new PrintLnNode($expression.node);}
  |  ^(FUNC_CALL Print expression)     {node = new PrintNode($expression.node);}
  ;

ifStatement returns [SLNode node]
@init  {var ifNode:IfNode = new IfNode();}
@after {node = ifNode;}
  :  ^(IF ifStat[ifNode] (elseIfStat[ifNode])* (elseStat[ifNode])?)
  ;

ifStat[IfNode parent]
  :  ^(EXP expression block) {parent.addChoice($expression.node, $block.node);}
  ;

elseIfStat[IfNode parent]
  :  ^(EXP expression block) {parent.addChoice($expression.node, $block.node);}
  ;

elseStat[IfNode parent]
  :  ^(EXP block) {parent.addElse($block.node);}
  ;
   
forStatement returns [SLNode node]
  :  ^(For Identifier expression block)
  {node = new ForNode($Identifier.text, $expression.node, $block.node, memory);}
  ;

whileStatement returns [SLNode node]
  :  ^(While expression block) {node = new WhileNode($expression.node, $block.node);}
  ;

idList returns [Vector.<SLNode> i]
@init {i = new Vector.<SLNode>();}
  :  ^(ID_LIST (Identifier {i.push($Identifier.text);})+)
  ;

exprList returns [Vector.<SLNode> e]
@init  {e = new Vector.<SLNode>();}
  :  ^(EXP_LIST (expression {e.push($expression.node);})+)
  ;

expression returns [SLNode node]
  :  ^(TERNARY a=expression b=expression c=expression) {node = new TernaryNode($a.node, $b.node, $c.node);}
  |  ^('||' a=expression b=expression)                 {node = new OrNode($a.node, $b.node);}
  |  ^('&&' a=expression b=expression)                 {node = new AndNode($a.node, $b.node);}
  |  ^('==' a=expression b=expression)                 {node = new CompNode($a.node, $b.node, "==");}
  |  ^('!=' a=expression b=expression)                 {node = new CompNode($a.node, $b.node, "!=");}
  |  ^('>=' a=expression b=expression)                 {node = new CompNode($a.node, $b.node, ">=");}
  |  ^('<=' a=expression b=expression)                 {node = new CompNode($a.node, $b.node, "<=");}
  |  ^('>' a=expression b=expression)                  {node = new CompNode($a.node, $b.node, ">");}
  |  ^('<' a=expression b=expression)                  {node = new CompNode($a.node, $b.node, "<");}
  |  ^('+' a=expression b=expression)                  {node = new AddNode($a.node, $b.node);}
  |  ^('-' a=expression b=expression)                  {node = new SubNode($a.node, $b.node);}
  |  ^('*' a=expression b=expression)                  {node = new MulNode($a.node, $b.node);}
  |  ^('/' a=expression b=expression)                  {node = new DivNode($a.node, $b.node);}
  |  ^('%' a=expression b=expression)                  {node = new ModNode($a.node, $b.node);}
  |  ^('^' a=expression b=expression)                  {node = new PowNode($a.node, $b.node);}
  |  ^(UNARY_MIN a=expression)                         {node = new UnaryNode($a.node, "-");}
  |  ^(NEGATE a=expression)                            {node = new UnaryNode($a.node, "!");}
  |  ^(UNARY_INCR a=expression)			       {node = new UnaryNode($a.node, "++");}
  |  ^(UNARY_DECR a=expression)			       {node = new UnaryNode($a.node, "--");}  
  |  n=NUMBER                                          {node = new AtomNode(Number($n.text));}
  |  Bool                                              {node = new AtomNode(Boolean($Bool.text));}
  |  Null                                              {node = new AtomNode(null);}
  |  lookup                                            {node = $lookup.node;}
  ;

list returns [SLNode node]
  :  ^(LIST exprList?) {node = new ArrayNode($exprList.e);}
  ;

lookup returns [SLNode node]
  :  ^(LOOKUP functionCall i=indexes?) {node = $i.e != null ? new LookupNode($functionCall.node, $indexes.e) : $functionCall.node;}
  |  ^(LOOKUP list i=indexes?)         {node = $i.e != null ? new LookupNode($list.node, $indexes.e) : $list.node;}
  |  ^(LOOKUP expression i=indexes?)   {node = $i.e != null ? new LookupNode($expression.node, $indexes.e) : $expression.node;}
  |  ^(LOOKUP Identifier i=indexes?)   {node = $i.e != null ? new LookupNode(new IdNode($Identifier.text, memory), $indexes.e) : new IdNode($Identifier.text, memory);}
  |  ^(LOOKUP STRING i=indexes?)       {node = $i.e != null ? new LookupNode(new AtomNode($STRING.text), $indexes.e) : new AtomNode($STRING.text);}
  |  ^(LOOKUP obj=Identifier property=Identifier)   {node = new PropertyCallNode($obj.text, $property.text, memory);}
  ;

indexes returns [Vector.<SLNode> e]
@init {e = new Vector.<SLNode>();}
  :  ^(INDEXES (expression {e.push($expression.node);})+)
  ;
  
