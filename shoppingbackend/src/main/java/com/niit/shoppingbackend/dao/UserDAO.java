package com.niit.shoppingbackend.dao;

import java.util.List;

import com.niit.shoppingbackend.dto.Address;
//import com.niit.shoppingbackend.dto.Cart;
import com.niit.shoppingbackend.dto.User;

public interface UserDAO {
	// add a user
	boolean addUser(User user);
	User getByEmail(String email);
	
	// add an address
	boolean addAddress(Address address);
	

	Address getBillingAddress(int userId);
	List<Address> listShippingAddresses(int userId);
	
	// alternative
	//Address getBillingAddress(User user);
	//List<Address> listShippingAddresses(User user);
	
	User get(int id);
	Address getAddress(int addressId);
	boolean updateAddress(Address address);
	
	
	
}
