package dao;

import entities.UserRole;

import java.util.List;

public interface RoleDAO {
    int addRole(String name);
    int editRole(String id, String name);
    int setUserRole(int userID, int roleID);
    UserRole userRoles(int id);
    int editUserRole(String userID, String roleID);
    int deleteUserRole(String id);
}
