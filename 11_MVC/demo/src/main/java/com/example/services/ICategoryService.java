package com.example.services;

import com.example.models.CategoryModel;

import java.util.List;

public interface ICategoryService {
    List<CategoryModel> findAll();
    public List<CategoryModel> findBycategoryCode(String code);
}
