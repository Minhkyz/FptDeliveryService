package entities;

public class UserRole {
    private int id;
    private int userID;
    private int roleID;

    public UserRole() {
    }

    public UserRole(int id, int userID, int roleID) {
        this.id = id;
        this.userID = userID;
        this.roleID = roleID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }
}
