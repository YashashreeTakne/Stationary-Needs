package com.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.model.Product;

@Entity
@Table(name="productcategories")
public class Category implements Serializable{
	private static final long serialVersionUID = 1L;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Id
	private int catid;

	@Column(name="category")
	@NotBlank(message ="please enter name of the item")
	private String Catname;
	
	@OneToMany(mappedBy="category",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@JsonIgnore
	List<Product> products;
	
	public int getCatId() {
		return catid;
	}
	public void setCatId(int catid) {
		this.catid = catid;
	}
	
	public String getName() {
		return Catname;
	}
	public void setName(String Catname) {
		this.Catname = Catname;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
}