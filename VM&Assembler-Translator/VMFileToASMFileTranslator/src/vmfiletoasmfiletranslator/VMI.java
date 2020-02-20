package vmfiletoasmfiletranslator;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Stack;

public class VMI {
    Utilities Util = new Utilities();
    ArrayList<String> MainList = new ArrayList<>();
    int operationLabel = 0;
    String tp = "";
    String FunctionName = "";

    public void Read(File originalFile) throws IOException {
        MainList = new ArrayList<>();
        try (Scanner scanner = new Scanner(originalFile)) {
            tp = originalFile.getName().replaceAll(".vm", "");
            String str = null;
            while (scanner.hasNext()) {
                str = scanner.nextLine();
                if (!"".equals(str)) {
                    MainList.add(str);
                }
            }
        }
        firstscan(MainList); //Elimina espacios en blanco y comentarios
    }
    
    public String Translator(String originalLine) {   //Comandos de acceso a memoria -> add, sub, neg,eq, gt, lt, and, or , not 
        switch (originalLine.trim()) {
            case "add":
                return "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "A=A-1\n"
                        + "M=D+M\n";
            case "sub":
                return "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "A=A-1\n"
                        + "M=M-D\n";
            case "neg":
                return "@SP\n"
                        + "A=M-1\n"
                        + "M=-M\n";
            case "eq":
                operationLabel++;
                return "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "A=A-1\n"
                        + "D=M-D\n"
                        + "@true" + operationLabel + "\n"
                        + "D;JEQ\n"
                        //false
                        + "@SP\n"
                        + "A=M-1\n"
                        + "M=0\n"
                        + "@finish" + operationLabel + "\n"
                        + "0;JMP\n"
                        //true
                        + "(true" + operationLabel + ")\n"
                        + "@SP\n"
                        + "A=M-1\n"
                        + "M=-1\n"
                        + "(finish" + operationLabel + ")\n";
            case "gt":
                operationLabel++;
                return "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "A=A-1\n"
                        + "D=M-D\n"
                        + "@true" + operationLabel + "\n"
                        + "D;JGT\n"
                        + "@SP\n"
                        + "A=M-1\n"
                        + "M=0\n"
                        + "@finish" + operationLabel + "\n"
                        + "0;JMP\n"
                        + "(true" + operationLabel + ")\n"
                        + "@SP\n"
                        + "A=M-1\n"
                        + "M=-1\n"
                        + "(finish" + operationLabel + ")\n";
            case "lt":
                operationLabel++;
                return "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "A=A-1\n"
                        + "D=M-D\n"
                        + "@true" + operationLabel + "\n"
                        + "D;JLT\n"
                        + "@SP\n"
                        + "A=M-1\n"
                        + "M=0\n"
                        + "@finish" + operationLabel + "\n"
                        + "0;JMP\n"
                        + "(true" + operationLabel + ")\n"
                        + "@SP\n"
                        + "A=M-1\n"
                        + "M=-1\n"
                        + "(finish" + operationLabel + ")\n";
            case "and":
                return "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "A=A-1\n"
                        + "M=D&M\n";
            case "or":
                return "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "A=A-1\n"
                        + "M=D|M\n";
            case "not":
                return "@SP\n"
                        + "A=M-1\n"
                        + "M=!M\n";
            default:
                return AccesCommands(originalLine);
        }
    }

