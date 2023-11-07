package com.example.btmvc.repositories;

import com.example.btmvc.models.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();
    void save(Product product);
    void  update(int id, Product product);
    void remove(int id);
    Product findByID(int id);
    List<Product> search(String name);
}
