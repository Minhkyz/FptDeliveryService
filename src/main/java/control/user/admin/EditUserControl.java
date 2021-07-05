package control.user.admin;

import factory.Factory;
import impl.UserDaoImpl;
import entities.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditUserControl", value = "/EditUserControl")
public class EditUserControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        Users users = Factory.getInstanceUserDao().getUserById(id);
        request.setAttribute("detail",users);
        request.getRequestDispatcher("EditUser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String userID = request.getParameter("userID");
        String username = request.getParameter("username");
        String password= request.getParameter("password");
        String email = request.getParameter("email");
        String fullName= request.getParameter("fullName");
        String phone= request.getParameter("phone");
        String img = request.getParameter("img");

        if (Factory.getInstanceUserDao().checkUserExistUsername(username) != null) {
            request.setAttribute("mess", "Username didn't exist");
            request.getRequestDispatcher("EditUserControl?id="+userID).forward(request, response);
        } else if (Factory.getInstanceUserDao().checkUserExistEmail(email) != null) {
            request.setAttribute("mess", "Email didn't exist");
            request.getRequestDispatcher("EditUserControl?id="+userID).forward(request, response);
        } else if (Factory.getInstanceUserDao().checkUserExistPhone(phone) != null) {
            request.setAttribute("mess", "Phone didn't exist");
            request.getRequestDispatcher("EditUserControl?id=1"+userID).forward(request, response);
        } else {
            Factory.getInstanceUserDao().editUserById(userID,username,password,email,fullName,phone,img);
            response.sendRedirect("user");
        }


    }
}
