package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.BillingAddress;
import com.model.ShippingAddress;
import com.model.Users;
import com.model.Customer;
import com.service.CustomerService;

@Controller
public class MyController {
	
	@RequestMapping("/")
	public ModelAndView login1()
	{
		ModelAndView model = new ModelAndView("Hello");
			return model;
	}
	
	@RequestMapping("/*/Hello")
	public ModelAndView login5()
	{
		ModelAndView model = new ModelAndView("Hello");
			return model;
	}
	
	@Autowired
	CustomerService cService;
	
	 @RequestMapping("/register")
	    public String registerCustomer(Model model){
	        Customer customer = new Customer();
	        BillingAddress billingAddress = new BillingAddress();
	        ShippingAddress shippingAddress = new ShippingAddress();
	        Users users = new Users();
//	        customer.setUsers(users);
	        customer.setBillingAddress(billingAddress);
	        customer.setShippingAddress(shippingAddress);

	        model.addAttribute("customer", customer);

	        return "registerCustomer";
	    }

//	@RequestMapping("/registerCustomer")
//	public ModelAndView registerCustomer()
//	{
//		Customer customer = new Customer();
//		ModelAndView m = new ModelAndView("/registerCustomer");
//		m.addObject("customer",customer);
//		return m;	
//	}	
	
//    @RequestMapping("/register")
//    public String registerCustomer(Model model){
//        Customer customer = new Customer();
//
//
//        model.addAttribute("customer", customer);
//
//        return "registerCustomer";
//    }
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String saveCustomer(@Valid @ModelAttribute("customer")Customer cust, BindingResult res, Model m)
	{
		if (res.hasErrors())
		{
			return "registerCustomer";
		}
		else
		{
			List<Customer> clist = cService.getAllCustomers();
			for (int i=0; i< clist.size(); i++)
			{
	            if(cust.getCustomerEmail().equals(clist.get(i).getCustomerEmail()))
	            {
	                m.addAttribute("emailMsg", "Email already exists");

	                return "registerCustomer";
	            }

	            if(cust.getUsers().equals(clist.get(i).getUsers()))
	            {
	                m.addAttribute("usernameMsg", "Username already exists");

	                return "registerCustomer";
	            }
	        }
		}		
				
		cust.setEnabled(true);
        cService.addCustomer(cust);
		return "Success";	
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout, 
			Model model){
			if(error!=null)
		model.addAttribute("error","Invalid username and password");
		
		if(logout!=null)
			model.addAttribute("logout","You have logged out successfully");
		return"login";
	}
	
	@RequestMapping("/*/contact")
	public ModelAndView registerCustomer2()
	{
		ModelAndView model = new ModelAndView("contact");
			return model;
	}
	
	@RequestMapping("/**/about")
	public ModelAndView registerCustomer3()
	{
		ModelAndView model = new ModelAndView("about");
			return model;
	}
	@RequestMapping("/about")
	public ModelAndView registerCustomer9()
	{
		ModelAndView model = new ModelAndView("about");
			return model;
	}
	
	
	@RequestMapping("/*/office")
	public ModelAndView registerCustomer4()
	{
		ModelAndView model = new ModelAndView("office");
			return model;
	}
	@RequestMapping("/Hello")
	public ModelAndView registerCustomer5()
	{
		ModelAndView model = new ModelAndView("Hello");
			return model;
	}
	@RequestMapping("/contact")
	public ModelAndView registerCustomer19()
	{
		ModelAndView model = new ModelAndView("contact");
			return model;
	}
	@RequestMapping("/*/viewProduct")
	public ModelAndView registerCustomer6()
	{
		ModelAndView model = new ModelAndView("viewProduct");
			return model;
	}
	@RequestMapping("/cart/*/product/productListAngular")
	public ModelAndView registerCustomer7()
	{
		ModelAndView model = new ModelAndView("productListAngular");
			return model;
	}
	
	@RequestMapping("/cart/product/productListAngular")
	public ModelAndView registerCustomer13()
	{
		ModelAndView model = new ModelAndView("productListAngular");
			return model;
	}
	@RequestMapping("/product/product/productList")
	public ModelAndView registerCustomer8()
	{
		ModelAndView model = new ModelAndView("productListAngular");
			return model;
	}
	
	@RequestMapping("/product/product/productListAngular")
	public ModelAndView registerCustomer18()
	{
		ModelAndView model = new ModelAndView("productListAngular");
			return model;
	}
	
	@RequestMapping("/product/product/product/productListAngular")
	public ModelAndView registerCustomer17()
	{
		ModelAndView model = new ModelAndView("productListAngular");
			return model;
	}
	
	@RequestMapping("/product/viewProduct/product/productListAngular")
	public ModelAndView registerCustomer12()
	{
		ModelAndView model = new ModelAndView("productListAngular");
			return model;
	}	
	
}