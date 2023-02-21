public class Commande {
    private int noCommande;
    private EtatCommande etatCommande;
    private String email;
    private String noClient;
    private String type;


    //////////////////////////////////// Constructor ////////////////////////////////////////
    public Commande(int noCommande, EtatCommande etatCommande, String email, String noClient, String type) {
        this.noCommande = noCommande;
        this.etatCommande = etatCommande;
        this.email = email;
        this.noClient = noClient;
        this.type = type;
    }

    /////////////////////////////////// Getter ///////////////////////////////////////////


    public int getNoCommande() {
        return noCommande;
    }

    public EtatCommande getEtatCommande() {
        return etatCommande;
    }

    public String getEmail() {
        return email;
    }

    public String getNoClient() {
        return noClient;
    }

    public String getType() {
        return type;
    }

    ////////////////////////////////// Setter ////////////////////////////////////////////

    public void setEtatCommande(EtatCommande etatCommande) {
        this.etatCommande = etatCommande;
    }

    //////////////////////////////// Methods ///////////////////////////////////////////
    @Override
    public String toString() {
        return "noCommande=" + noCommande +
                ", etatCommande='" + etatCommande.toString() +
                ", type='" + type + "\n";
    }
}
