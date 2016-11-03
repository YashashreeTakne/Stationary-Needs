package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CustomerDao;
import com.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    private CustomerDao customerDao;

    public void addCustomer(Customer customer){
        customerDao.addCustomer(customer);
    }

    public List<Customer> getAllCustomers(){
        return customerDao.getAllCustomers();
    }

    public Customer getCustomerByUsername (String username){
        return customerDao.getCustomerByUsername(username);
    }
}