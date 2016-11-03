package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.security.core.userdetails.User;

import com.model.Cart;
import com.model.CartItem;
import com.model.Customer;
import com.model.Product;
import com.service.CartItemService;
import com.service.CartService;
import com.service.CustomerService;
import com.service.ProductService;

@Controller
public class CartItemController {
	
	//it needs CartItemService
	@Autowired
	private CartItemService cartItemService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CartService cartService;
	
	public CartItemService getCartItemService() {
		return cartItemService;
	}

	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}

	public CustomerService getCustomerService() {
		return customerService;
	}

	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}
	@RequestMapping("/cart/add/{productId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value = "productId") int productId)
	{
		//Is to get the username of the customer
		//User object contains details about the user -username , password, activeuser or not
		User user=(User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		Customer customer=customerService.getCustomerByUsername(username);
		System.out.println("Customer is " + customer.getCustomerName() );
		Cart cart=customer.getCart();
					
		List<CartItem>cartItems=cart.getCartItems();
		Product product=productService.getProductById(productId);
		for(int i=0;i<cartItems.size();i++){
			CartItem cartItem=cartItems.get(i);
			if(product.getProductId()==cartItem.getProduct().getProductId()){
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalprice(cartItem.getQuantity() * cartItem.getProduct().getPrize());
				cartItemService.addCartItem(cartItem);
				return;
			}
		}
		
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(1);
		cartItem.setProduct(product);
		cartItem.setTotalprice(product.getPrize() * 1);
		cartItem.setCart(cart);
		cartItemService.addCartItem(cartItem);
	}
	
	
	@RequestMapping("/cart/removecartitem/{cartItemId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeCartItem(
		@PathVariable(value="cartItemId") int cartItemId){
		cartItemService.removeCartItem(cartItemId);
	}

	@RequestMapping("/cart/removeAllItems/{cartId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable(value="cartId") int cartId){
		Cart cart=cartService.getCartByCartId(cartId);
		cartItemService.removeAllCartItems(cart);
	}

}

//@RequestMapping("/cart/removecartitem/{cartItemId}")
//@ResponseStatus(value=HttpStatus.NO_CONTENT)
//public void removeCartItem(
//	@PathVariable(value="cartItemId") int cartItemId){
//	cartItemService.removeCartItem(cartItemId);
//}
//
//@RequestMapping("/cart/removeAllItems/{cartId}")
//@ResponseStatus(value=HttpStatus.NO_CONTENT)
//public void removeAllCartItems(@PathVariable(value="cartId") int cartId){
//	Cart cart=cartService.getCartByCartId(cartId);
//	cartItemService.removeAllCartItems(cart);
//}
	
//	@RequestMapping("/cart/add/{isbn}")
//	@ResponseStatus(value=HttpStatus.NO_CONTENT)
//	public void addCartItem(@PathVariable(value="isbn") intisbn){
//		//Is to get the username of the customer
//		//User object contains details about the user -username , password, activeuser or not
//		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		String username=user.getUsername();
//		Customer customer=customerServices.getCustomerByUsername(username);
//		System.out.println("Customer is " + customer.getCustomerEmail() );
//		Cart cart=customer.getCart();
//		
//		List<CartItem>cartItems=cart.getCartItems();
//		Book book=bookServices.getBookByIsbn(isbn);
//		for(inti=0;i<cartItems.size();i++){
//			CartItemcartItem=cartItems.get(i);
//			if(book.getIsbn()==cartItem.getBook().getIsbn()){
//				cartItem.setQuantity(cartItem.getQuantity() + 1);
//				cartItem.setTotalPrice(cartItem.getQuantity() * cartItem.getBook().getPrice());
//				cartItemService.addCartItem(cartItem);
//				return;
//			}
//		}
//		CartItemcartItem=new CartItem();
//		cartItem.setQuantity(1);
//		cartItem.setBook(book);
//		cartItem.setTotalPrice(book.getPrice() * 1);
//		cartItem.setCart(cart);
//		cartItemService.addCartItem(cartItem);	
//	}