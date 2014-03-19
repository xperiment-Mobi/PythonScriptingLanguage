import java.io.File;
import java.io.IOException;
import java.util.Scanner;

import org.antlr.runtime.ANTLRStringStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.tree.CommonTree;
import org.antlr.runtime.tree.DOTTreeGenerator;
import org.antlr.stringtemplate.StringTemplate;

public class Main {

    private static String contentsOf(String fileName) throws IOException {
        StringBuilder b = new StringBuilder();
        Scanner file = new Scanner(new File(fileName));
        while(file.hasNextLine()) {
            String line = file.nextLine();
            b.append(line).append('\n');
        }
        file.close();
        return b.toString();
    }

    public static void main(String[] args) throws Exception {
        //WallyLexer lexer = new WallyLexer(new ANTLRStringStream("tail.set_next(n)"));
        //WallyParser parser = new WallyParser(new CommonTokenStream(lexer));
        //CommonTree tree = (CommonTree)parser.lookup().getTree();

        PythonJLexer lexer = new PythonJLexer(new ANTLRStringStream(contentsOf("in.txt")));
        //WallyLexer lexer = new WallyLexer(new ANTLRStringStream(contentsOf("src/scripts/Main.wy")));
        PythonJParser parser = new PythonJParser(new CommonTokenStream(lexer));
        CommonTree tree = (CommonTree) parser.prog().getTree();

        DOTTreeGenerator gen = new DOTTreeGenerator();
        StringTemplate st = gen.toDOT(tree);
        System.out.println(st);

        //System.out.println("objects   : " + parser.getObjects() + "\n");
        //System.out.println("functions : " + parser.getFunctions() + "\n");

        //WallyEvaluator evaluator = new WallyEvaluator(new CommonTreeNodeStream(tree), parser.getObjects(), parser.getFunctions(), new String[]{"Param1", "Param2"});
        //evaluator.walk().root.eval();

        //DOTTreeGenerator gen = new DOTTreeGenerator();
        //StringTemplate st = gen.toDOT(((Function)parser.getObjects().get("Rational").getScope().get("mult")).blockAST);
        //System.out.println(st);
    }
}