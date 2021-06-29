package control.user;

import impl.RoleDaoImpl;
import factory.Factory;
import impl.UserDaoImpl;
import entities.UserRole;
import entities.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "login", value = "/login")
public class loginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");

        UserDaoImpl dao = new UserDaoImpl();
        RoleDaoImpl role = new RoleDaoImpl();
        Users a = Factory.getInstanceUserDao().login(user,pass);
        if (a == null) {
            request.setAttribute("mess", "Wrong user or pass");
            request.setAttribute("user",user);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            List<UserRole> b = role.userRoles(a.getUserID());
            session.setAttribute("acc", a);
            session.setAttribute("role", b);
            session.setMaxInactiveInterval(300);
            response.sendRedirect("home");
            //request.getRequestDispatcher("home").forward(request, response);
        }

    }
}
