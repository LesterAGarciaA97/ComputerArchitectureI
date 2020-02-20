package vmfiletoasmfiletranslator;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

//import org.apache.tools.ant.util.FileUtils;
import org.apache.commons.io.FileUtils;

public class VMFileToASMFileTranslator {

    public static void main(String[] args) throws IOException {
        boolean flag = true;
        Utilities Util = new Utilities();
        while (flag) {
            VMI vmi = new VMI();
            File fileParse = null;
            JFileChooser chooser = new JFileChooser();
            chooser.setDialogTitle("Virtual Machine");
            chooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
            chooser.setAcceptAllFileFilterUsed(false);

            if (chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
                System.out.println("getCurrentDirectory(): " + chooser.getCurrentDirectory());
                System.out.println("getSelectedFile() : " + chooser.getSelectedFile());
            } else {
                System.out.println("No se seleccionó nada, intente de nuevo.");
            }
            try {
                fileParse = chooser.getSelectedFile();
                String[] extensions = new String[]{"vm"};
                List<File> files = (List<File>) FileUtils.listFiles(fileParse, extensions, true);

                if (JOptionPane.showConfirmDialog(null, "¿Agregar contenido a sus archivos?", "Advertencia",
                        JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
                    vmi.flaginit = true;
                }
                vmi.MergeFiles(files);
                flag = Util.stay();
            } catch (Exception e) {
                flag = Util.stay();
            }
        }
        System.exit(0);
    }
}
