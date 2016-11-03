package com.model;
import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Users implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

    @Id
    @GeneratedValue
    private int usersId;
	@NotEmpty(message="Username can not be empty!")
    private String username;
    private String password;
    private Boolean enabled;
    
    @JsonIgnore
    @OneToOne(mappedBy="users",cascade=CascadeType.ALL)
    private Customer customer;
    
    public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

    public int getUsersId() {
        return usersId;
    }

    public void setUsersId(int usersId) {
        this.usersId = usersId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

} // The End of Class;