    public String AccesCommands(String originalLine) {
        String[] parts = originalLine.split(" ");
        switch (parts[0]) //Comandos de acceso a memoria -> push, pop
        {
            case "push":
                return PushMemorySegments(originalLine);
            case "pop":
                return PopMemorySegments(originalLine);
                
            //Comandos de flujo de programa -> function, call, return
            case "function":// f n Aquí comienza el código de una función llamada f que tiene n variables locales
                FunctionName = parts[1];
                String result = "(" + FunctionName + ")\n";
                
                for (int i = 0; i < Integer.parseInt(parts[2]); i++) {
                    result += "@0\n"
                            + "D=A\n"
                            + "@SP\n"
                            + "A=M\n"
                            + "M=D\n"
                            + "@SP\n"
                            + "M=M+1\n";
                }
                return result;

            case "call"://f m Llama a la función f, iniciando que los argumentos de m ya han tenido una acción push hacia la pila
                operationLabel++;
                return // SP -> R13
                        "@SP\n"
                        + "D=M\n"
                        + "@R13\n"
                        + "M=D\n"
                        // @RET -> *SP
                        + "@RET." + operationLabel + "\n"
                        + "D=A\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n"
                        // LCL to *SP
                        + "@LCL\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n"
                        // ARG to *SP
                        + "@ARG\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n"
                        // THIS to *SP
                        + "@THIS\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n"
                        // THAT to *SP
                        + "@THAT\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n"
                        + "@R13\n"
                        + "D=M\n"
                        + "@" + parts[2] + "\n"
                        + "D=D-A\n"
                        + "@ARG\n"
                        + "M=D\n"
                        // SP to LCL
                        + "@SP\n"
                        + "D=M\n"
                        + "@LCL\n"
                        + "M=D\n"
                        + "@" + parts[1] + "\n"
                        + "0;JMP\n"
                        + "(RET." + operationLabel + ")\n";

            case "return": //Volver a la función de llamada
                return
                        "@LCL\n"
                        + "D=M\n"
                        + "@5\n"
                        + "A=D-A\n"
                        + "D=M\n"
                        + "@R13\n"
                        + "M=D\n"
                        // *(SP - 1) to *ARG
                        + "@SP\n"
                        + "A=M-1\n"
                        + "D=M\n"
                        + "@ARG\n"
                        + "A=M\n"
                        + "M=D \n"
                        // ARG + 1 to SP
                        + "D=A+1\n"
                        + "@SP\n"
                        + "M=D\n"
                        // *(LCL - 1) to THAT
                        + "@LCL\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@THAT\n"
                        + "M=D\n"
                        // *(LCL - 1) to THIS
                        + "@LCL\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@THIS\n"
                        + "M=D\n"
                        // *(LCL - 1) to ARG
                        + "@LCL\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@ARG\n"
                        + "M=D\n"
                        // *(LCL - 1) to LCL
                        + "@LCL\n"
                        + "A=M-1\n"
                        + "D=M\n"
                        + "@LCL\n"
                        + "M=D\n"
                        // R13 to A
                        + "@R13\n"
                        + "A=M\n"
                        + "0;JMP\n";

            //Comandos adicionales -> label, goto, if-goto
            case "label": //Etiqueta la ubicación actual en el código de la función
                return "(" + FunctionName + "$" + parts[1] + ")\n";

            case "goto": //Efectúa una operación goto incondicional, lo que hace que la ejecución continúe desde la ubicación marcada por la etiqueta. El destino de salto debe estar ubicado en la misma función. 
                return "@" + FunctionName + "$" + parts[1] + "\n"
                        + "0;JMP\n";

            case "if-goto": // El valor más alto de la pila aparece si el valor no es cero, la ejecución continúa desde la ubicación marcada por la etiqueta; de lo contrario, la ejecución continúa desde el siguiente comando en el programa. El destino de salto debe estar ubicado en la misma función.
                return "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@" + FunctionName + "$" + parts[1] + "\n"
                        + "D;JNE\n";
            default:
                return "¡Algo salío mal!";
        }
    }

