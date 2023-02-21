import java.util.ArrayList;

public class InterfaceRestoBD implements InterfaceBD{
    private RestoApp app;
    private DBConnector connector;
    private String mailResto;
    private InterfaceRestoBD interfaceRestoBD;

    /////////////////////////////////////// Constructor //////////////////////////////
    public InterfaceRestoBD(String mailResto, DBConnector dbConnector) {
        this.connector = dbConnector;
        this.app = new RestoApp(mailResto);
        this.afficheMenuCommande();
    }

    public void exec(String demande) throws DemandeInvalide{
        switch (this.app.getEtat()) {
            case MENU_COMMANDE:
                if (demande.contentEquals("u")) { //L'utilisateur met à jour le menu
                    this.update();
                    this.afficheMenuCommande();
                    return;
                }
                try { //L'utilisateur rentre un numéro de commande
                    int indiceCommande = Integer.parseInt(demande);
                    this.app.goToPageCommandeNo(indiceCommande);
                    this.affichePageCourante();
                }
                catch (NumberFormatException e) {
                    throw new DemandeInvalide();
                }
                break;

            case PAGE_COMMANDE :
                if (demande.contentEquals("m")) {
                    this.update();
                    this.app.goToMenuCommande();
                    this.afficheMenuCommande();
                    return;
                }
                Commande commmandeEnCours = this.app.getCommandesEnCours().get(this.app.getIndiceCommande());
                switch (commmandeEnCours.getEtatCommande()) {
                    case ATTENTE_VALIDATION:
                        switch (demande) {
                            case "y":
                                //this.connector.changeEtat(commmandeEnCours.getNoCommande(), EtatCommande.VALIDEE);
                                app.getCommandesEnCours().get(this.app.getIndiceCommande()).setEtatCommande(EtatCommande.VALIDEE);
                                break;
                            case "n":
                                //this.connector.changeEtat(commmandeEnCours.getNoCommande(), EtatCommande.ANNULE_PAR_LE_RESTO);
                                app.getCommandesEnCours().get(this.app.getIndiceCommande()).setEtatCommande(EtatCommande.ANNULE_PAR_LE_RESTO);
                                break;
                            default:
                                throw (new DemandeInvalide());
                        }
                    case VALIDEE:
                    switch (demande) {
                        case "y":
                            //this.connector.changeEtat(commmandeEnCours.getNoCommande(), EtatCommande.DISPONIBLE);
                            app.getCommandesEnCours().get(this.app.getIndiceCommande()).setEtatCommande(EtatCommande.DISPONIBLE);
                            break;
                        default:
                            throw (new DemandeInvalide());
                    }
                    default:
                        System.out.print("Commande dans un Etat non traitée par le restaurant");
                        break;
                }
                this.update();
                System.out.print("Etat de la commande mis à jour");
                this.affichePageCourante();
        }
    }



    private void afficheMenuCommande() {
        int indice = 0;
        System.out.print("Taper le numéro d'une commande pour plus de détails\n");
        System.out.print("----------------------------------------\n");
        if (this.app.getCommandesEnCours().isEmpty()) {
            System.out.print("PAS DE COMMANDES EN COURS\n");
        }
        else {
            for (Commande commande : this.app.getCommandesEnCours()) {
                System.out.print(indice + ": " + commande.toString());
                indice += 1;
            }
        }
        System.out.print("----------------------------------------\n");
        System.out.print("Taper 'u' pour mettre à jour les commandes\n");
    }

    private void affichePageCourante() {
        Commande commandeActuelle = this.app.getCommandesEnCours().get(this.app.getIndiceCommande());
        System.out.print("----------------------------------------\n");
        System.out.print("NoCommande : " + commandeActuelle.getNoCommande() + "\n");
        System.out.print("Email du Client : " + commandeActuelle.getEmail() + "\n");
        System.out.print("EtatCommande : " + commandeActuelle.getEtatCommande() + "\n");
        System.out.print("Type : " + commandeActuelle.getType() +"\n");
        System.out.print("----------------------------------------\n");
        switch (commandeActuelle.getEtatCommande()) {
            case ATTENTE_VALIDATION:
                System.out.print("Pour valider la commande taper 'y'\n");
                System.out.print("Pour refuser la commande taper 'n'\n");
                break;
            case VALIDEE:
                System.out.print("Si la commande est disponible taper 'y'\n");
                break;
            default:
                System.out.print("Pas d'actions disponibles pour cette commande\n");
        }
        System.out.print("Pour retourner au menu des commandes taper 'm'\n");
    }

    private void update() {
        //this.app.updatePageCommande(this.connector.getCommandes(this.app.getMailResto()));

        /* Pour tester */
        ArrayList<Commande> listeCommandes = new ArrayList<Commande>();
        Commande commande1 = new Commande(1523,EtatCommande.VALIDEE,"toto@gmail.com", "01524", "En Livraison\n");
        Commande commande2 = new Commande(1736,EtatCommande.ATTENTE_VALIDATION,"jean@laposte.com", "75524", "Sur Place\n");
        listeCommandes.add(commande1);
        listeCommandes.add(commande2);
        this.app.updatePageCommande(listeCommandes);
    }
}
