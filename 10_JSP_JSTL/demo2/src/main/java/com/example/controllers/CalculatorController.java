package com.example.controllers;

import com.example.models.Calculator;
import com.example.services.ICalculatorService;
import com.example.services.ipml.CalculatorServise;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "CalculatorController" , urlPatterns = "/calculator")
public class CalculatorController extends HttpServlet {
    private ICalculatorService calculatorService = new CalculatorServise();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Double num1 = Double.parseDouble(req.getParameter("first"));
        Double num2 = Double.parseDouble(req.getParameter("second"));
        String operand = req.getParameter("operand");

        Calculator calculator = new Calculator(num1 , num2);

        if (operand.equals("cong")){
            req.setAttribute("num1",num1);
            req.setAttribute("num2",num2);
            req.setAttribute("name","Cong");

            req.setAttribute("operand",calculatorService.cong(calculator));
            req.getRequestDispatcher("calculator/ketqua.jsp").forward(req,resp);
        }else if (operand.equals("tru")){
            req.setAttribute("num1",num1);
            req.setAttribute("num2",num2);
            req.setAttribute("name","Tru");
            req.setAttribute("operand",calculatorService.tru(calculator));
            req.getRequestDispatcher("calculator/ketqua.jsp").forward(req,resp);

        }else if (operand.equals("nhan")){
            req.setAttribute("num1",num1);
            req.setAttribute("num2",num2);
            req.setAttribute("name","Nhan");
            req.setAttribute("operand",calculatorService.tru(calculator));
            req.getRequestDispatcher("calculator/ketqua.jsp").forward(req,resp);
        }else if (operand.equals("chia")){
            req.setAttribute("num1",num1);
            req.setAttribute("num2",num2);
            req.setAttribute("name","Chia");
            req.setAttribute("operand",calculatorService.chia(calculator));
            req.getRequestDispatcher("calculator/ketqua.jsp").forward(req,resp);
        }


    }
}
