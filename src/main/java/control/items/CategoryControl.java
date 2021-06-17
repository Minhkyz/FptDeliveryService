package control.items;

import dao.ItemsDAO;
import entities.Category;
import entities.Items;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryControl", value = "/CategoryControl")
public class CategoryControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String cateID = request.getParameter("cid");
        ItemsDAO dao = new ItemsDAO();

        List<Items> list = dao.getItemsByCID(cateID);

          List<Category> listC = dao.getAllCategory();

          Items last = dao.getLast();

        request.setAttribute("listP", list);
        request.setAttribute("listCC", listC);request.setAttribute("last", last);
        request.setAttribute("tag", cateID);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
