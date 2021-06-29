package impl;

import dao.ItemsDAO;
import dbcontext.DBConnection;
import entities.Category;
import entities.Items;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ItemsDaoImpl implements ItemsDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
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
    @Override
    public List<Items> getItemsByCID(String cid) {
        List<Items> list = new ArrayList<>();
        String query = "SELECT * FROM Items WHERE category_id = ?";
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
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

    @Override
    public Items getItemsByID(String id) {
        String query = "SELECT * FROM items WHERE ID = ?";
        try {
            conn = new DBConnection().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Items(rs.getInt(1),
                        rs.getDouble(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    /**
     * @return
     */
    @Override
    public Items getLast() {
        String query = "SELECT * FROM `Items` ORDER BY id DESC limit 1";
        try {
            conn = new DBConnection().getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Items(rs.getInt(1),
                        rs.getDouble(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    /**
     * @param txtSearch
     * @return
     */
    @Override
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

    /**
     * Get All Category
     *
     * @return
     */
    @Override
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category";
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

    /**
     * Delete Items
     *
     * @param id
     */
    @Override
    public void deleteItems(int id) {
        String query = "DELETE FROM `items` WHERE id = ?";
        try {
            conn = new DBConnection().getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (Exception e) {

        }

    }

    /**
     * Insert Items
     *
     * @param price
     * @param name
     * @param image
     * @param description
     * @param categoryID
     */
    @Override
    public void insertItems(String price, String name, String image,
                            String description, int categoryID) {
        String query = "INSERT INTO `items` (`price`, `name`, `img`, `description`, `category_id`) VALUES (?, ?, ?, ?, ?);";
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, price);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.setString(4, description);
            ps.setInt(5, categoryID);
            // ps.setInt(6, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    /**
     * ForUse addition Items
     *
     * @param price
     * @param name
     * @param image
     * @param description
     * @param categoryID
     */
    @Override
    public void addItemsByUser(String price, String name, String image,
                               String description, int categoryID) {
        String query = "INSERT INTO `items`(`price`, `name`, `img`, `description`, `category_id`) VALUES (?, ?, ?, ?, ?);"; //Kn Database
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, price);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.setString(4, description);
            ps.setInt(5, categoryID);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }


    /**
     * Edit Items
     *
     * @param price
     * @param name
     * @param image
     * @param description
     * @param categoryID
     * @param id
     */
    @Override
    public void editItems(String price, String name, String image,
                          String description, String categoryID, String id) {

        String query = "UPDATE `items` SET `price` = ?, `name` = ?, `img` = ?, `description` = ?,`category_id` = ? WHERE `items`.`id` = ?;";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, price);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.setString(4, description);
            ps.setString(5, categoryID);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    @Override
    public void editItems2(String price, String name, String description, String categoryID, String id) {

        String query = "UPDATE `items` SET `price` = ?, `name` = ?, `description` = ?, `category_id` = ? WHERE `items`.`id` = ?;";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, price);
            ps.setString(2, name);
            ps.setString(3, description);
            ps.setString(4, categoryID);
            ps.setString(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    @Override
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
    @Override
    public void uploadImg(String img, String id) {
        String query = "UPDATE `items` SET `img` = ? WHERE `items`.`id` = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, img);
            ps.setString(2, id);
        } catch (Exception e) {
        }
    }


    public static void main(String[] args) {
        ItemsDaoImpl dao = new ItemsDaoImpl();
        // File.separator if(fileName.contains("blob:http://localhost:8080/")){
    }

}
