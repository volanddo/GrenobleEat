

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class AppView {
    String nomFichier;

    public AppView(String nomFichier){
        this.nomFichier = nomFichier;
    }
    
    public void setNomFichier(String nom){
        this.nomFichier = nom;
    }

    /** Affiche le contenu d'un fichier dans le terminal */
    public void afficherFichier(){
        File file = new File(this.nomFichier);
        try {    
             Scanner scan = new Scanner(file);
             while (scan.hasNextLine()) {
                String line = scan.nextLine();
                System.out.println(line);
             }
             scan.close();
         }
        catch (FileNotFoundException e) {
             e.printStackTrace();
        }
    }

    /** Gets a single input line */
    public String getinput(Scanner sc){

        // Read an input
        String str= sc.nextLine();
        return str;
    }
}