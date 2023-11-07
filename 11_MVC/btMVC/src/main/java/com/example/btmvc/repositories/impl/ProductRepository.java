package com.example.btmvc.repositories.impl;

import com.example.btmvc.models.Product;
import com.example.btmvc.repositories.IProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository implements IProductRepository {
   private static Map<Integer,Product> map = new HashMap<>();
    static {
        map.put(1,new Product(1,"Iphone-11",9000000,"Authentic","Apple"));
        map.put(2,new Product(2,"Iphone-12",10000000,"Authentic","Apple"));
        map.put(3,new Product(3,"Iphone-13",15000000,"Authentic","Apple"));
        map.put(4,new Product(4,"Iphone-14",2200000,"Authentic","Apple"));
        map.put(5,new Product(5,"Iphone-15",3200000,"Authentic","Apple"));
        map.put(6,new Product(6,"Iphone-X",7000000,"Authentic","Apple"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(map.values());
    }

    @Override
    public void save(Product product) {
        map.put(product.getId(), product);

    }

    @Override
    public void update(int id, Product product) {
        map.put(id,product);


    }

    @Override
    public void remove(int id) {
        map.remove(id);

    }

    @Override
    public Product findByID(int id) {
        return map.get(id);
    }

    @Override
    public List<Product> search(String name) {
        List<Product> list = new ArrayList<>();
        for (Product product: new ArrayList<>(map.values())
             ) {
            if (product.getName().equals(name)){
                list.add(product);
            }


        }
        return list;
    }
}
