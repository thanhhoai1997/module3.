package com.example.dao;

import com.example.models.CategoryModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao implements IcategoryDao {
    public Connection getConnection(){
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            String url = "jdbc:mysql://localhost:3306/newservlet12month2018";
//            String username = "root";
//            String password = "1234";
//            return DriverManager.getConnection(url,username,password);
//        } catch (ClassNotFoundException | SQLException e) {
//            return null;
//        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String url = "jdbc:mysql://localhost:3306/newservlet12month2018";
        String password = "1234";
        String username = "root";

        try {
            return DriverManager.getConnection(url,username,password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    @Override
    public List<CategoryModel> findAll() {
//        List<CategoryModel> result = new ArrayList<>();
//        String sql = "select *from category";
//        Connection connection = getConnection();
//        PreparedStatement statement = null;
//        ResultSet resultSet = null;
//        if (connection != null){
//            try {
//                statement = connection.prepareStatement(sql);
//                resultSet = statement.executeQuery();
//                while (resultSet.next()){
//                    CategoryModel categoryModel = new CategoryModel();
//                    categoryModel.setId(resultSet.getInt("id"));
//                    categoryModel.setName(resultSet.getString("name"));
//                    categoryModel.setCode(resultSet.getString("code"));
//                    result.add(categoryModel);
//                }
//
//                return result;
//
//            } catch (SQLException e) {
//                return  null;
//            }finally {
//                if (connection != null){
//                    try {
//                        connection.close();
//                    } catch (SQLException e) {
//                        throw new RuntimeException(e);
//                    }
//                }
//                if (statement != null){
//                    try {
//                        statement.close();
//                    } catch (SQLException e) {
//                        throw new RuntimeException(e);
//                    }
//                }
//                if (resultSet != null){
//                    try {
//                        resultSet.close();
//                    } catch (SQLException e) {
//                        throw new RuntimeException(e);
//                    }
//                }
//            }
//
//        }
//        return result;
        List<CategoryModel> list = new ArrayList<>();
        String sql = "select *from category";
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        if (connection != null){
            try {
                statement = connection.prepareStatement(sql);
                resultSet = statement.executeQuery();
                while (resultSet.next()){
                    CategoryModel categoryModel = new CategoryModel();
                    categoryModel.setId(resultSet.getInt("id"));
                    categoryModel.setName(resultSet.getString("name"));
                    categoryModel.setCode(resultSet.getString("code"));
                    list.add(categoryModel);
                }
               return list;

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }finally {
                try {
                    connection.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                try {
                    statement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            }


        }
        return  list;
    }

    @Override
    public List<CategoryModel> findBycategoryCode(String code) {
        List<CategoryModel> list = new ArrayList<>();
        String sql = "select*from category where code = ?";

        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        if (connection != null){
            try {
                statement = connection.prepareStatement(sql);
                statement.setString(1,code);
                resultSet = statement.executeQuery();
                while (resultSet.next()){
                    CategoryModel categoryModel = new CategoryModel();
                    categoryModel.setId(resultSet.getInt("id"));
                    categoryModel.setName(resultSet.getString("name"));
                    categoryModel.setCode(resultSet.getString("code"));
                    list.add(categoryModel);
                }
                return list;
            }catch (SQLException e){
                e.printStackTrace();
            }finally {
                if (connection != null){
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                }
                if (statement != null){
                    try {
                        statement.close();
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                }
                if (resultSet != null){
                    try {
                        resultSet.close();
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                }
            }

        }
        return list;
    }
}
