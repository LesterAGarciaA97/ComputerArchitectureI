package assemblerhacktranslator;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Parser {

    //Archivo de ensamblaje (Código en ensamblador)
    public static final String SOURCE_FIX = ".asm";
    //Archivo de código de máquina (0's y 1's)
    public static final String DEST_FIX = ".hack";
    //Etiqueta para comentarios
    public static final String COMMENT_TAG = "//";
    //Etiqueta de instrucciones
    public static final String A_TAG = "@";
    //Etiqueta de inicio de comandos
    public static final String L_BEGIN_TAG = "(";
    //Etiqueta final de instrucciones
    public static final String L_END_TAG = ")";
    //Separados DEST
    public static final String DEST_SEPARATOR = "=";
    //Separador JUMP
    public static final String JUMP_SEPARATOR = ";";
    //Salto de línea
    public static final String LINE_SEPARATOR = System.getProperty("line.separator");
    //Número regular de 0 a 9
    public static final String NUMBER_REGULAR = "[0-9]*";
    //Tipo de instrucción
    public static enum CommandType {
        A_COMMAND, C_COMMAND, L_COMMAND
    }
    //Instrucción actual
    private String curInstruct;
    //Número de línea de instrucción actual
    private int curInsNum = -1;
    //Tipo de instrucción actual
    private CommandType curType;
    //Número total dfe archivos para ensamblaje (.ASM)
    private int totalNum = -1;
    //Ruta del archivo de ensamblaje (.ASM)
    private String filePath;
    //Nombre del archivo de ensamblaje (.ASM)
    private String fileName;
    private Map<Integer, String> insSeqs = new LinkedHashMap<Integer, String>();
    //Tabla de símbolor
    private SymbolTable symTable;
    //Tabla decodificadora
    private Code code;

    public Parser(final String path, final SymbolTable sybTable, final Code code) {
        this.symTable = sybTable;
        this.code = code;
        init(path);
    }

    private void init(String path) {
        File file = new File(path);
        if (!file.exists()) {
            System.out.println("¡El archivo '" + file.getAbsolutePath() + "' no existe!");
            return;
        }
        String fName = file.getName();
        String fileExt = fName.substring(fName.lastIndexOf('.'));
        fileName = fName.substring(0, fName.lastIndexOf('.'));
        if (!SOURCE_FIX.equalsIgnoreCase(fileExt)) {
            System.out.println("¡Assembler únicamente acepta archivos .asm!");
        }
        FileReader fr = null;
        BufferedReader br = null;
        try {
            fr = new FileReader(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        br = new BufferedReader(fr);
        String curStr = null;
        int lineNum = -1;
        try {
            while ((curStr = br.readLine()) != null) {
                if (curStr.startsWith(COMMENT_TAG) || curStr.trim().length() < 1) {
                    continue;
                }
                if (curStr.indexOf(COMMENT_TAG) > 0) {
                    curStr = curStr.substring(0, curStr.indexOf(COMMENT_TAG)).trim();
                }
                curStr = curStr.trim();
                if (curStr.startsWith(L_BEGIN_TAG) && curStr.endsWith(L_END_TAG)) {
                    symTable.addEntry(curStr.substring(curStr.indexOf(L_BEGIN_TAG) + 1,
                            curStr.indexOf(L_END_TAG)).trim(), lineNum + 1);
                    continue;
                }
                insSeqs.put(++lineNum, curStr);
            }
            totalNum = insSeqs.size();
            String abPath = file.getAbsolutePath();
            filePath = abPath.substring(0, abPath.indexOf(fName));

            if (fr != null) {
                fr.close();
            }
            if (br != null) {
                br.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public boolean hasMoreCommands() {
        return totalNum - curInsNum - 1 > 0;
    }

    public void advance() {
        if (!hasMoreCommands()) {
            return;
        }
        curInsNum++;
        curInstruct = insSeqs.get(curInsNum);
        curType = commandType();
    }

    public CommandType commandType() {
        if (curInstruct.startsWith(A_TAG)) {
            return CommandType.A_COMMAND;
        }
        if (curInstruct.startsWith(L_BEGIN_TAG) && curInstruct.endsWith(L_END_TAG)) {
            return CommandType.L_COMMAND;
        }
        return CommandType.C_COMMAND;
    }

    public String symbol() {
        if (curType.compareTo(CommandType.C_COMMAND) == 0) {
            throw new RuntimeException("¡Línea " + curInsNum + " la instrucción no es del tipo A o tipo C!");
        }
        if (curType.compareTo(CommandType.A_COMMAND) == 0) {
            return curInstruct.substring(1);
        }
        if (curType.compareTo(CommandType.L_COMMAND) == 0) {
            return curInstruct.substring(1, curInstruct.indexOf(L_END_TAG));
        }
        return null;
    }

    public String dest() {
        if (curType.compareTo(CommandType.C_COMMAND) == 0) {
            int dIndex = curInstruct.indexOf(DEST_SEPARATOR);
            if (dIndex > 0) {
                return curInstruct.substring(0, dIndex).trim().toUpperCase();
            } else {
                return "null";
            }
        } else {
            throw new RuntimeException("¡Línea " + curInsNum + " la instrucción no es del tipo A o tipo C!");
        }
    }

    public String comp() {
        String compStr = null;
        if (curType.compareTo(CommandType.C_COMMAND) == 0) {
            int dIndex = curInstruct.indexOf(DEST_SEPARATOR);
            int jIndex = curInstruct.indexOf(JUMP_SEPARATOR);
            int start = dIndex > 0 ? dIndex + 1 : 0;
            int end = jIndex > 0 ? jIndex : curInstruct.length();
            compStr = curInstruct.substring(start, end).trim().toUpperCase();
            if (compStr.length() < 1) {
                throw new RuntimeException("¡Línea " + curInsNum + " error de sintaxis de instrucciones!");
            }
            return compStr;
        } else {
            throw new RuntimeException("¡Line " + curInsNum + " !");
        }
    }

    public String jump() {
        if (curType.compareTo(CommandType.C_COMMAND) == 0) {
            int jIndex = curInstruct.indexOf(JUMP_SEPARATOR);
            if (jIndex > 0) {
                return curInstruct.substring(jIndex + 1).trim().toUpperCase();
            } else {
                return "null";
            }
        } else {
            throw new RuntimeException("Línea " + curInsNum + " instrucción no es de tipo C!");
        }
    }

    public ArrayList<String> parse() {
        ArrayList<String> ret = new ArrayList<String>();
        String symbol = null;
        int address = -1;
        int varAddress = 0x0F;
        StringBuffer strB = new StringBuffer();
        while (hasMoreCommands()) {
            advance();
            if (curType.compareTo(CommandType.A_COMMAND) == 0) {
                symbol = symbol();
                if (isNumeric(symbol)) {
                    address = Integer.parseInt(symbol);
                } else {
                    if (symTable.contains(symbol)) {
                        address = symTable.getAddress(symbol);
                    } else {
                        address = ++varAddress;
                        symTable.addEntry(symbol, address);
                    }
                }
                ret.add(code.getATypeBinary(address) + LINE_SEPARATOR);
            }
            if (curType.compareTo(CommandType.C_COMMAND) == 0) {
                strB.delete(0, strB.length());
                strB.append(Code.C_PRIFIX).append(code.comp(comp())).append(code.dest(dest())).append(code.jump(jump()));
                ret.add(strB.toString() + LINE_SEPARATOR);
            }
        }
        return ret;
    }

    private static boolean isNumeric(final String str) {
        Pattern pattern = Pattern.compile(NUMBER_REGULAR);
        Matcher isNum = pattern.matcher(str);
        return isNum.matches();
    }

    public void compile() {
        ArrayList<String> ret = parse();
        File dest = new File(filePath + File.separator + fileName + DEST_FIX);
        FileWriter fw = null;
        try {
            fw = new FileWriter(dest);
            for (String str : ret) {
                fw.write(str);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fw != null) {
                try {
                    fw.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
