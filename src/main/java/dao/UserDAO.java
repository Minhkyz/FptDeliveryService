package dao;

import dbcontext.DBConnection;
import entities.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    Connection conn = null;
    PreparedStatement ps = null;


    public int addUser(String username, String password, String email, String fullName, String phone, String img) {
        int result = 0;
        String query = "INSERT INTO `user` (`username`, `password`, `email`, `fullname`, `phone`, `img`) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, fullName);
            ps.setString(5, phone);
            ps.setString(6, img);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public Users login(String username, String password) {
        ResultSet resultSet = DBConnection.querySet("SELECT * FROM `user` WHERE ? IN (username, email) AND `password` = ?", username, password);
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    return new Users(
                            resultSet.getInt(1),
                            resultSet.getString(2),
                            resultSet.getString(3),
                            resultSet.getString(4),
                            resultSet.getString(5),
                            resultSet.getString(6),
                            resultSet.getString(7)
                    );
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public List<Users> getAllUser() {
        List<Users> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("select * from user");
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    list.add(new Users(
                            resultSet.getInt(1),
                            resultSet.getString(2),
                            resultSet.getString(3),
                            resultSet.getString(4),
                            resultSet.getString(5),
                            resultSet.getString(6),
                            resultSet.getString(7)
                    ));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public Users getUserById(int id) {
        ResultSet resultSet = DBConnection.querySet("select * from user where id = ?", id);
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    return new Users(
                            resultSet.getInt(1),
                            resultSet.getString(2),
                            resultSet.getString(3),
                            resultSet.getString(4),
                            resultSet.getString(5),
                            resultSet.getString(6),
                            resultSet.getString(7)
                    );
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public List<Users> searchUser(String keyword) {
        List<Users> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("SELECT * FROM `user` WHERE (username LIKE ?) OR (email LIKE ?)", "%" + keyword + "%" ,"%" + keyword + "%");
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    list.add(new Users(
                            resultSet.getInt(1),
                            resultSet.getString(2),
                            resultSet.getString(3),
                            resultSet.getString(4),
                            resultSet.getString(5),
                            resultSet.getString(6),
                            resultSet.getString(7)
                    ));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public int editUserById(int userID, String username, String password, String email, String fullName, String phone, String img) {
        int result = 0;
        String query = "UPDATE `user` SET username = ?, password = ?, email = ?, fullname = ?, phone = ?, img = ? WHERE `user`.`id` = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, fullName);
            ps.setString(5, phone);
            ps.setString(6, img);
            ps.setInt(7, userID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public int deleteUserById(int id) {
        int result = 0;
        String query = "DELETE FROM `user` WHERE `user`.`id` = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        Users a = dao.login("a","a");
        System.out.println(a.getFullName()+"|"+a.getPassword());

        /* List<Users> list = dao.searchUser("gennike");
        for (Users o : list) {
            System.out.println(o.getFullName());
        }
    */
    }

}
