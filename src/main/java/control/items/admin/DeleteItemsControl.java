package control.items.admin;

import factory.Factory;
import impl.ItemsDaoImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteItemsControl", value = "/DeleteItemsControl")
public class DeleteItemsControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Factory.getInstanceItemsDao().deleteItems(id);
        response.sendRedirect("ShowListItems");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
