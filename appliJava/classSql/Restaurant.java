package classSql;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Restaurant {

    private String email;
    private String nom;
    private String adresse;
    private String tel;
    private int nbPlacesAssises;
    private String presentation;

    public Restaurant(String email, String nom, String adresse, String tel, int nbPlacesAssises, String presentation) {
        this.email = email;
        this.nom = nom;
        this.adresse = adresse;
        this.tel = tel;
        this.nbPlacesAssises = nbPlacesAssises;
        this.presentation = presentation;
    }

    public String getEmail() {
        return email;
    }

    public String getNom() {
        return nom;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getTel() {
        return tel;
    }

    public int getNbPlacesAssises() {
        return nbPlacesAssises;
    }

    public String getPresentation() {
        return presentation;
    }

    /**
     * Filtre les restaurants donnés en fonction d'une liste de catégories
     * 
     * @param restaurants Les restaurants à filtrer
     * @param categories  Les catégories à tester
     * @return
     */
    public static List<Restaurant> filterByCategories(List<Restaurant> restaurants,
            List<Categorie> categories) {
        List<Restaurant> restaurantsRes = new ArrayList<>();
        try {
            String request = "SELECT DISTINCT email FROM CategoriesRestaurant WHERE email IN (?) AND categorie IN (?)";
            ResultSet rs = DBConnector.getInstance().launchSQLRequest(request,
                    DBConnector.getInstance().createArrayOf("varchar",
                            categories.stream().map(c -> c.getName()).toArray()),
                    DBConnector.getInstance().createArrayOf("varchar",
                            restaurants.stream().map(r -> r.getEmail()).toArray()));
            List<String> emailFiltered = new ArrayList<>();
            while (rs.next()) {
                emailFiltered.add(rs.getString("email"));
            }
            restaurantsRes = Arrays.asList(
                    restaurants.stream().filter(r -> emailFiltered.contains(r.getEmail())).toArray(Restaurant[]::new));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return restaurantsRes;
    }

    /**
     * Filtre les restaurants donnés en fonction de leur jour d'ouverture
     * 
     * @param restaurants Les restaurants à filtrer
     * @param jour        Le jour à tester
     * @return
     */
    public static List<Restaurant> filterByDay(List<Restaurant> restaurants, Jour jour) {
        List<Restaurant> restaurantsRes = new ArrayList<>();
        try {
            String request = "SELECT DISTINCT email FROM Creneau WHERE jour = ? AND email IN (?)";
            ResultSet rs = DBConnector.getInstance().launchSQLRequest(request, jour.getNumber(),
                    DBConnector.getInstance().createArrayOf("varchar",
                            restaurants.stream().map(r -> r.getEmail()).toArray()));
            List<String> emailFiltered = new ArrayList<>();
            while (rs.next()) {
                emailFiltered.add(rs.getString("email"));
            }
            restaurantsRes = Arrays.asList(
                    restaurants.stream().filter(r -> emailFiltered.contains(r.getEmail())).toArray(Restaurant[]::new));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return restaurantsRes;
    }

    /**
     * Filtre les restaurants donnés en fonction de leur horaire d'ouverture
     * 
     * @param restaurants Les restaurants à filtrer
     * @param heure       L'heure à laquelle le restaurant doit être ouvert, sous la
     *                    forme "12:30"
     * @return
     */
    public static List<Restaurant> filterByHour(List<Restaurant> restaurants, String heure) {
        List<Restaurant> restaurantsRes = new ArrayList<>();
        try {
            String request = "SELECT DISTINCT email FROM Creneau WHERE heureOuverture <= TO_TIMESTAMP(?, 'HH24:MI') AND heureFermeture >= TO_TIMESTAMP(?, 'HH24:MI') AND email IN (?)";
            ResultSet rs = DBConnector.getInstance().launchSQLRequest(request, heure, heure,
                    DBConnector.getInstance().createArrayOf("varchar",
                            restaurants.stream().map(r -> r.getEmail()).toArray()));
            List<String> emailFiltered = new ArrayList<>();
            while (rs.next()) {
                emailFiltered.add(rs.getString("email"));
            }
            restaurantsRes = Arrays.asList(
                    restaurants.stream().filter(r -> emailFiltered.contains(r.getEmail())).toArray(Restaurant[]::new));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return restaurantsRes;
    }

    /**
     * Filtre les restaurants donnés en fonction de leur jour et horaire d'ouverture
     * 
     * @param restaurants Les restaurants à filtrer
     * @param jour        Le jour à tester
     * @param heure       L'heure à laquelle le restaurant doit être ouvert, sous la
     *                    forme "12:30"
     * @return
     */
    public static List<Restaurant> filterByHourAndDay(List<Restaurant> restaurants, Jour jour,
            String heure) {
        List<Restaurant> restaurantsRes = new ArrayList<>();
        try {
            String request = "SELECT DISTINCT email FROM Creneau WHERE jour = ? AND heureOuverture <= TO_TIMESTAMP(?, 'HH24:MI') AND heureFermeture >= TO_TIMESTAMP(?, 'HH24:MI') AND email IN (?)";
            ResultSet rs = DBConnector.getInstance().launchSQLRequest(request, jour.getNumber(), heure, heure,
                    DBConnector.getInstance().createArrayOf("varchar",
                            restaurants.stream().map(r -> r.getEmail()).toArray()));
            List<String> emailFiltered = new ArrayList<>();
            while (rs.next()) {
                emailFiltered.add(rs.getString("email"));
            }
            restaurantsRes = Arrays.asList(
                    restaurants.stream().filter(r -> emailFiltered.contains(r.getEmail())).toArray(Restaurant[]::new));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return restaurantsRes;
    }

    public List<Evaluation> getEvaluations() {
        return Evaluation.getAllFromRestaurant(this);
    }
}
