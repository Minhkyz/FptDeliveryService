package control.user;

import factory.Factory;
import impl.UserDaoImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "addUser", value = "/addUser")
public class AddUserControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password= request.getParameter("password");
        String email = request.getParameter("email");
        String fullName= request.getParameter("fullName");
        String phone= request.getParameter("phone");
        String img = request.getParameter("img");

        if (Factory.getInstanceUserDao().checkUserExistUsername(username) != null) {
            request.setAttribute("mess", "Username didn't exist");
            request.getRequestDispatcher("user").forward(request, response);
        } else if (Factory.getInstanceUserDao().checkUserExistEmail(email) != null) {
            request.setAttribute("mess", "Email didn't exist");
            request.getRequestDispatcher("user").forward(request, response);
        } else if (Factory.getInstanceUserDao().checkUserExistPhone(phone) != null) {
            request.setAttribute("mess", "Phone didn't exist");
            request.getRequestDispatcher("user").forward(request, response);
        } else {
            Factory.getInstanceUserDao().add(username,password,email,fullName,phone);
            response.sendRedirect("user");
        }

    }
}
