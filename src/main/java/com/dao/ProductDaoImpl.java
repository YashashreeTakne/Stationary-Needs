package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductDaoImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void addProduct(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
        session.flush();
        logger.info("Product saved successfully, Product Details="+product);
	}
	
	public void editProduct(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
        session.flush();
        logger.info("Product updated successfully, Product Details="+product);
	}
	
	public List<Product> getProductList() {
		System.out.println("Hello3");
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println("Hello4");
        Query query = session.createQuery("from Product");
		List<Product> productList = query.list();
		System.out.println("Hello5");
        session.flush();

		for(Product product : productList){
			logger.info("Product List::"+product);
		}
		return productList;
	}

	
	public Product getProductById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Product product = (Product) session.load(Product.class, new Integer(id));
		logger.info("Product loaded successfully, Product details="+product);
        session.flush();

		return product;
	}
	
	public void deleteProduct(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		 session.delete(product);
	     session.flush();
		logger.info("Product deleted successfully, product details="+product);
	}
}