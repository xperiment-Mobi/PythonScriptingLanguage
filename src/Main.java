import java.io.File;
import java.io.IOException;
import java.util.Scanner;

import nodes.SLNode;
import pythonj.TreeWalker;

import org.antlr.runtime.ANTLRStringStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.tree.CommonTree;
import org.antlr.runtime.tree.CommonTreeNodeStream;
import org.antlr.runtime.tree.DOTTreeGenerator;
import org.antlr.stringtemplate.StringTemplate;

import pythonj.PythonJLexer;
import pythonj.PythonJParser;

public class Main {

	private static String contentsOf(String fileName) throws IOException {
		StringBuilder b = new StringBuilder();
		Scanner file = new Scanner(new File(fileName));
		while (file.hasNextLine()) {
			String line = file.nextLine();
			b.append(line).append('\n');
		}
		file.close();
		return b.toString();
	}

	public static void main(String[] args) throws Exception {

		PythonJLexer lexer = new PythonJLexer(new ANTLRStringStream(
				contentsOf("in.txt")));

		PythonJParser parser = new PythonJParser(new CommonTokenStream(lexer));
		CommonTree tree = (CommonTree) parser.prog().getTree();

		DOTTreeGenerator gen = new DOTTreeGenerator();
		StringTemplate st = gen.toDOT(tree);
		System.out.println(st);

		// walk the tree
		CommonTreeNodeStream nodes = new CommonTreeNodeStream(tree);

		// pass the reference to the Map of functions to the tree walker
		TreeWalker walker = new TreeWalker(nodes);

		// get the returned node
		SLNode returned = walker.prog();
		// System.out.println(returned == null ? "null" : returned.evaluate());
		System.out.println(returned.evaluate());

	}
}