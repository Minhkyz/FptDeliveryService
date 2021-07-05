package control.items.admin;

import factory.Factory;
import impl.ItemsDaoImpl;
import entities.Category;
import entities.Items;
import entities.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerItemsControl", value = "/ManagerItemsControl")
public class ManagerItemsControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Users a =(Users) session.getAttribute("acc");//return string nen ep kieu
        String id = String.valueOf(a.getUserID());
        List<Items> list = Factory.getInstanceItemsDao().getItemsByCID(id);
        List<Category> listC = Factory.getInstanceItemsDao().getAllCategory();
        request.setAttribute("listP", list);
        request.setAttribute("listCC", listC);
        request.getRequestDispatcher("ManagerItems.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}