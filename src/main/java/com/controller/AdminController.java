package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Product;
import com.model.Supplier;
import com.service.ProductService;
import com.service.SupplierService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
    private ProductService productService;

	@Autowired
    private SupplierService supplierService;
    @RequestMapping
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productInventory";
    }

    @RequestMapping("/supplierInventory")
    public String supplierInventory(Model model){
        List<Supplier> suppliers = supplierService.getAllSupplier();
        model.addAttribute("suppliers", suppliers);

        return "supplierInventory";
    }

    @RequestMapping("/customer")
    public String customerManagerment(Model model){

        // to add some customer service later
        return "customerManagement";
    }

    @RequestMapping("/product/productList")
	public ModelAndView registerCustomer10()
	{
		ModelAndView model = new ModelAndView("productListAngular");
			return model;
	}
    
    @RequestMapping("/product/Hello")
	public ModelAndView registerCustomer14()
	{
		ModelAndView model = new ModelAndView("Hello");
			return model;
	}
    
    @RequestMapping("/product/product/productList")
   	public ModelAndView registerCustomer11()
   	{
   		ModelAndView model = new ModelAndView("productListAngular");
   			return model;
   	}
    
    @RequestMapping("/product/product/productListAngular")
   	public ModelAndView registerCustomer12()
   	{
   		ModelAndView model = new ModelAndView("productListAngular");
   			return model;
   	}
    
    @RequestMapping("/productListAngular")
   	public ModelAndView registerCustomer19()
   	{
   		ModelAndView model = new ModelAndView("productListAngular");
   			return model;
   	}
    
}