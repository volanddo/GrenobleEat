import java.util.ArrayList;

public class RestoApp {
    private PageResto etat;
    private ArrayList<Commande> commandesEnCours;
    private int indiceCommande;
    private String mailResto;

    //////////////////////////////// Setter /////////////////////

    public void setMailResto(String mailResto) {
        this.mailResto = mailResto;
    }

    public void setEtat(PageResto etat) {
        this.etat = etat;
    }

    //////////////////////////////// Getter /////////////////////

    public PageResto getEtat() {
        return etat;
    }

    public int getIndiceCommande() {
        return indiceCommande;
    }

    public String getMailResto() {
        return mailResto;
    }

    ///////////////////////////// Constructor //////////////////
    public RestoApp(String mailResto) {
        this.etat = PageResto.MENU_COMMANDE;
        this.commandesEnCours = new ArrayList<Commande>();
        this.indiceCommande = -1;
        this.mailResto = mailResto;
    }

    //////////////////////////// Getter //////////////////////
    public ArrayList<Commande> getCommandesEnCours() {
        return commandesEnCours;
    }

    ///////////////////////////// Methods //////////////////////
    public Commande goToPageCommandeNo(int indiceCommande) throws DemandeInvalide {
        Commande commandeDemandee;
        try {
            commandeDemandee = this.commandesEnCours.get(indiceCommande);
        } catch (Exception IndexOutOfBoundsException) {
            throw new DemandeInvalide();
        }
        this.etat = PageResto.PAGE_COMMANDE;
        this.indiceCommande = indiceCommande;
        return commandeDemandee;
    }

    public void goToMenuCommande() {
        this.indiceCommande = -1;
        this.etat = PageResto.MENU_COMMANDE;
    }

    public void updatePageCommande(ArrayList<Commande> commandesUpdated) {
        this.commandesEnCours = commandesUpdated;
    }
}
