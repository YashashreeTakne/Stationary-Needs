package com.service;

import java.util.List;

import com.model.Product;

public interface ProductService {

	public void addProduct(Product product);
	public void editProduct(Product product);
	public void deleteProduct(Product product);

	public List<Product> getProductList();
	public Product getProductById(int id);
	
}
