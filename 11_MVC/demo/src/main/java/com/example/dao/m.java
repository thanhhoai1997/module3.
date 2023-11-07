package com.example.dao;

import com.example.models.CategoryModel;

public class m {
    public static void main(String[] args) {
        CategoryDao categoryDao = new CategoryDao();
        for (CategoryModel categoryModel:  categoryDao.findAll()
             ) {
            System.out.println(categoryModel.getId() + categoryModel.getName() + categoryModel.getCode());

        }
    }
}
