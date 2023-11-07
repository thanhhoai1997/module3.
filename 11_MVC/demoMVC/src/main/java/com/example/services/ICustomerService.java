package com.example.services;

import com.example.models.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();
    void save(Customer customer);
    Customer findByID(int id);
    void update(int id,Customer customer);
    void  remote(int id);
}
