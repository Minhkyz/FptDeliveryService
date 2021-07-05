package dao;

import entities.Chat;

import java.util.List;

public interface ChatDAO {
    List<Chat> getMessagesByOrderId(int id);
    void sendMessages(String ship_id, String sender, String mess);
}
