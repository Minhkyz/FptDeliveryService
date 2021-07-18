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
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("SignIn.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");

        Users a = Factory.getInstanceUserDao().login(user,pass);
        if (a == null) {
            request.setAttribute("mess", "Wrong user or pass");
            request.setAttribute("user",user);
            request.getRequestDispatcher("SignIn.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            UserRole b = Factory.getInstanceRoleDao().userRoles(a.getUserID());
            session.setAttribute("acc", a);
           // session.setAttribute("role", b);
            session.setMaxInactiveInterval(300);
            response.sendRedirect("admin");
        }

    }
}
