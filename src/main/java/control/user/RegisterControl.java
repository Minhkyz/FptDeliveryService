package control.user;

import factory.Factory;
import impl.RoleDaoImpl;
import impl.UserDaoImpl;
import entities.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

    @WebServlet(name = "RegisterControl", value = "/register")
public class RegisterControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        //response.sendRedirect("Rebuild/SignUp.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("user");
        String email = request.getParameter("mail");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");

        if (pass.equals(repass)) {
            if (Factory.getInstanceUserDao().checkUserExistUsername(username) != null) {
                request.setAttribute("mess", "Username didn't exist");
                request.getRequestDispatcher("dangky.jsp").forward(request, response);
            } else if (Factory.getInstanceUserDao().checkUserExistEmail(email) != null) {
                request.setAttribute("mess", "Email didn't exist");
                request.getRequestDispatcher("dangky.jsp").forward(request, response);
            } else if (Factory.getInstanceUserDao().checkUserExistPhone(phone) != null) {
                request.setAttribute("mess", "Phone didn't exist");
                request.getRequestDispatcher("dangky.jsp").forward(request, response);
            } else {
                Factory.getInstanceUserDao().add(username, pass, email, fullname, phone);
                Users a = Factory.getInstanceUserDao().getUserByEmail(email);
                Factory.getInstanceRoleDao().setUserRole(a.getUserID(),1);
                response.sendRedirect("SignIn.jsp");
            }
        } else {
            request.setAttribute("mess", "Those password didn't match");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        }
    }
}


