package impl;

import dao.RoleDAO;
import dbcontext.DBConnection;
import entities.Role;
import entities.UserRole;
import entities.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RoleDaoImpl implements RoleDAO {
    Connection conn = null;
    PreparedStatement ps = null;

    @Override
    public int addRole(String name) {
        int result = 0;
        String query = "INSERT INTO `role` (`name`) VALUES (?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int editRole(String id, String name) {
        int result = 0;
        String query = "UPDATE `role` SET `name` = ? WHERE `role`.`id` = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(2, id);
            ps.setString(1, name);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int setUserRole(int userID, int roleID) {
        int result = 0;
        String query = "INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES (?, ?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setInt(2, roleID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    @Override
    public UserRole userRoles(int id) {
        ResultSet resultSet = DBConnection.querySet("SELECT * FROM `user_roles` WHERE `user_id` = ?",id);
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    return new UserRole(
                            resultSet.getInt(1),
                            resultSet.getInt(2),
                            resultSet.getInt(3)
                    );
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override
    public int editUserRole(String userID, String roleID) {
        int result = 0;
        //DELETE FROM `user_roles` WHERE `user_roles`.`id` = 4"?
        String query = "UPDATE `user_roles` SET `role_id` = ? WHERE `user_roles`.`id` = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            ps.setString(2, roleID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int deleteUserRole(String id) {
        int result = 0;
        String query = "DELETE FROM `user` WHERE `user`.`id` = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public static void main(String[] args) {
        RoleDaoImpl dao = new RoleDaoImpl();
        UserRole a = dao.userRoles(1);
        System.out.println(a.getUserID());

    }
}
