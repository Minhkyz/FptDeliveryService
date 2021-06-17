package dbcontext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {
    private static final String HOST = "34.126.138.147";
    private static final String DBNAME = "delivery";
    private static final String PORT = "3306";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "minhky123";

    /**
     * get Connection
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://" + HOST + ':' + PORT + '/' + DBNAME + "?useSSL=false&serverTimezone=UTC";
        return DriverManager.getConnection(url, USERNAME, PASSWORD);
    }

    /**
     * querySet
     * @param query
     * @param values
     * @return
     */
    public static ResultSet querySet(String query, Object... values) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            for (int i = 0; i < values.length; i++) {
                preparedStatement.setObject(i + 1, values[i]);
            }
            return preparedStatement.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