    public String PushMemorySegments(String originalLine) {
        String[] parts = originalLine.split(" ");
        switch (parts[1])//Segmetos de memoria -> argument, local, static, constant, this-that, pointer, temp  
        {
            case "argument": //Darle push al segmento[index] hacia el stack
                return "@ARG\n"
                        + "D=M\n"
                        + "@" + parts[2].trim() + "\n"
                        + "A=D+A\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n";
            case "local":
                return "@LCL\n"
                        + "D=M\n"
                        + "@" + parts[2].trim() + "\n"
                        + "A=D+A\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n";
            case "static":
                return "@" + tp + "." + parts[2].trim() + "\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n";
            case "constant":
                return "@" + parts[2].trim() + "\n"
                        + "D=A\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n";

            case "this":
                return "@THIS\n"
                        + "D=M\n"
                        + "@" + parts[2].trim() + "\n"
                        + "A=D+A\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n";
            case "that":
                return "@THAT\n"
                        + "D=M\n"
                        + "@" + parts[2].trim() + "\n"
                        + "A=D+A\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n";
            case "pointer":
                if (parts[2].trim().equals("0")) {
                    return "@THIS\n"
                            + "D=M\n"
                            + "@SP\n"
                            + "A=M\n"
                            + "M=D\n"
                            + "@SP\n"
                            + "M=M+1\n";
                }
                return "@THAT\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n";
            case "temp":
                return "@R5\n"
                        + "D=A\n"
                        + "@" + parts[2].trim() + "\n"
                        + "A=D+A\n"
                        + "D=M\n"
                        + "@SP\n"
                        + "A=M\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "M=M+1\n";
            default:
                break;
        }
        return "¡Algo salió mal!";
    }

    public String PopMemorySegments(String originalLine) {
        String[] parts = originalLine.split(" ");
        switch (parts[1])//Segmentos de memoria -> argument, local, static, constant, this-that, pointer, temp  
        {
            case "argument":
                return "@ARG\n"
                        + "D=M\n"
                        + "@" + parts[2].trim() + "\n"
                        + "D=D+A\n"
                        + "@R13\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@R13\n"
                        + "A=M\n"
                        + "M=D\n";

            case "local"://Segmento pop index para sacar el valor del Stack...
                return "@LCL\n"
                        + "D=M\n"
                        + "@" + parts[2].trim() + "\n"
                        + "D=D+A\n"
                        //... y lo almacena en el segmento[index].
                        + "@R13\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@R13\n"
                        + "A=M\n"
                        + "M=D\n";
            case "static":
                return    "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@" + tp + "." + parts[2].trim() + "\n"
                        + "M=D";
            case "constant":
                break;
            case "this":
                return "@THIS\n"
                        + "D=M\n"
                        + "@" + parts[2].trim() + "\n"
                        + "D=D+A\n"
                        + "@R13\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@R13\n"
                        + "A=M\n"
                        + "M=D\n";

            case "that":
                return "@THAT\n"
                        + "D=M\n"
                        + "@" + parts[2].trim() + "\n"
                        + "D=D+A\n"
                        + "@R13\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@R13\n"
                        + "A=M\n"
                        + "M=D\n";

            case "pointer":
                if (parts[2].trim().equals("0")) {
                    return "@THIS\n"
                            + "D=A\n"
                            + "@R13\n"
                            + "M=D\n"
                            + "@SP\n"
                            + "AM=M-1\n"
                            + "D=M\n"
                            + "@R13\n"
                            + "A=M\n"
                            + "M=D\n";
                }
                return "@THAT\n"
                        + "D=A\n"
                        + "@R13\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@R13\n"
                        + "A=M\n"
                        + "M=D\n";
            case "temp":
                return "@R5\n"
                        + "D=A\n"
                        + "@" + parts[2].trim() + "\n"
                        + "D=D+A\n"
                        + "@R13\n"
                        + "M=D\n"
                        + "@SP\n"
                        + "AM=M-1\n"
                        + "D=M\n"
                        + "@R13\n"
                        + "A=M\n"
                        + "M=D\n";

            default:
                break;
        }
        return "¡Algo salió mal!";
    }

    public void firstscan(ArrayList<String> original) { //Elimina espacios en blanco y comentarios
        MainList = new ArrayList<>();
        for (int i = 0; i < original.size(); i++) {
            if (original.get(i).contains("//")) {
                String[] parts = original.get(i).split("/");
                if (parts.length != 0 && !"".equals(parts[0])) {
                    MainList.add(Translator(parts[0]).trim());
                }
            } else {
                MainList.add(Translator(original.get(i)).trim());
            }
        }
    }
    public boolean flaginit = false;

