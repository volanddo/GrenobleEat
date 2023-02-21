import java.util.Scanner;


public class Main {
    // Class clients java

    public static void main(String[] args){

        String nomFichier = "appliJava/uiDesign/connexion.ui";
        AppView view = new AppView(nomFichier);

        // Connect a scanner on the standard input
        Scanner sc= new Scanner(System.in);

        DBConnector connector = null;
        String input;

        InterfaceBD inte = null;

        boolean estConnecte = false;
        while (!estConnecte) {
            System.out.print("Etes vous ?\n 1: Client\n 2: Resto\n 3: Livreur\n");
            input = view.getinput(sc);
            switch (input) {
                case "1":
                    System.out.print("not implemented yet\n");
                    break;
                case "2":
                    System.out.print("mail de votre restaurant :\n");
                    /* todo : tester si le mail du client est dans la BDD*/
                    input = view.getinput(sc);
                    inte = new InterfaceRestoBD(input, connector);
                    estConnecte = true;
                    break;
                case "3":
                    System.out.print("not implemented yet\n");
                    break;
                default:
                    System.out.print("entrée invalide\n");
                    break;

            }
        }

        while(true){
            input = view.getinput(sc);
            if (input.equals("exit")) {
                break;
            }
            try{
                inte.exec(input);
            }
            catch (DemandeInvalide e){
                System.out.println("entrée invalide");
            }
        }
    }
}
