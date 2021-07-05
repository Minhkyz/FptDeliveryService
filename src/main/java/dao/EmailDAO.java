package dao;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

public interface EmailDAO {
     void SendingEmail(String Email,String Body) throws AddressException,MessagingException;

}
