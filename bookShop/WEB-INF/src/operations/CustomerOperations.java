package operations;

import java.sql.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import entity.Customer;
import main.CustomerConfig;

public class CustomerOperations {
	private int id;
	
	private String firstName;
	private String lastName;
	private String username;
	private String password;
	private String address;
	private String paymentType;
	private int age;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String execute(){
		CustomerConfig config = new CustomerConfig();
		String result = config.createCustomer(firstName, lastName, username, password, address, paymentType, age);
		return result;
		}
	
	public String signIn()
	{
		CustomerConfig config = new CustomerConfig();
		Customer customer = config.getCustomer(username, password);
		if(customer == null){
			return "Fail";
		}
		else{
		Map<String, Customer> session = ActionContext.getContext().getSession();
		session.put("Customer", customer);
		return "Success";
		}
	}
}
