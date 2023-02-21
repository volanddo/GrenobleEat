package classSql;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Client {

    private int noClient;
    private String email;
    private String mdp;
    private String nom;
    private String prenom;
    private String adresse;

    public Client(int noClient, String email, String mdp, String nom, String prenom, String adresse) {
        this.noClient = noClient;
        this.email = email;
        this.mdp = mdp;
        this.nom = nom;
        this.prenom = prenom;
        this.adresse = adresse;
    }

    public int getNoClient() {
        return noClient;
    }
    public String getEmail() {
        return email;
    }
    public String getMdp() {
        return mdp;
    }
    public String getNom() {
        return nom;
    }
    public String getPrenom() {
        return prenom;
    }
    public String getAdresse() {
        return adresse;
    }

    /**
     * Check and give the number of a client if information given by are correct=
     * 
     * @param email email of the user
     * @param mdp   Password of the user
     * @return The client
     */
    public static Client connect(String email, String mdp) {
        String request = "SELECT * FROM CLIENT WHERE email = ? AND mdp = ?";
        ResultSet res = DBConnector.getInstance().launchSQLRequest(request, email, mdp);

        if (res != null) {
            try {
                if (!res.next())
                    return null;
                return new Client(res.getInt("noClient"), res.getString("email"), res.getString("mdp"),
                        res.getString("nom"), res.getString("prenom"), res.getString("adresse"));
            } catch (SQLException e) {
            }
        }
        return null;
    }

    /**
     * Give the corresponding idUser of an email
     * 
     * @param email email of the user
     * @return Return an unique ID user or 0 if the user doesn't exist.
     */
    public static int getId(String email) {
        String request = "SELECT NOCLIENT FROM Client WHERE email = ?";
        ResultSet res = DBConnector.getInstance().launchSQLRequest(request, email);
        if (res != null) {
            try {
                while (res.next()) {
                    return res.getInt("NOCLIENT");
                }
            } catch (SQLException e) {
            }
        }
        return 0;
    }

    public void supprimerDonnees() {
        String request = "UPDATE Client SET email = 'anonyme', mdp = 'anonyme', prenom = 'anonyme', nom = 'anonyme', adresse = 'anonyme' WHERE noClient = ?;";
        DBConnector.getInstance().launchSQLRequest(request, getNoClient());
    }

}
