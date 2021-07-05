package control.user;

import factory.Factory;
import impl.EmailDaoImpl;

import javax.mail.MessagingException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import org.apache.commons.lang3.RandomStringUtils;

@WebServlet(name = "ResetPassControl", value = "/ResetPassControl")
public class ResetPassControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String email = request.getParameter("email");
            String pass = Factory.getInstanceUserDao().resetPasswordByEmail(email);
            String body = "<html><body><table width=100%><tr><td>Hi this is new pass: "+ pass+"</td></tr></table></body></html>";
            Factory.getInstanceEmailDao().SendingEmail(email, body);
            response.sendRedirect("home");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
