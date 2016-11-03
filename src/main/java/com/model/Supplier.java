package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="SUPPLIER")
public class Supplier{
	
	@Id
	private String id;
//	public Supplier() {
//		this.id = UUID.randomUUID().toString().substring(22, 30);
//	}

	@NotBlank(message="Please enter your name")
	private String name;
	@NotBlank(message="Please enter your Address")
	private String address;
	@NotBlank(message="Please enter your Phone Number")
	private String phoneNo;
	@NotBlank(message="Please enter your E-mail")
	private String email;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

//	public String toString(){
//		return "Supplier Id="+id+", Supplier Name="+name+", Address="+address+", Phone No="+phoneNo+", E-mail="+email;
//	}
}
