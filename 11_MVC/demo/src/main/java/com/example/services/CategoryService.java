package com.example.services;

import com.example.dao.CategoryDao;
import com.example.dao.IcategoryDao;
import com.example.models.CategoryModel;

import java.util.List;

public class CategoryService implements ICategoryService {
    private static IcategoryDao icategoryDao = new CategoryDao();

    @Override
    public List<CategoryModel> findAll() {
        return icategoryDao.findAll();
    }

    @Override
    public List<CategoryModel> findBycategoryCode(String code) {
        return icategoryDao.findBycategoryCode(code);
    }
}
