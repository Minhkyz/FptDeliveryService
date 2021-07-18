package control.items.admin;

import entities.Category;
import factory.Factory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryListControl", value = "/CategoryList")
public class CategoryListControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> listC = Factory.getInstanceItemsDao().getAllCategory();
        request.setAttribute("list", listC);
        request.getRequestDispatcher("Admin_Category_List.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
