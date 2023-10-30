package Controlllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountCalculator" ,urlPatterns = "/display-discount")
public class ProductDiscountCalculator extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String description = req.getParameter("description");
        double listPrice = Double.parseDouble(req.getParameter("price"));
        double percent = Double.parseDouble(req.getParameter("percent"));
        double discountAmount = listPrice*percent*1/100;
        double discountPrice = listPrice - discountAmount;
        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<h2> Description : " + description + "</h2>" );
        writer.println("<h2> list Price : " + listPrice + "</h2>" );
        writer.println("<h2> Percent : " + percent + "</h2>" );
        writer.println("<br>");
        writer.println("<h1> Discount Amount : " + discountAmount + "</h2>" );
        writer.println("<h2> Discount Price : " + discountPrice + "</h2>" );


        writer.println("</html>");



    }


}
