package dbcontext;

import com.mysql.cj.api.x.Result;
import java.lang.invoke.StringConcatFactory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {
    private static final String HOST = "localhost";
    private static final String DBNAME = "delivery";
    private static final String PORT = "3306";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://" + HOST + ':' + PORT + '/' + DBNAME + "?serverTimezone=UTC";
        return DriverManager.getConnection(url, USERNAME, PASSWORD);
    }

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

    public static void main(String[] args) {

        try {
            String query = "select * from user";
            ResultSet resultSet = querySet(query);
            System.out.println(getConnection());
        } catch (Exception e) {
        }
    }
}
