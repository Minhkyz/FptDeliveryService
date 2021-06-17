package dao;

import dbcontext.DBConnection;
import entities.Users;
import org.apache.commons.lang3.RandomStringUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    Connection conn = null;
    PreparedStatement ps = null;

    /**
     * Function Add User
     * @param username
     * @param password
     * @param email
     * @param fullName
     * @param phone
     * @return
     */
    public int addUser(String username, String password, String email, String fullName, String phone) {
        int result = 0;
        String query = "INSERT INTO `user` (`username`, `password`, `email`, `fullname`, `phone`, `img`) VALUES (?, ?, ?, ?, ?, '')";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, fullName);
            ps.setString(5, phone);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * Function login
     * @param username
     * @param password
     * @return
     */
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

    /**
     * Function get list user
     * @return
     */
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

    /**
     * Check User Exist Username
     * @param temp
     * @return
     */
    public Users checkUserExistUsername(String temp){
        ResultSet resultSet = DBConnection.querySet("SELECT * FROM `user` WHERE ? IN (username)", temp);
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

    /**
     * Check User Exist Email
     * @param temp
     * @return
     */
    public Users checkUserExistEmail(String temp){
        ResultSet resultSet = DBConnection.querySet("SELECT * FROM `user` WHERE ? IN (email)", temp);
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

    /**
     * Check User Exist Phone
     * @param temp
     * @return
     */
    public Users checkUserExistPhone(String temp){
        ResultSet resultSet = DBConnection.querySet("SELECT * FROM `user` WHERE ? IN (phone)", temp);
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
    /**
     * Function get User by ID
     * @param id
     * @return
     */
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

    /**
     * Function search user by Email, Username
     * @param keyword
     * @return
     */
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

    /**
     * Function edit user by ID
     * @param userID
     * @param username
     * @param password
     * @param email
     * @param fullName
     * @param phone
     * @param img
     * @return
     */
    public int editUserById(String userID, String username, String password, String email, String fullName, String phone, String img) {
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

    /**
     * Function delete User by ID
     * @param id
     * @return
     */
    public int deleteUserById(String id) {
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

    /**
     * Function reset pass by Email
     * @param email
     * @return
     */
    public String resetPasswordByEmail(String email) {
        String randomPassword = RandomStringUtils.randomAlphanumeric(10);

        String query = "UPDATE `user` SET password = ? WHERE `user`.`email` = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, randomPassword);
            ps.setString(2, email);
            ps.executeUpdate();
            return randomPassword;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return randomPassword;
    }
}
