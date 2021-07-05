package control.items.cart;

import entities.Cart;
import entities.CartBean;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CartControl", value = "/CartControl")
public class CartControl extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        Cookie arr[] = request.getCookies();
        String txt = "";
        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                txt = txt + o.getValue();
                o.setMaxAge(0);
                response.addCookie(o);
            }
        }
        if (txt.isEmpty()) {
            txt = id;
        } else {
            txt = txt + "#" + id;
        }
        Cookie giohang = new Cookie("id", txt);
        giohang.setMaxAge(1000);
        response.addCookie(giohang);
        response.sendRedirect("ShowCartControl");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }
    }

