package control.items.cart;

import factory.Factory;
import impl.ItemsDaoImpl;
import entities.Items;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShowCartControl", value = "/ShowCartControl")
public class ShowCartControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Cookie arr[] = request.getCookies();
        PrintWriter out = response.getWriter();
        List<Items> list = new ArrayList<>();

        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                String txt[] = o.getValue().split("#");
                for (String s : txt) {
                    list.add(Factory.getInstanceItemsDao().getItemsByID(s));
                }
            }
        }
        for (int i = 0; i < list.size(); i++) {
            int count = 1;
            for (int j = i+1; j < list.size(); j++) {
                if(list.get(i).getId() == list.get(j).getId()){
                    count++;
                    list.remove(j);
                    j--;
                    list.get(i).setAmount(count);
                }
            }
        }
        double total = 0;
        for (Items o : list) {
            total = total + o.getAmount() * o.getPrice();
        }
        request.setAttribute("list", list);
        request.setAttribute("sum",  total);
        request.getRequestDispatcher("Cart1.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("do Post");
        String keys[] = request.getParameterValues("attr");
        String values[] = request.getParameterValues("vals");
        List<Items> list = new ArrayList<>();
        for (Items o:list) {

        }
    }
}
