package classSql;

import java.sql.*;

public class DBConnector {
    public Connection con;
    static final String CONN_URL = "jdbc:oracle:thin:@oracle1.ensimag.fr:1521:oracle1";

    private static DBConnector instance;
    public static DBConnector getInstance() {
        return DBConnector.instance;
    }
    public static void init() {
        new DBConnector();
    }

    public DBConnector() {
        if (getInstance() != null) return;
        instance = this;
        try {
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            String user = "volandd";
            String passwd = "volandd";
            this.con = DriverManager.getConnection(CONN_URL, user, passwd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void closeConnection() throws SQLException {
        this.con.close();
    }

    public Array createArrayOf(String type, Object[] args) {
        try {
            return con.createArrayOf(type, args);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public ResultSet launchSQLRequest(String request, Object... args) {
        try {
            PreparedStatement stmt = con.prepareStatement(request);
            int i = 1;
            for (Object obj : args) {
                if (obj instanceof Array)
                    stmt.setArray(i, (Array) obj);
                if (obj instanceof String)
                    stmt.setString(i, (String) obj);
                if (Integer.class.isInstance(obj))
                    stmt.setInt(i, (int) obj);
                i += 1;
            }
            return stmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
