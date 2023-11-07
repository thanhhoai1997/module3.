package com.example.repositpories;

import com.example.models.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> findAll();
    void save(Customer customer);
    Customer findByID(int id);
    void update(int id,Customer customer);
    void  remote(int id);
}
