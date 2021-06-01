package control;

import dao.UserDAO;
import entities.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class loginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pass");

        UserDAO dao = new UserDAO();
        Users a = dao.login(username, password);
        if (a == null) {
            request.setAttribute("mess", "Wrong user or pass");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
           // session.setMaxInactiveInterval(300);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }
}
