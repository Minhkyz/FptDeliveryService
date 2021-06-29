package control.user;

import factory.Factory;
import impl.UserDaoImpl;
import entities.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminShowUserControl", value = "/AdminShowUserControl")
public class AdminShowUserControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Users> list = Factory.getInstanceUserDao().getAllUser();
        request.setAttribute("list", list);
        request.getRequestDispatcher("Admin_UserManage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
