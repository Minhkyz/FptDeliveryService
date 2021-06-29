package dao;

import entities.Users;

import java.util.List;

public interface UserDAO {
    List<Users> searchUser(String keyword);
    List<Users> getAllUser();
    Users login(String username, String password);
    Users checkUserExistUsername(String temp);
    Users checkUserExistEmail(String temp);
    Users checkUserExistPhone(String temp);
    Users getUserById(int id);
    Users getUserByEmail(String email);
    int add(String username, String password, String email, String fullName, String phone);
    int editUserById(String userID, String username, String password, String email, String fullName, String phone, String img);
    int deleteUserById(String id);
    String resetPasswordByEmail(String email);
}
