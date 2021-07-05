package control.items;

import factory.Factory;
import impl.ItemsDaoImpl;
import entities.Category;
import entities.Items;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowListItems", value = "/ShowListItems")
public class ShowListItems extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //    ItemsDaoImpl dao = new ItemsDaoImpl();
        List<Items> list = Factory.getInstanceItemsDao().getAllItems();
        request.setAttribute("listP", list);



        String id = request.getParameter("pid");

        Items p = Factory.getInstanceItemsDao().getItemsByID(id);
        List<Category> listC = Factory.getInstanceItemsDao().getAllCategory();


        request.setAttribute("detail", p);
        request.setAttribute("listCC", listC);
        request.getRequestDispatcher("ManagerItems.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
