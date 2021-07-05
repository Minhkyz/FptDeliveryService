package control.user.admin;

import factory.Factory;
import impl.UserDaoImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteUser", value = "/DeleteUser")
public class DeleteUserControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String userID = request.getParameter("id");
        Factory.getInstanceUserDao().deleteUserById(userID);
        response.sendRedirect("user");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
