import java.io.InputStreamReader;
import java.io.PrintStream;
import java.lang.reflect.Field;


public class AstToDot {

  /**
   * @param args
   * @throws Exception
   */
  public static void main(String[] args) throws Exception {
    ASTLexer lexer = new ASTLexer(new InputStreamReader(System.in));
    ASTParser parser = new ASTParser(lexer);

    TreeNode root = (TreeNode) parser.parse().value;
    exportAstDigraph(root);
  }

  private static int idCounter = 0;

  /**
   * Export a DOT file representing the abstract syntax tree to ast.dot
   */
  private static void exportAstDigraph(TreeNode root) {
    try {
      PrintStream out = System.out;
      out.println("digraph AST {");
      exportAstDigraph(root, out);
      out.println("}");
      out.close();
    }
    catch(Exception e) {
      e.printStackTrace();
    }
  }

  private static String exportAstDigraph(TreeNode root, PrintStream out) throws IllegalArgumentException, IllegalAccessException {
    String nodeId = Integer.toString(idCounter++);
    StringBuilder label = new StringBuilder();
    Class<?> rootClass = root.getClass();
    label.append(rootClass.getSimpleName());

    while(rootClass != null) {
      for(Field field : rootClass.getDeclaredFields()) {
        field.setAccessible(true);
        String fieldName = field.getName();
        Class<?> type = field.getType();

        if(AbstractSymbol.class.isAssignableFrom(type)) {
          AbstractSymbol sym = (AbstractSymbol) field.get(root);
          label.append("\\n");
          label.append(fieldName + ": " + sym);
        }
        else if(ListNode.class.isAssignableFrom(type)) {
          ListNode children = (ListNode) field.get(root);
          Iterable<TreeNode> childIt = Utilities.iterable(children);
          int counter = 0;
          for(TreeNode child : childIt) {
            String childId = exportAstDigraph(child, out);
            out.println(nodeId + " -> " + childId + " [label=\"" + fieldName + "_" + (counter++) + "\"];");
          }
        }
        else if(TreeNode.class.isAssignableFrom(type)) {
          TreeNode child = (TreeNode) field.get(root);
          String childId = exportAstDigraph(child, out);
          out.println(nodeId + " -> " + childId + " [label=\"" + fieldName + "\"];");
        }
        out.println(nodeId + "[label=\"" + label + "\"];");
      }
      rootClass = rootClass.getSuperclass();
    }
    return nodeId;
  }


}