    public void createASM(String filename, String path) throws IOException {
        path = path.replace(filename, "");
        filename = filename.replace(".vm", "");

        File fout = new File(path + filename + "\\", filename + ".asm");
        FileOutputStream fos = new FileOutputStream(fout);

        try (BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(fos))) {
            if (flaginit) {
                bw.write(addInit());
            }

            for (int i = 0; i < MainList.size(); i++) {
                bw.write(MainList.get(i));
                bw.newLine();
            }
        }
        MainList = new ArrayList<>();
    }

    public void appendASM(String filename, String path) {
        try (FileWriter fw = new FileWriter(path + filename + ".asm", true);
                BufferedWriter bw = new BufferedWriter(fw);
                PrintWriter out = new PrintWriter(bw)) {
            for (int i = 0; i < MainList.size(); i++) {
                out.println(MainList.get(i));
            }
        } catch (IOException e) {
            //Manejo de excepciones
        }
    }

    public String addInit() {
        operationLabel++;
        return "@256\n"
                + "D=A\n"
                + "@SP\n"
                + "M=D\n"
                + "@SP\n"
                + "D=M\n"
                + "@R13\n"
                + "M=D\n"
                // @RET -> *SP
                + "@RET." + operationLabel + "\n"
                + "D=A\n"
                + "@SP\n"
                + "A=M\n"
                + "M=D\n"
                + "@SP\n"
                + "M=M+1\n"
                // LCL to *SP
                + "@LCL\n"
                + "D=M\n"
                + "@SP\n"
                + "A=M\n"
                + "M=D\n"
                + "@SP\n"
                + "M=M+1\n"
                // ARG to *SP
                + "@ARG\n"
                + "D=M\n"
                + "@SP\n"
                + "A=M\n"
                + "M=D\n"
                + "@SP\n"
                + "M=M+1\n"
                // THIS to *SP
                + "@THIS\n"
                + "D=M\n"
                + "@SP\n"
                + "A=M\n"
                + "M=D\n"
                + "@SP\n"
                + "M=M+1\n"
                // THAT to *SP
                + "@THAT\n"
                + "D=M\n"
                + "@SP\n"
                + "A=M\n"
                + "M=D\n"
                + "@SP\n"
                + "M=M+1\n"
                + "@R13\n"
                + "D=M\n"
                + "@0\n"
                + "D=D-A\n"
                + "@ARG\n"
                + "M=D\n"
                // SP to LCL
                + "@SP\n"
                + "D=M\n"
                + "@LCL\n"
                + "M=D\n"
                + "@Sys.init\n"
                + "0;JMP\n"
                + "(RET." + operationLabel + ")\n"
                + "0;JMP\n";
    }

    public void MergeFiles(List<File> fileList) throws IOException {
        String folderName = "";
        String filePath = "";

        if (fileList.size() < 2) {
            Read(fileList.get(0));
            filePath = fileList.get(0).getPath();
            filePath = filePath.replace("\\" + fileList.get(0).getName(), "");
            createASM(fileList.get(0).getParentFile().getName(), filePath);
            System.out.println("Un archivo");
        } else {
            for (File file : fileList) {
                if (file.getParentFile().getName().equals(folderName))//Misma carpeta
                {
                    Read(file);
                    filePath = file.getPath();
                    filePath = filePath.replace(file.getName(), "");
                    appendASM(file.getParentFile().getName(), filePath);

                    System.out.println("Misma carpeta ");
                    System.out.println("Archivo: " + file.getName());
                    System.out.println("Nombre de carpeta: " + file.getParentFile().getName());
                    System.out.println("Archivo y nombre de carpeta: " + folderName + "\n");
                } else {
                    Read(file);
                    filePath = file.getPath();
                    filePath = filePath.replace("\\" + file.getName(), "");
                    createASM(file.getParentFile().getName(), filePath);
                }
                folderName = file.getParentFile().getName();
            }
        }
    }
}