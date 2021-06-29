package control.items;

import factory.Factory;
import impl.ItemsDaoImpl;
import entities.Items;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddItemsControl", value = "/AddItemsControl")
public class AddItemsControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { response.setContentType("text/html;charset=UTF-8");
      String id = request.getParameter("id");
      //  ItemsDaoImpl dao = new ItemsDaoImpl();
      //   Items item = dao.getItemsByID(id);
        Items item = Factory.getInstanceItemsDao().getItemsByID(id);
        request.setAttribute("listCC",item);
        request.getRequestDispatcher("ManagerItems.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String price = request.getParameter("price");
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        String description = request.getParameter("description");
        ItemsDaoImpl dao = new ItemsDaoImpl();
        dao.insertItems(price, name, image,description, 1);
        response.sendRedirect("ShowListItems");

    }
}
