package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Cart;
import com.model.Customer;
import com.service.CartServiceImpl;
import com.service.CustomerService;

@Controller
	public class CartController {
	@Autowired
	private CustomerService customerServices;
	@Autowired
	private CartServiceImpl cartService;
	@Autowired
	public CartServiceImpl getCartService() {
		return cartService;
	}

	public void setCartService(CartServiceImpl cartService) {
		this.cartService = cartService;
	}

	public CustomerService getCustomerServices() {
			return customerServices;
		}

		public void setCustomerServices(CustomerService customerServices) {
			this.customerServices = customerServices;
		}

	@RequestMapping("/**/cart/**/getCartId")
	public String getCartId(Model model){
		User user=(User)SecurityContextHolder
		  .getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		
		Customer customer=customerServices
		  .getCustomerByUsername(username);
		model.addAttribute("cartId",customer.getCart().getCartId());
		return "cart";
	}
	@RequestMapping("/cart/**/getCart/{cartId}")
	public @ResponseBody Cart getCartItems(@PathVariable(value="cartId") int cartId){
//		return cartService.getCartByCartId(cartId);
		System.out.print("getcart in cart controller");
		Cart cart=cartService.getCartByCartId(cartId);
		System.out.print("cart id"+cart.getCartId());
		System.out.print("list of items"+cart.getCartItems());

		return cart;
	}
	
//	/product/viewProduct/cart/getCartId
	}