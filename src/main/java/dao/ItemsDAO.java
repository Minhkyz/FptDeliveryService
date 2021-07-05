package dao;

import entities.Category;
import entities.Items;

import java.util.List;

public interface ItemsDAO {
    List<Items> getAllItems();
    List<Items> getItemsByCID(String cid);
    Items getItemsByID(String id);
    Items getLast();
    List<Items> searchByName(String txtSearch);
    List<Category> getAllCategory();
    void deleteItems(int id);
    void insertItems(String price, String name, String image,
                     String description, int categoryID);
    void addItemsByUser(String price, String name, String image,
                        String description, int categoryID);
    void editItems(String price, String name, String image,
                   String description, String categoryID, String id);
    void editItems2(String price, String name, String description, String categoryID, String id);
    void deleteItems(String pid);
    void uploadImg(String img, String id);
    void insertOrder(String userID, String status);

}
