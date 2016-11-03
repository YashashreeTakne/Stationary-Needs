package com.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.model.Category;

@Entity
@Table(name="product")
public class Product implements Serializable{

    private static final long serialVersionUID = -3532377236419382983L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int productId;

	@NotEmpty(message = "The product name must not be empty")
	private String productname;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="catid")
	private Category category;
public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}

	//    private String category;
    private String brand;
   
    private String productdescription;
   
    @Min(value=20,message="Minimum value should be greater than Rs.20")
    private int prize;
    
    private int discount;
    private int selling_price;
    
//    private String supplier;
    private String supplierId;

    public String getSupplierId() {
    	return supplierId;
    }
    public void setSupplierId(String supplierId) {
    	this.supplierId = supplierId;
    }

    @Transient
    private MultipartFile productImage;
    
    public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

//	public String getCategory() {
//		return category;
//	}
//
//	public void setCategory(String category) {
//		this.category = category;
//	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getProductdescription() {
		return productdescription;
	}

	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}
	
	public int getPrize() {
		return prize;
	}

	public void setPrize(int prize) {
		this.prize = prize;
	}
	
	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public int getSelling_price() {
		return selling_price;
	}

	public void setSelling_price(int selling_price) {
		this.selling_price = selling_price;
	}

//	public String toString(){
//		return "ProductId="+productId+", Product Name="+productname+", Category="+category+", Brand="+brand+", Description="+productdescription+",Supplier="+supplier+", Prize="+prize+", Discount="+discount+", Selling Price="+selling_price;
//	}
//
//	public String getSupplier() {
//		return supplier;
//	}
//
//	public void setSupplier(String supplier) {
//		this.supplier = supplier;
//	}
}