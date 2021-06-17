package control.user;

import dao.EmailDAO;
import dao.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import static dao.EmailDAO.sendEmail;

@WebServlet(name = "resetpassword", value = "/resetpassword")
public class ResetPasswordControl extends HttpServlet {
    private String host;
    private String port;
    private String email;
    private String name;
    private String pass;

    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        email = context.getInitParameter("email");
        name = context.getInitParameter("name");
        pass = context.getInitParameter("pass");
    }
    public ResetPasswordControl(){

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String recipient = request.getParameter("email");
        String subject = "Your Password has been reset";
        UserDAO dao = new UserDAO();
        //String newPassword =  dao.resetPasswordByEmail(recipient);
        String passP  = "aaaa";

        String content = "Hi, this is your new password: " + passP;

        try {
            sendEmail(host, port, email, name, pass, "kyhmce140135@fpt.edu.vn", subject, content);
            String message = "Your password has been reset. Please check your e-mail.";
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String recipient = request.getParameter("email");
        String subject = "Your Password has been reset";
        UserDAO dao = new UserDAO();
        String newPassword =  dao.resetPasswordByEmail(recipient);
        String passP  = "aaaa";

        String content = "Hi, this is your new password: " + passP;
        String message = "";

        try {
            EmailDAO.sendEmail(host, port, email, name, pass,
                    recipient, subject, content);
            message = "Your password has been reset. Please check your e-mail.";
        } catch (Exception ex) {
            ex.printStackTrace();
            message = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("message", message);
            request.getRequestDispatcher("message.jsp").forward(request, response);
        }
    }
}
