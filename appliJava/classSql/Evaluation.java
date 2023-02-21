package classSql;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Evaluation {
    
    private int noCommande;
    private int note;
    private String avis;

    public Evaluation(int noCommande, int note, String avis) {
        this.noCommande = noCommande;
        this.note = note;
        this.avis = avis;
    }

    public int getNoCommande() {
        return noCommande;
    }

    public int getNote() {
        return note;
    }

    public String getAvis() {
        return avis;
    }

    public static List<Evaluation> getAllFromRestaurant(Restaurant restaurant) {
        List<Evaluation> evaluations = new ArrayList<>();
        try {
            String request = "SELECT Commande.noCommande, note, avis FROM Evaluation INNER JOIN Commande ON Commande.noCommande = Evaluation.noCommande LEFT JOIN AvisEvaluation ON Evaluation.noCommande = AvisEvaluation.noCommande WHERE email = ?";
            ResultSet rs = DBConnector.getInstance().launchSQLRequest(request, restaurant.getEmail());
            while (rs.next()) {
                evaluations.add(new Evaluation(rs.getInt("noCommande"), rs.getInt("note"), rs.getString("avis")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return evaluations;
    }

}
