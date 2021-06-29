package control.items;

import impl.ItemsDaoImpl;
import entities.Category;
import entities.Items;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.List;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

@WebServlet(name = "EditItemsControl", value = "/EditItemsControl")
public class EditItemsControl extends HttpServlet {

    public static final String UPLOAD_DIR = "images";
    public String dbFileName = "";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        ItemsDaoImpl dao = new ItemsDaoImpl();
        Items items = dao.getItemsByID(id);
        request.setAttribute("detail", items);
        List<Category> category = dao.getAllCategory();
        request.setAttribute("cate", category);
        request.getRequestDispatcher("AdminEdit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String price = request.getParameter("price");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String categoryID = request.getParameter("categoryID");
        String id = request.getParameter("id");
        Part part = request.getPart("file");//
        String fileName = extractFileName(part);//file name

            String applicationPath = getServletContext().getRealPath("");
            String uploadPath = applicationPath  + UPLOAD_DIR;
            System.out.println("applicationPath:" + applicationPath);
            File fileUploadDirectory = new File(uploadPath);
            if (!fileUploadDirectory.exists()) {
                fileUploadDirectory.mkdirs();
            }
            String savePath = uploadPath + File.separator + fileName;
            String saveImg = UPLOAD_DIR + File.separator + fileName;
            System.out.println("savePath: " + savePath);
            String sRootPath = new File(savePath).getAbsolutePath();
            System.out.println("sRootPath: " + sRootPath);

            part.write(savePath + File.separator);
            File fileSaveDir1 = new File(savePath);
            dbFileName = UPLOAD_DIR + File.separator + fileName;
            part.write(savePath + File.separator);

            ItemsDaoImpl dao = new ItemsDaoImpl();
            dao.editItems(price, name, saveImg, description, categoryID, id);
            response.sendRedirect("ShowListItems");
    }

    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
