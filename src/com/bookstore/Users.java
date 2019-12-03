package com.bookstore;

public class Users {
	int id;

	String name;
	String username;
	String password;
	String confirmPass;
	long mobile;
	String email;
	String address;
	String city;
	int pin_Code;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getConfirmPass() {
		return confirmPass;
	}
	public void setConfirmPass(String confirmPass) {
		this.confirmPass = confirmPass;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPin_Code() {
		return pin_Code;
	}
	public void setPin_Code(int pin_Code) {
		this.pin_Code = pin_Code;
	}
	
	@Override
	public String toString() {
		return "Users [name=" + name + ", username=" + username + ", password=" + password + ", confirmPass="
				+ confirmPass + ", mobile=" + mobile + ", email=" + email + ", address=" + address + ", city=" + city
				+ ", pin_Code=" + pin_Code + "]";
	}
	
	
	
	
	
}
