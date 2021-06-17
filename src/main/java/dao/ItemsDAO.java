package dao;

import dbcontext.DBConnection;
import entities.Category;
import entities.Items;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ItemsDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Items> getAllItems() {
        List<Items> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("select * from `items`");
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    list.add(new Items(
                            resultSet.getInt(1),
                            resultSet.getDouble(2),
                            resultSet.getString(3),
                            resultSet.getString(4),
                            resultSet.getString(5),
                            resultSet.getInt(6)));
                }
            } catch (Exception e) {

            }
        }
        return list;
    }

    public List<Items> searchByName(String txtSearch) {
        List<Items> list = new ArrayList<>();
        String query = "SELECT * FROM `items` WHERE name LIKE ?";
        try {
            conn = new DBConnection().getConnection();   // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Items(rs.getInt(1),
                        rs.getDouble(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBConnection().getConnection();   // call function form DBconnection
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }


    public void deleteItems(String pid) {
        String query = "DELETE FROM `items` WHERE id = ?";
        try {
            conn = new DBConnection().getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();

        } catch (Exception e) {

        }

    }

    public void insertItems(int id, double price, String name, String image,
                              String description, int categoryID) {
        String query = "INSERT `items` (id, price, name, image, description, categoryID," + " VALUES (?,?,?,?,?,?)";
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setDouble(1, price);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.setString(4, description);
            ps.setInt(5, categoryID);
            // ps.setInt(7, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    /**
     * Done
     * @param price
     * @param name
     * @param image
     * @param description
     * @param categoryID
     * @param id
     */
    public void editItems(double price, String name, String image,
                          String description, int categoryID, int id) {
        String query = "UPDATE `items` SET `price` = ?, `name` = ?, `img` = ?, `description` = ?,`category_id` = ? WHERE `items`.`id` = ?;";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,price);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.setString(4, description);
            ps.setString(5, categoryID);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        ItemsDAO dao = new ItemsDAO();
        List<Items> list = dao.getAllItems();  //List Product
        //dao.insertItems(15,"pizza","anhpizza","ngon lam, beo lam",1);            // Test inse
        // dao.editItems(100,"banh duc","anhbanhduc","ngon, lau ngay chua dc an",1,7);  //Test Edit Done
        dao.deleteItems(1);
        //List<Category> listC = dao.getAllCategory();   //List Category
        for (Items o : list) {
            System.out.println(o);         // Test make print list Product
//        }

        }


    }
}
