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

@WebServlet(name = "ShowItemAdminControl", value = "/ShowItemAdminControl")
public class ShowItemAdminControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Items> list = Factory.getInstanceItemsDao().getAllItems();
        request.setAttribute("listP", list);
        request.getRequestDispatcher("Admin_Item_List.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
