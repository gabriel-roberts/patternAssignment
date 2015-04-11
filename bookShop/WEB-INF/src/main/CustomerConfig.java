package main;

import entity.Customer;
import persistence.PersistenceUtil;


public class CustomerConfig {
	public static void main(String[] args){
		CustomerConfig config = new CustomerConfig();
	}
	 
	public CustomerConfig(){
		
	}
	
	public String createCustomer(String firstName, String lastName,String username, String password,
			String address , String paymentType, int age){
		Customer customer= new Customer(firstName,lastName,username,password,address,paymentType,age);
		PersistenceUtil.persist(customer);	
		return "success";
	}
	
	public Customer getCustomer(String username, String password){
		Customer customer = PersistenceUtil.findCustomerByUsernameAndPassword(username, password);
		return customer;
	}
}
