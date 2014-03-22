tree grammar TreeWalker;

options {
  language = Java;
  tokenVocab = PythonJ;
  ASTLabelType = CommonTree;
}

@header{
package pythonj;

import nodes.*;
import java.util.Map; 
import java.util.HashMap;
}

@members{
  public Map<String, SLValue> memory = new HashMap<String, SLValue>();

}


prog returns [SLNode node]: EOL* block {node= $block.node ;};

block returns [SLNode node]
@init { 
BlockNode bn= new BlockNode();
node= bn;
}
:
(stats=stat { bn.addStatement($stats.node);})*;

stat returns [SLNode node]:
  expr {node= $expr.node;} EOL
  | assignment{node=$assignment.node;}
  | for_stat{node=$for_stat.node;}
  | if_stat{node=$if_stat.node;} 
  | while_stat {node = $while_stat.node;}
  ;
  
  
assignment returns [SLNode node]: ID '=' expr 
  {node= new AssignmentNode($ID.getText(), $expr.node,memory);}
  EOL
  ;
  
for_stat returns [SLNode node]:
  ^('for' item=ID items=expr action=block)
  {
  node= new ForNode($item.getText(), $items.node, $action.node, memory);
  };
  
  
if_stat returns [SLNode node] 
@init{
      IfNode ifnode= new IfNode();
      node= ifnode;
      }
:'if' condition=expr ':' EOL INDENT blk=block DEDENT EOL* 
{
  ifnode.addChoice($condition.node, $blk.node);
}
('elif' cond=expr ':'EOL INDENT blk1=block DEDENT EOL*
  {
    ifnode.addChoice($cond.node, $blk1.node);
  }
)* 

('else' ':' EOL INDENT blk2=block DEDENT EOL* 
  { 
    ifnode.addElse($blk2.node);
  }
)?
;
  
while_stat returns [SLNode node]: 
^('while' condition=expr action=block)
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
 | ID { node= new IdNode($ID.getText(), memory);}
 | INT { node = new IntNode($INT.getText());}
 | NUMBER{node= new NumNode($NUMBER.getText());}
 | STRING {node = new StringNode($STRING.getText());}
 | 'print' stuff=expr { node = new PrintNode($stuff.node);}
 | ^(ID tail) {node = new FunctionCallNode(new IdNode($ID.getText(), memory),$tail.node);}
 | makelist_expr { node = $makelist_expr.node;} 
 ;
 
 tail returns [SLNode node]: '.' ID params
 {
  $node = new TailNode($ID.getText(), $params.node);
 }
 ;
 params returns [List<SLNode> node]
 @init
 {
  List<SLNode> parameters = new ArrayList<SLNode>();
  $node = parameters;
 }:
 '(' p1=expr? {parameters.add($p1.node);} (',' p2=expr{parameters.add($p2.node);})* ')'
 ;
 
 makelist_expr returns [SLNode node]
 @init{
  ListNode listnode = new ListNode();
  node = listnode;
  }
 : 'list' '(' e=expr{listnode.addItem($e.node);} (',' e1=expr{listnode.addItem($e1.node);})* ')'
 {
 }
 ;
