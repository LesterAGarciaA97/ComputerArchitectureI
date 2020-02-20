package vmfiletoasmfiletranslator;

import javax.swing.JOptionPane;

public class Utilities {
    public boolean stay()
    {
        int dialogButton = JOptionPane.YES_NO_OPTION;
        int dialogResult = JOptionPane.showConfirmDialog (null, "¿Desea continuar?","",dialogButton);
        if(dialogResult == JOptionPane.YES_OPTION){
            return true;
        }
        return false;
    }
}
