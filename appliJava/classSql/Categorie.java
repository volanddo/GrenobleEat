package classSql;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Categorie {
    private String name;
    private String catMere;
    public Categorie(String name, String catMere){
        this.name = name;
        this.catMere = catMere;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getCatMere() {
        return catMere;
    }
    public void setCatMere(String catMere) {
        this.catMere = catMere;
    }

    /**
     * Get all categorie
     * 
     * @return A List of all categories
     */
    public static List<Categorie> getAll() {
        List<Categorie> categories = new ArrayList<Categorie>();
        try {
            String request = "SELECT * FROM Categories";
            ResultSet rs = DBConnector.getInstance().launchSQLRequest(request);
            while (rs.next()) {
                categories.add(new Categorie(rs.getString("categorie"), rs.getString("categorie_mere")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

    /**
     * get a list of categories sorted by recommandation for an user
     * 
     * @param idUser User who make the request
     * @return return a list of categories sorted by recommandation
     */
    public static List<Categorie> getRecommandations(int idUser) {
        List<Categorie> categories = new ArrayList<>();
        try {
            String request = "SELECT noteM.categorie, noteMoyenne, nombreNotes FROM (" +
                    "SELECT AVG(note) as noteMoyenne, categorie FROM CATEGORIESRESTAURANT " +
                    "INNER JOIN COMMANDE ON COMMANDE.email = CATEGORIESRESTAURANT.email " +
                    "INNER JOIN EVALUATION ON EVALUATION.noCommande = COMMANDE.noCommande " +
                    "WHERE noClient = ? " +
                    "GROUP BY categorie " +
                    "ORDER BY AVG(note) DESC " +
                    ") noteM INNER JOIN (" +
                    "SELECT COUNT(note) as nombreNotes, categorie FROM EVALUATION " +
                    "INNER JOIN COMMANDE ON EVALUATION.noCommande = COMMANDE.noCommande " +
                    "INNER JOIN CATEGORIESRESTAURANT ON COMMANDE.email = CATEGORIESRESTAURANT.email " +
                    "GROUP BY categorie " +
                    "ORDER BY COUNT(note) DESC" +
                    ") noteT ON noteM.categorie = noteT.categorie";
            ResultSet rs = DBConnector.getInstance().launchSQLRequest(request, idUser);
            while (rs.next()) {
                categories.add(new Categorie(rs.getString("categorie"), rs.getString("categorie_mere")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

}
