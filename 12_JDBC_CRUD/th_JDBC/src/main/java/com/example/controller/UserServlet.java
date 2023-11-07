package com.example.controller;

import com.example.dao.IUserDao;
import com.example.dao.UserDao;
import com.example.model.User;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserServlet" , urlPatterns = "/users")
public class UserServlet extends HttpServlet {
    private IUserDao iUserDao;
    @Override
    public void init()  {
        iUserDao = new UserDao();

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        try {
            switch (action){
                case "create":
                    insertUser(req,resp);
                    break;
                case "edit":
                    updateUser(req,resp);
                case "search":
                    searchCountry(req,resp);
                    break;


            }
        }catch (SQLException e){
            throw new ServletException(e);
        }

    }

    private void searchCountry(HttpServletRequest req, HttpServletResponse resp) {
        String country = req.getParameter("country");
        List<User> list = iUserDao.searchUser(country);
        req.setAttribute("message","search fail");
        req.setAttribute("listUser",list);
        RequestDispatcher dispatcher = req.getRequestDispatcher("user/search.jsp");
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void updateUser(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String country = req.getParameter("country");
        User book = new User(id,name,email,country);

           if (iUserDao.updateUser(book)){
               req.setAttribute("user",book);

               RequestDispatcher dispatcher = req.getRequestDispatcher("user/edit.jsp");

               dispatcher.forward(req,resp);
           }else {
               req.setAttribute("message","update fail");

               RequestDispatcher dispatcher = req.getRequestDispatcher("user/edit.jsp");

               dispatcher.forward(req,resp);
           }



    }

    private void insertUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String country = req.getParameter("country");
        User newUser = new User(name,email,country);
        try {
            iUserDao.insertUser(newUser);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("user/create.jsp");
        dispatcher.forward(req,resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        try {
            switch (action){
                case "create":
                    showNewForm(req,resp);
                    break;
                case "edit":
                    showEditForm(req,resp);
                    break;
                case "delete":
                    deleteUser(req,resp);
                    break;
                case "search":
                    showSearchCountry(req,resp);
                    break;
                case "sort":
                    sortName(req,resp);
                default:
                    listUser(req,resp);
                    break;
            }
        }catch (SQLException e){
            throw new  ServletException(e);
        }

    }

    private void sortName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("user",iUserDao.arrangeName());
        RequestDispatcher dispatcher = req.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(req,resp);
    }

    private void showSearchCountry(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("user/search.jsp");
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


    private void deleteUser(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        iUserDao.deleteUser(id);
        List<User> userList = iUserDao.selectAllUsers();
        req.setAttribute("listUser",userList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(req,resp);
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        User existingUser = iUserDao.selectUser(id);
        req.setAttribute("user",existingUser);
        RequestDispatcher dispatcher = req.getRequestDispatcher("user/edit.jsp");
       dispatcher.forward(req,resp);
    }

    private void showNewForm(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("user/create.jsp");
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void listUser(HttpServletRequest req, HttpServletResponse resp) {
        List<User> list = iUserDao.selectAllUsers();
        req.setAttribute("listUser",list);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("user/list.jsp");
        try {
            requestDispatcher.forward(req,resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
