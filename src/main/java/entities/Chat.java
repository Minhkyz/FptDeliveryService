package entities;

import java.sql.Timestamp;

public class Chat {
    private int id;
    private int orderID;
    private int sender;
    private String messages;
    private Timestamp time;

    public Chat() {
    }

    public Chat(int id, int orderID, int sender, String messages, Timestamp time) {
        this.id = id;
        this.orderID = orderID;
        this.sender = sender;
        this.messages = messages;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getSender() {
        return sender;
    }

    public void setSender(int sender) {
        this.sender = sender;
    }

    public String getMessages() {
        return messages;
    }

    public void setMessages(String messages) {
        this.messages = messages;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

}
