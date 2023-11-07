package com.example.controllers;

import com.example.models.CategoryModel;
import com.example.services.CategoryService;
import com.example.services.ICategoryService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController" , urlPatterns = "/trang-chu")
public class HomeController extends HttpServlet {
    private  static ICategoryService iCategoryService = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CategoryModel> list = iCategoryService.findAll();
        req.setAttribute("categories",list);
        RequestDispatcher dispatcher = req.getRequestDispatcher("categori/home.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
