package com.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="cart")
public class Cart implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartId;
	
	@OneToOne
	@JoinColumn(name="customerId")
	@JsonIgnore
	private Customer customer;
	
	private double totalPrice;
	
	@OneToMany(mappedBy="cart",cascade=CascadeType.ALL, fetch = FetchType.EAGER)
	@JsonIgnore
	private List<CartItem>cartItem;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public List<CartItem> getCartItems() {
		return cartItem;
	}
	public void setCartItems(List<CartItem> cartItem) {
		this.cartItem = cartItem;
	}
}