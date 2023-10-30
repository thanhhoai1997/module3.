import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "TranslationServlet", urlPatterns = "/translate")
public class TranslationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String,String> dictionary = new HashMap<>();
        dictionary.put("hello","xin chao");
        dictionary.put("how","the nao");
        dictionary.put("book","quyen vo");
        dictionary.put("computer","may tinh");
        String search = req.getParameter("txtSearch");
        PrintWriter writer = resp.getWriter();
        String result = dictionary.get(search);
        writer.println("<html>");
        if (result != null){
            writer.println("Word: " + search);
            writer.println("Result : " + result );
        }else {
            writer.println("not found");
        }


        writer.println("</html>");

    }
}
