tree grammar TreeWalker;

options {
  language = ActionScript;
  tokenVocab = PythonJ_AW;
  ASTLabelType = CommonTree;
}

@header{

import nodes.*;
import flash.utils.Dictionary ;
}

prog returns [SLNode node]: 'print' stuff=INT { $node = new PrintNode(new IntNode($stuff.text));}; 


 