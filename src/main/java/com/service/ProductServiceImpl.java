package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.service.ProductService;
import com.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	  @Autowired
	private ProductDao productDao;

//	public void setProductDao(ProductDao productDao) {
//		this.productDao = productDao;
//	}

	@Transactional
	public void addProduct(Product product) {
		this.productDao.addProduct(product);
	}

	@Transactional
	public void editProduct(Product product) {
		this.productDao.editProduct(product);
	}

	@Transactional
	public List<Product> getProductList() {
		System.out.println("Hello2");
		return productDao.getProductList();
	}

	@Transactional
	public Product getProductById(int productId) {
		return this.productDao.getProductById(productId);
	}
	
	@Transactional
	public void deleteProduct(Product product) {
		this.productDao.deleteProduct(product);
	}
}