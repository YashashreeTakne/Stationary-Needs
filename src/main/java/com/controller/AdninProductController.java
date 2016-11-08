package com.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.model.Category;
import com.model.Product;
import com.service.ProductService;
import com.service.SupplierService;

@Controller
@RequestMapping("/admin")
public class AdninProductController {

	private Path path;

    @Autowired
    private ProductService productService;
    
    @Autowired
	private SupplierService supplierService;
	
    @RequestMapping("/product/addProduct")
    public String addProduct(Model model){
        Product product = new Product();
        Category category=new Category();
    	category.setCatId(1);//College Needs
    	model.addAttribute("suppliers", this.supplierService.getSuppliers());
    	//set the category as 1 for the Product product
    	product.setCategory(category);
    	
        model.addAttribute("product", product);

        return "addProduct";
    }

    @RequestMapping(value="/product/addProduct", method = RequestMethod.POST)
    public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request){

        if(result.hasErrors()){
            return "addProduct";
        }

        productService.addProduct(product);

        MultipartFile productImage = product.getProductImage();

        path = Paths.get("E:\\niit\\Copy of Copy of Copy of Copy (6) of MainProject\\src\\main\\webapp\\WEB-INF\\resources\\IMGS\\"+product.getProductId()+".png");

        if(productImage != null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception ex){
                ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
            }
        }

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/product/editProduct/{id}")
    public String editProduct(@PathVariable("id") int id,  Model model){
        Product product = productService.getProductById(id);

        model.addAttribute("product", product);
    	model.addAttribute("suppliers", this.supplierService.getSuppliers());

        return "editProduct";
    }


    @RequestMapping(value="/product/editProduct", method = RequestMethod.POST)
    public String editProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result){

        if(result.hasErrors()){
            return "editProduct";
        }

        MultipartFile productImage = product.getProductImage();
        path = Paths.get("E:\\niit\\Copy of Copy of Copy of Copy (6) of MainProject\\src\\main\\webapp\\WEB-INF\\resources\\IMGS\\"+product.getProductId()+".png");

        if(productImage != null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception ex){
                ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
            }
        }

        productService.editProduct(product);

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/product/deleteProduct/{id}")
    public String deleteProduct(@PathVariable int id, Model model, HttpServletRequest request){
        path = Paths.get("E:\\niit\\Copy of Copy of Copy of Copy (6) of MainProject\\src\\main\\webapp\\WEB-INF\\resources\\IMGS\\"+id+".png");


        if(Files.exists(path)){
            try {
                Files.delete(path);
            } catch (Exception ex){
                ex.printStackTrace();
            }
        }

        Product product = productService.getProductById(id);
        productService.deleteProduct(product);

        return "redirect:/admin/productInventory";
    }
    
	
	@RequestMapping("/*/productListAngular")
	public String getProducts(){
		return"productListAngular";
	}
	
	}