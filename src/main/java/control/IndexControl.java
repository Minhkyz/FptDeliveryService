package control;

import entities.Category;
import entities.Items;
import factory.Factory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexControl", value = "/HomePage")
public class IndexControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Items> list = Factory.getInstanceItemsDao().getAllItems();
        request.setAttribute("listP", list);
        List<Category> listC = Factory.getInstanceItemsDao().getAllCategory();
        request.setAttribute("listCC", listC);
        request.getRequestDispatcher("User_Home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
