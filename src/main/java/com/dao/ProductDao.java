package com.dao;

import java.util.List;

import com.model.Product;

public interface ProductDao {

	public void addProduct(Product product);
	public void editProduct(Product product);
	public void deleteProduct(Product product);

	public List<Product> getProductList();
	public Product getProductById(int id);
}
