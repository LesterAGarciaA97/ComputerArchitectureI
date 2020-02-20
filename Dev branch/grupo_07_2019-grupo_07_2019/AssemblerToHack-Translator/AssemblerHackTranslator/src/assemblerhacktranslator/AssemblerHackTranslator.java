package assemblerhacktranslator;

public class AssemblerHackTranslator {

    public static void main(String[] args) {
        if (args.length < 1 || args.length > 1) {
            System.out.println("Archivo .asm");
            return;
        }
        SymbolTable symTable = new SymbolTable();
        Code code = new Code();
        Parser parser = new Parser(args[0], symTable, code);
        parser.compile();
    }
}