package impl;

import dao.EmailDAO;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

public class EmailDaoImpl implements EmailDAO {

    /**
     * Send Mail
     * @param host
     * @param port
     * @param senderEmail
     * @param senderName
     * @param password
     * @param recipientEmail
     * @param subject
     * @param message
     * @throws AddressException
     * @throws MessagingException
     * @throws UnsupportedEncodingException
     */

    public static void sendEmail(String host, String port,
                                 String senderEmail, String senderName, String password,
                                 String recipientEmail, String subject, String message) throws AddressException,
            MessagingException, UnsupportedEncodingException {

        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, password);
            }
        };

        Session session = Session.getInstance(properties, auth);

        // creates a new e-mail message
        Message msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(senderEmail, senderName));
        InternetAddress[] toAddresses = {new InternetAddress(recipientEmail)};
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        msg.setText(message);

        // sends the e-mail
        Transport.send(msg);

    }
}
