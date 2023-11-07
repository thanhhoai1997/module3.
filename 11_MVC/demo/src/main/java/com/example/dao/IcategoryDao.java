package com.example.dao;

import com.example.models.CategoryModel;

import java.util.List;

public interface IcategoryDao {
    public List<CategoryModel> findAll();
    public List<CategoryModel> findBycategoryCode(String code);
}
