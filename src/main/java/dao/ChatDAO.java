package dao;

import entities.Chat;

import java.util.List;

public interface ChatDAO {
    List<Chat> getMessagesByOrderId(int id);
    void sendMessages(int ship_id, int sender, String mess);
}
