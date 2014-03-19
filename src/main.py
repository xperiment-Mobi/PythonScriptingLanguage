import sys
import antlr3
import antlr3.tree
from PythonLexer import PythonLexer
from PythonParser import PythonParser


def execute(code):
    try:
        input = antlr3.ANTLRStringStream(code)
        lexer = PythonLexer(input)
        tokens = antlr3.CommonTokenStream(lexer)
        parser = PythonParser(tokens)
        r = parser.prog()
        
        # this is the root of the AST
        root = r.tree
        
        nodes = antlr3.tree.CommonTreeNodeStream(root)
        nodes.setTokenStream(tokens)
        
        
    except Exception, e:
        print e
    
        
if __name__ == '__main__':
    codeFile = sys.argv[1]
    print codeFile
    code = ""
    with open(codeFile, "r") as f:
        for line in f:
            code = code + line + '\n'
            
        print code
        execute(code)