package com.example.btmvc.controllers;

import com.example.btmvc.models.Product;
import com.example.btmvc.services.IProductService;
import com.example.btmvc.services.impl.ProductService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.http.HttpClient;
import java.util.List;

@WebServlet(name = "ProductController",urlPatterns = "/product")
public class ProductController extends HttpServlet {
    private static IProductService iProductService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(req,resp);
                break;
            case "edit":
                updateProduct(req,resp);
                break;
            case "delete":
                deleteProduct(req,resp);
                break;
            case "search":
                searchProduct(req,resp);
                break;
            default:
                break;

        }
    }

    private void searchProduct(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("name");
        List<Product> list = iProductService.search(name);
        RequestDispatcher dispatcher;
        if (list.isEmpty()){
            req.setAttribute("message","not found");
            dispatcher = req.getRequestDispatcher("product/search.jsp");
            try {
                dispatcher.forward(req,resp);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }


        }else {
            req.setAttribute("product",list);
            dispatcher = req.getRequestDispatcher("product/search.jsp");
            try {
                dispatcher.forward(req,resp);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

        }
    }

    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) {
        int id= Integer.parseInt(req.getParameter("id"));
        Product product = iProductService.findByID(id);
        RequestDispatcher dispatcher;
        if (product == null){
            dispatcher = req.getRequestDispatcher("error-404.jsp");

        }else {
            iProductService.remove(product.getId());
            try {
                resp.sendRedirect("/product");
            }catch (IOException e){
                e.printStackTrace();
            }

        }
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        Double price = Double.parseDouble(req.getParameter("price"));
        String describe = req.getParameter("describe");
        String producer = req.getParameter("producer");
        Product product = iProductService.findByID(id);
        RequestDispatcher dispatcher ;
        if (product == null){
            dispatcher = req.getRequestDispatcher("error-404.jsp");

        }else {
            product.setName(name);
            product.setPrice(price);
            product.setDescribe(describe);
            product.setProducer(producer);
            iProductService.update(id,product);
            req.setAttribute("product",product);
            req.setAttribute("message","Product information was updated");
            dispatcher = req.getRequestDispatcher("product/edit.jsp");
            try {
                dispatcher.forward(req,resp);
            }catch (ServletException e){
                e.printStackTrace();
            }catch (IOException e){
                e.printStackTrace();
            }
        }
    }

    private void createProduct(HttpServletRequest req, HttpServletResponse resp) {
        int id = (int) (Math.random()*10000);
        String name = req.getParameter("name");
        Double price = Double.parseDouble(req.getParameter("price"));
        String describe = req.getParameter("describe");
        String producer = req.getParameter("producer");
        Product product = new Product(id,name,price,describe,producer);
        iProductService.save(product);
        req.setAttribute("message","New product was created");
        RequestDispatcher dispatcher = req.getRequestDispatcher("product/create.jsp");
        try {
            dispatcher.forward(req,resp);
        }catch (ServletException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(req,resp);
                break;
            case "edit":
                showEditForm(req,resp);
                break;
            case "delete":
                showDeleteForm(req,resp);
                break;
            case "view":
                showViewForm(req,resp);
                break;
            case "search":
                searchForm(req,resp);
                break;
            default:
                ListProduct(req,resp);
                break;
        }
    }

    private void searchForm(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("product/search.jsp");
        try {
            dispatcher.forward(req,resp);
        }catch (ServletException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }
    }

    private void showViewForm(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = iProductService.findByID(id);
        req.setAttribute("product",product);
        RequestDispatcher dispatcher = req.getRequestDispatcher("product/view.jsp");
        try {
            dispatcher.forward(req,resp);
        }catch (ServletException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }

    }

    private void showDeleteForm(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = iProductService.findByID(id);
        req.setAttribute("product",product);
        RequestDispatcher dispatcher = req.getRequestDispatcher("product/delete.jsp");
        try {
            dispatcher.forward(req,resp);
        }catch (ServletException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = iProductService.findByID(id);
        req.setAttribute("product",product);
        RequestDispatcher dispatcher;
        if (product == null){
            dispatcher = req.getRequestDispatcher("error-404.jsp");
        }else {
            dispatcher = req.getRequestDispatcher("product/edit.jsp");
            try {
                dispatcher.forward(req,resp);

            }catch (ServletException e){
                e.printStackTrace();
            }catch (IOException e){
                e.printStackTrace();
            }
        }

    }

    private void showCreateForm(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("product/create.jsp");
        try {
            dispatcher.forward(req,resp);
        }catch (ServletException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }
    }

    private void ListProduct(HttpServletRequest req, HttpServletResponse resp) {
        List<Product> list = iProductService.findAll();
        req.setAttribute("products",list);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("product/list.jsp");
        try {
            requestDispatcher.forward(req,resp);
        }catch (ServletException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }
    }
}
