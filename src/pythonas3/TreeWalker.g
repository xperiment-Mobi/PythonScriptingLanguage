tree grammar TreeWalker;

options {
  language = ActionScript;
  tokenVocab = PythonJ_AW;
  ASTLabelType = CommonTree;
}

@header{
import com.xperiment.PythonScript.nodes.*;
import flash.utils.Dictionary ;
}

@members{
  public var memory:Dictionary = new Dictionary();
}


prog returns [SLNode node] :  block {$node = $block.node;};

block returns [SLNode node]
@init { 
var bn:BlockNode = new BlockNode();
node= bn;
}
:
(stats=stat { bn.addStatement($stats.node);})*;

stat returns [SLNode node]:
  expr {$node= $expr.node;}
  | assignment{$node=$assignment.node;}
  | if_stat {$node = $if_stat.node;}
  | while_stat {$node = $while_stat.node;}
  ;
  
  
assignment returns [SLNode node]: ID '=' expr 
  {$node= new AssignmentNode($ID.text, $expr.node,memory);}  
  ;

for_stmt returns [SLNode node]
	:	'for' ID 'in' expr '{' block '}'
	{
		$node = new ForNode($ID.text, $expr.node, $block.node, memory);
	}
	;

if_stat returns [SLNode node] 
@init{
      var ifnode:IfNode = new IfNode();
      node= ifnode;
      }
:'if' condition=expr '{' blk=block '}'
{
  ifnode.addChoice($condition.node, $blk.node);
}
('elif' cond=expr '{' blk1=block '}'
  {
    ifnode.addChoice($cond.node, $blk1.node);
  }
)* 

('else' '{' blk2=block '}'
  { 
    ifnode.addElse($blk2.node);
  }
)?
;  

while_stat returns [SLNode node]: 
('while' condition=expr action=block)
{
  node = new WhileNode($condition.node, $action.node);
}
;
  

expr returns [SLNode node]
 : ^('+' a=expr b=expr) {$node = new AddNode($a.node, $b.node);}
 | ^('-' a=expr b=expr) {$node = new SubNode($a.node, $b.node);}
 | ^('*' a=expr b=expr) {$node = new MulNode($a.node, $b.node);}
 | ^('/' a=expr b=expr) {$node = new DivNode($a.node, $b.node);}
 | ^('<' a=expr b=expr) {$node = new CompNode($a.node, $b.node, "<");}
 | ^('>' a=expr b=expr) {$node = new CompNode($a.node, $b.node, ">");}
 | ^('<=' a=expr b=expr) {$node = new CompNode($a.node, $b.node, "<=");} 
 | ^('>=' a=expr b=expr) {$node = new CompNode($a.node, $b.node, ">=");}
 | ^('!=' a=expr b=expr) {$node = new CompNode($a.node, $b.node, "!=");}
 | ^('==' a=expr b=expr) {$node = new CompNode($a.node, $b.node, "==");}
 | ID { node= new IdNode($ID.text, memory);}
 | INT { node = new IntNode($INT.text);}
 | NUMBER{node= new NumNode($NUMBER.text);}
 | STRING {node = new StringNode($STRING.text);}
 | ('print' stuff=expr) { node = new PrintNode($stuff.node);}
 ;