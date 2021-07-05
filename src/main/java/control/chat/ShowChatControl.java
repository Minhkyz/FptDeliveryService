package control.chat;

import factory.Factory;
import impl.ChatDaoImpl;
import entities.Chat;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowChatControl", value = "/ShowChatControl")
public class ShowChatControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        List<Chat> list = Factory.getInstanceChatDao().getMessagesByOrderId(id);
        request.setAttribute("list", list);
        request.getRequestDispatcher("Chat.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("orderid");
        String sender = request.getParameter("sender");
        String mess = request.getParameter("mess");
        Factory.getInstanceChatDao().sendMessages(id,sender,mess);
        response.sendRedirect("ShowChatControl?id="+id);
    }
}
