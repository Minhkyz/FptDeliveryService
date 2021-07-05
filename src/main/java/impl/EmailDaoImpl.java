package impl;

import dao.EmailDAO;
import entities.Items;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

public class EmailDaoImpl implements EmailDAO {

    @Override
    public void SendingEmail(String Email,String Body) throws AddressException, MessagingException
    {

        String host ="smtp.gmail.com";
        String from ="gennikemk@gmail.com";  //Your mail id
        String pass ="0919530606Ky!";   // Your Password
        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable", "true"); // added this line
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "25");
        props.put("mail.smtp.auth", "true");
        String[] to = {Email}; // To Email address
        Session session = Session.getDefaultInstance(props, null);
        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress(from));
        InternetAddress[] toAddress = new InternetAddress[to.length];
        // To get the array of addresses
        for( int i=0; i < to.length; i++ )
        { // changed from a while loop
            toAddress[i] = new InternetAddress(to[i]);
        }
        System.out.println(Message.RecipientType.TO);
        for( int j=0; j < toAddress.length; j++)
        { // changed from a while loop
            message.addRecipient(Message.RecipientType.TO, toAddress[j]);
        }
        message.setSubject("Password Reset for FPT Delivery");
        message.setContent(Body,"text/html");
        Transport transport = session.getTransport("smtp");
        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
    }

    public static void main(String[] args) {
        EmailDaoImpl dao = new EmailDaoImpl();
        String body="<html><body><table width=100%><tr><td>Hi this is Test mail</td></tr></table></body></html>";
        try {
            dao.SendingEmail("nguyentien05072001@gmail.com",body);
            dao.SendingEmail("danhhvce140447@fpt.edu.vn",body);
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }
}
