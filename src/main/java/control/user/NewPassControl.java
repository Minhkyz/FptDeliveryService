package control.user;


import impl.EmailDaoImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "newpass", value = "/newpass")
public class NewPassControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String host = "smtp.gmail.com";
        String port = "587";
        String email = "gennikemk@gmail.com";
        String name = "Minh Ky";
        String pass = "0919530606Ky!";
        //String recipient = request.getParameter("email");
        EmailDaoImpl dao = new EmailDaoImpl();
        try {
            dao.sendEmail("smtp.gmail.com", "587", "gennikemk@gmail.com", "Minh Ky", "0919530606Ky!", "kyhmce140135@fpt.edu.vn", "Send Mail", "aaa");
            String message = "thanh cong";
            request.setAttribute("message", message);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String host = "smtp.gmail.com";
        String port = "587";
        String email = "gennikemk@gmail.com";
        String name = "Minh Ky";
        String pass = "0919530606Ky!";
        //String recipient = request.getParameter("email");
        EmailDaoImpl dao = new EmailDaoImpl();
        try {
            dao.sendEmail("smtp.gmail.com", "587", "gennikemk@gmail.com", "Minh Ky", "0919530606Ky!", "kyhmce140135@fpt.edu.vn", "Send Mail", "aaa");
            String message = "thanh cong";
            request.setAttribute("message", message);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

        }
    }
