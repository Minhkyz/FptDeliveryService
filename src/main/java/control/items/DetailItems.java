package control.items;

import factory.Factory;
import entities.Items;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DetailItems", value = "/DetailItems")
public class DetailItems extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("pid");
        Items a = Factory.getInstanceItemsDao().getItemsByID(id);
        request.setAttribute("detail", a);
        request.getRequestDispatcher("ProductDetail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
