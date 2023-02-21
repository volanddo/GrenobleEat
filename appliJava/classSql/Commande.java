package classSql;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Commande {

    public static enum Statut {
        DISPONIBLE("Disponible"),
        VALIDE("Validé"),
        ATTENTE_CONFIRMATION("Attente de confirmation"),
        EN_LIVRAISON("En livraison"),
        ANNULE_CLIENT("Annulé client"),
        ANNULE_RESTAURANT("Annulé restaurant"),
        TERMINE("Terminé");

        private String name;

        private Statut(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }

        public static Statut getFromName(String name) {
            for (Statut s : Statut.values()) {
                if (s.getName().equals(name))
                    return s;
            }
            return null;
        }
    }

    public static enum Type {
        SUR_PLACE("Sur place"),
        A_EMPORTER("A emporter"),
        LIVRAISON("Livraison");

        private String name;

        private Type(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }

        public static Type getFromName(String name) {
            for (Type t : Type.values()) {
                if (t.getName().equals(name))
                    return t;
            }
            return null;
        }
    }

    private int noCommande;
    private Date dateHeure;
    private String emailRestaurant;
    private int noClient;
    private Type type;
    private Statut statut;

    // TODO retirer ça
    private String adresseClient;
    private String adresseResto;

    public String getAdresseClient() {
        return adresseClient;
    }

    public String getAdresseResto() {
        return adresseResto;
    }

    public Commande(int noCommande, Date dateHeure, String emailRestaurant, int noClient, Type type, Statut statut) {
        this.noCommande = noCommande;
        this.dateHeure = dateHeure;
        this.emailRestaurant = emailRestaurant;
        this.noClient = noClient;
        this.type = type;
        this.statut = statut;
    }

    public int getNoCommande() {
        return noCommande;
    }

    public Date getDateHeure() {
        return dateHeure;
    }

    public String getEmailRestaurant() {
        return emailRestaurant;
    }

    public int getNoClient() {
        return noClient;
    }

    public Type getType() {
        return type;
    }

    public Statut getStatut() {
        return statut;
    }

    public void setStatut(Statut statut) {
        this.statut = statut;
        Commande.changeStatut(this, statut);
    }

    public static List<Commande> getAvailableForRestaurant(Restaurant restaurant) {
        List<Commande> commandes = new ArrayList<>();
        try {
            String request = "SELECT * FROM Commande WHERE statut IN ('Disponible', 'Validé', 'Attente de confirmation') AND email = ?";
            ResultSet rs = DBConnector.getInstance().launchSQLRequest(request, restaurant.getEmail());
            while (rs.next()) {
                commandes.add(new Commande(rs.getInt("noCommande"), new Date(rs.getLong("dateHeure")),
                        rs.getString("email"), rs.getInt("noClient"), Type.getFromName(rs.getString("type")),
                        Statut.getFromName(rs.getString("statut"))));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return commandes;
    }

    public static List<Commande> getAvailableForLivreur() {
        List<Commande> commandes = new ArrayList<>();
        try {
            String request = "SELECT Commande.* FROM Commande INNER JOIN CommandeALivrer ON CommandeALivrer.noCommande = Commande.noCommande WHERE statut = 'Disponible'";
            ResultSet rs = DBConnector.getInstance().launchSQLRequest(request);
            while (rs.next()) {
                commandes.add(new Commande(rs.getInt("noCommande"), new Date(rs.getLong("dateHeure")),
                        rs.getString("email"), rs.getInt("noClient"), Type.getFromName(rs.getString("type")),
                        Statut.getFromName(rs.getString("statut"))));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return commandes;
    }

    public static void changeStatut(Commande commande, Statut newStatut) {
        String request = "UPDATE Commande SET statut = ? WHERE noCommande = ?";
        DBConnector.getInstance().launchSQLRequest(request, newStatut.getName(), commande.getNoCommande());
    }

}
