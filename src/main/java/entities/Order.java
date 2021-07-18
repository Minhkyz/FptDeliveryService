package entities;

import java.sql.Timestamp;

public class Order {
    private int id;
    private int userID;
    private String order_name;
    private int receiverID;
    private String receiver_name;
    private double price;
    private int status;
    private Timestamp time;

    public Order() {
    }

    public Order(int id, int userID, String order_name, int receiverID, String receiver_name, double price, int status, Timestamp time) {
        this.id = id;
        this.userID = userID;
        this.order_name = order_name;
        this.receiverID = receiverID;
        this.receiver_name = receiver_name;
        this.price = price;
        this.status = status;
        this.time = time;
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

    public String getOrder_name() {
        return order_name;
    }

    public void setOrder_name(String order_name) {
        this.order_name = order_name;
    }

    public int getReceiverID() {
        return receiverID;
    }

    public void setReceiverID(int receiverID) {
        this.receiverID = receiverID;
    }

    public String getReceiver_name() {
        return receiver_name;
    }

    public void setReceiver_name(String receiver_name) {
        this.receiver_name = receiver_name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }
}
