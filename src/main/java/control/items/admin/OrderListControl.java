package control.items.admin;

import entities.Items;
import entities.Order;
import factory.Factory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderListControl", value = "/OrderListControl")
public class OrderListControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Order> list = Factory.getInstanceOrderDao().getListOrder();
        request.setAttribute("list", list);
        request.getRequestDispatcher("Admin_Order_List.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
