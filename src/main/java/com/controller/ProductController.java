package com.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Product;
import com.service.ProductService;

@Controller
@RequestMapping("/product")

public class ProductController {
	
	@Autowired
	private ProductService productService;
	
    @RequestMapping("/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException{
        Product product = productService.getProductById(productId);
        model.addAttribute("product", product);
        return "viewProduct";
    }

    @RequestMapping("/productList")
	public @ResponseBody List<Product>getProductListInJSON(){
		return productService.getProductList();
	}
	
	@RequestMapping("/productListAngular")
	public String getProducts(){
		return"productListAngular";
	}
	
}