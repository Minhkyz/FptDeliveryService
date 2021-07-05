package control.items.admin;

import factory.Factory;
import impl.ItemsDaoImpl;
import entities.Category;
import entities.Items;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EditItem2Control", value = "/EditItem2Control")
public class EditItem2Control extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        Items items = Factory.getInstanceItemsDao().getItemsByID(id);
        request.setAttribute("detail", items);
        List<Category> category = Factory.getInstanceItemsDao().getAllCategory();
        request.setAttribute("cate", category);
        request.getRequestDispatcher("AdminEdit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String price = request.getParameter("price");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String categoryID = request.getParameter("categoryID");
        String id = request.getParameter("id");

        Factory.getInstanceItemsDao().editItems2(price, name, description, categoryID, id);
        response.sendRedirect("ShowListItems");
    }
}
