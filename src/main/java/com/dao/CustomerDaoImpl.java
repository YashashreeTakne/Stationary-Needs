package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Authorities;
import com.model.Cart;
import com.model.Customer;
import com.model.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
	
	    @Autowired
	    private SessionFactory sessionFactory;
	    
	    public SessionFactory getSessionFactory() {
	    	return sessionFactory;
	    }

	    public void setSessionFactory(SessionFactory sessionFactory) {
	    	this.sessionFactory = sessionFactory;
	    }

//	    @Transactional
//	    public void addCustomer(Customer customer){
//	        Session session = sessionFactory.getCurrentSession();
//
//	        customer.getBillingAddress().setCustomer(customer);
//	        customer.getShippingAddress().setCustomer(customer);
//	        
//	        session.saveOrUpdate(customer);
//	        session.saveOrUpdate(customer.getBillingAddress());
//	        session.saveOrUpdate(customer.getShippingAddress());
//
//	  Users newUser = new Users();
//	        newUser.setUsername(customer.getUsers());
//	        newUser.setEnabled(true);
//	        newUser.setCustomerId(customer.getCutomerId());
//
//	        Authorities newAuthorities = new Authorities();
//	        newAuthorities.setUsername(customer.getUsers());
//	        newAuthorities.setAuthority("ROLE_USER");
//
//	        session.saveOrUpdate(newUser);
//	        session.saveOrUpdate(newAuthorities);
//	        session.saveOrUpdate(customer);
//
//	        session.flush();
//	    }
	    
	    @Transactional
	    public void addCustomer(Customer customer){
	    System.out.println("adding customer in dao");
		Session session=sessionFactory.openSession();
		//customer - has users, billingaddress, shippingaddress
		//insert the users , billingaddress, shippingaddress
		customer.getUsers().setEnabled(true);
		
		Authorities authorities=new Authorities();//transient - heapmemory 
		String username=customer.getUsers().getUsername();
		authorities.setUsername(username);
		authorities.setAuthority("ROLE_USER");
		
		Cart cart = new Cart();//new cart
		//It is to set CartId for Customer table
		customer.setCart(cart);//set the cart to the customer
		//if we omit this statement, then it will insert null for customerid in cart
		//to set the customerid in cart table
		cart.setCustomer(customer); 
		
		session.save(customer); 
		session.save(authorities); //persistent
		session.flush();
		session.close();
	}

//	    public List<Customer> getAllCustomers(){
//	        Session session = sessionFactory.getCurrentSession();
//	        Query query = session.createQuery("from Customer");
//	        List<Customer> customerList = query.list();
//
//	        return customerList;
//	    }
	    
	    public List<Customer> getAllCustomers() {
			Session session=sessionFactory.openSession();
			List<Customer> customerList= 
					session.createQuery("from Customer").list();
			//select * from customer 
			//list of records.list() // into list of customer objects
			return customerList;
		}

		public Customer getCustomerByUsername(String username) {
			Session session=sessionFactory.openSession();
			//using username - get users details
			Query query=session.createQuery("from Users where username=?");
			query.setString(0, username);
			Users users=(Users)query.uniqueResult();
			
			//From users get Customer details
			
			Customer customer=users.getCustomer();
//			session.close();
			return customer;
		}	
	}

//	    public Customer getCustomerByUsername(String username){
//	        Session session = sessionFactory.getCurrentSession();
//	        return (Customer) session.get(Customer.class, username);
//	    }
//	    public Customer getCustomerByUsername(String username){
//	        Session session = sessionFactory.getCurrentSession();
//	        Query query = session.createQuery("from Customer where username = ?");
//	        query.setString(0, username);
//	        Users users=(Users)query.uniqueResult();
//	        int customer=users.getCustomerId();
//	        return (Customer) query.uniqueResult();
//	    }     