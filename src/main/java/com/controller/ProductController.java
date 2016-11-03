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
	
//	public ProductService getProductService() {
//		return productService;
//	}
	
	//@Qualifier(value="productService")
//	public void setProductService(ProductService ps){
//		this.productService = ps;
//	}
	
//	@RequestMapping("/productList")
//    public String getProducts(Model model){
//        List<Product> products = productService.getProductList();
//        model.addAttribute("products", products);
//        return "productList";
//    }

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
	
	
//	@RequestMapping(value = "/products", method = RequestMethod.GET)
//	public String listProducts(Model model) {
//		model.addAttribute("product", new Product());
//		System.out.println("Hello1");
//		model.addAttribute("listProducts", this.productService.listProducts());
//		return "product";
//	}
//	
//	//For add and update product both
//	@RequestMapping(value= "/admin/product/add", method = RequestMethod.POST)
//	public String addProduct(@ModelAttribute("product") Product p){
//		
//		if(p.getProductId() == 0){
//			//new product, add it
//			this.productService.addProduct(p);
//		}else{
//			//existing product, call update
//			this.productService.updateProduct(p);
//		}
//				
//		MultipartFile productImage =p.getProductImage();
//		if(productImage!=null && !productImage.isEmpty()) {
//			Path paths =Paths.get("E:\\niit\\Copy (5) of StationaryApp\\src\\main\\webapp\\WEB-INF\\resources\\IMGS\\"+p.getProductId()+".png");
//		try {
//			productImage.transferTo(new File(paths.toString()));
//		} catch (IllegalStateException e) {
//			// TODO Auto-generated catch block 
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		}
//		return "redirect:/products";
//	}
//	
//	@RequestMapping("/admin/remove/{productId}")
//    public String removeProduct(@PathVariable(value="productId") int productId){
//		
//        productService.removeProduct(productId);
//         
//		Path paths =Paths.get("E:\\niit\\Copy (5) of StationaryApp\\src\\main\\webapp\\WEB-INF\\resources\\IMGS\\"+productId+".png");
//        
//		if(Files.exists(paths))
//		{
//			try {
//				Files.delete(paths);
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//		return "product";
//      }
// 
//    @RequestMapping("/admin/edit/{productId}")
//    public String editProduct(@PathVariable("productId") int id, Model model){
//        model.addAttribute("product", this.productService.getProductById(id));
//        model.addAttribute("listProducts", this.productService.listProducts());
//        return "product";
//    }	
//    @RequestMapping("/getProductById/{productId}")
//	public ModelAndView registerCustomer14()
//	{
//		ModelAndView model = new ModelAndView("single");
//			return model;
//	}
    
//    @RequestMapping("/admin/book/editBook/{isbn}")
//    public ModelAndView getEditForm(@PathVariable(value="isbn")  intisbn){
//    	//First read the record which has to be updated
//    	//select * from bookapp where isbn=?
//    	//Populate the form with already existing value
//    	Book book=this.bookServices.getBookByIsbn(isbn);
//    	returnnew ModelAndView("editBookForm","editBookObj",book);
//    }
//    @RequestMapping(value="/admin/book/editBook",method=RequestMethod.POST)
//    public String editBook(@ModelAttribute(value="editBookObj") Book book)
//    {
//    bookServices.editBook(book);
//    return"redirect:/getAllBooks";
//
//    }

}