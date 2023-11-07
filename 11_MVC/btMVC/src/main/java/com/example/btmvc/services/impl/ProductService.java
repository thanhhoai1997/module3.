package com.example.btmvc.services.impl;

import com.example.btmvc.models.Product;
import com.example.btmvc.repositories.IProductRepository;
import com.example.btmvc.repositories.impl.ProductRepository;
import com.example.btmvc.services.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private static IProductRepository iProductRepository = new ProductRepository();
    @Override
    public List<Product> findAll() {
        return iProductRepository.findAll();
    }

    @Override
    public void save(Product product) {
        iProductRepository.save(product);

    }

    @Override
    public void update(int id, Product product) {
        iProductRepository.update(id,product);

    }

    @Override
    public void remove(int id) {
        iProductRepository.remove(id);

    }

    @Override
    public Product findByID(int id) {
        return iProductRepository.findByID(id);
    }

    @Override
    public List<Product> search(String name) {
        return iProductRepository.search(name);
    }
}
