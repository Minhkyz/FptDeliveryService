package impl;
import dao.ChatDAO;
import dbcontext.DBConnection;
import entities.Chat;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
public class ChatDaoImpl implements ChatDAO {
    Connection conn = null;
    PreparedStatement ps = null;

    /**
     * getMessages By OrderId
     * @param id
     * @return
     */
    @Override
    public List<Chat> getMessagesByOrderId(int id){
        List<Chat> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("select * from chat where ship_id = ?", id);
        if (resultSet != null){
            try{
                while (resultSet.next()){
                    list.add(new Chat(
                            resultSet.getInt(1),
                            resultSet.getInt(2),
                            resultSet.getInt(3),
                            resultSet.getString(4),
                            resultSet.getTimestamp(5)
                    ));
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return list;
    }

    /**
     * Send Messages
     * @param ship_id
     * @param sender
     * @param mess
     */
    @Override
    public void sendMessages(String ship_id, String sender, String mess){
        int result = 0;
        String query = "INSERT INTO `chat` (`ship_id`, `sender`, `messages`,`time`) VALUES (?, ?, ?, now())";
        try {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
            LocalDateTime now = LocalDateTime.now();
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, ship_id);
            ps.setString(2, sender);
            ps.setString(3, mess);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        ChatDaoImpl dao = new ChatDaoImpl();
//        dao.sendMessages("2","1","a");
        List<Chat> list = dao.getMessagesByOrderId(2);
        for(Chat o:list) {
            System.out.println(o.getMessages());
        }
        // File.separator if(fileName.contains("blob:http://localhost:8080/")){
    }

}
