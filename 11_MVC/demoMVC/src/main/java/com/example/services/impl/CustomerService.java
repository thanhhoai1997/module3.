package com.example.services.impl;

import com.example.models.Customer;
import com.example.repositpories.ICustomerRepository;
import com.example.repositpories.impl.CustomerRepository;
import com.example.services.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private static ICustomerRepository iCustomerRepository = new CustomerRepository();
    @Override
    public List<Customer> findAll() {
        return iCustomerRepository.findAll();
    }

    @Override
    public void save(Customer customer) {
    iCustomerRepository.save(customer);
    }

    @Override
    public Customer findByID(int id) {
        return iCustomerRepository.findByID(id);
    }

    @Override
    public void update(int id, Customer customer) {
        iCustomerRepository.update(id,customer);

    }

    @Override
    public void remote(int id) {
        iCustomerRepository.remote(id);

    }
}
