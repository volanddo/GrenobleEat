import java.sql.*;
import java.util.List;
import classSql.*;
public class TestRequest {
    
    public static void main(String args[]) throws SQLException{
        
        /*
        ResultSet r = conect.lunchSQLRequest(request);
        while(r.next()){
            System.out.println(r.getInt(1));
        }
        */
        // Request prepared
        String email = "jean.neymard@gmail.com";
        String mdp = "VGJKx,kmsc1564";
        DBConnector conect = new DBConnector();
        int id = conect.connectClient(email, mdp);
        System.out.println(id + "");

        
    }

}
