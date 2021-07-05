package control;

import factory.Factory;
import impl.ItemsDaoImpl;
import entities.Category;
import entities.Items;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "home", value = "/home")
public class home extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<Items> list = Factory.getInstanceItemsDao().getAllItems();
        request.setAttribute("listP", list);
        String id = request.getParameter("pid");
        Items p = Factory.getInstanceItemsDao().getItemsByID(id);
        List<Category> listC = Factory.getInstanceItemsDao().getAllCategory();
        request.setAttribute("detail", p);
        request.setAttribute("listCC", listC);
        //request.getRequestDispatcher("Home.jsp").forward(request, response);
        request.getRequestDispatcher("Rebuild/Home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
