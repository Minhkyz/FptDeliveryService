package impl;

import dao.OrderDAO;
import dbcontext.DBConnection;
import entities.Order;
import entities.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderDaoImpl implements OrderDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<Order> getListOrder(){
        List<Order> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("SELECT * FROM `order`");
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    list.add(new Order(
                            resultSet.getInt(1),
                            resultSet.getInt(2),
                            resultSet.getString(3),
                            resultSet.getInt(4),
                            resultSet.getString(5),
                            resultSet.getDouble(6),
                            resultSet.getInt(7),
                            resultSet.getTimestamp(8)
                    ));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }
}
