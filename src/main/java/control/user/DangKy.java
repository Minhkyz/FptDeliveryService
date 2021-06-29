package control.user;

import entities.Users;
import factory.Factory;
import impl.UserDaoImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DangKy", value = "/DangKy")
public class DangKy extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.sendRedirect("dangky.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
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
                response.sendRedirect("login.jsp");
            }
        } else {
            request.setAttribute("mess", "Those password didn't match");
            request.getRequestDispatcher("dangky.jsp").forward(request, response);
        }
    }
}
