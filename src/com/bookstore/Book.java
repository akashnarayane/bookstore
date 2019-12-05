package com.bookstore;

public class Book {

	
	String name,auther,descp,btitle;
	int id,price;
	
	
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuther() {
		return auther;
	}
	public void setAuther(String auther) {
		this.auther = auther;
	}
	public String getDescp() {
		return descp;
	}
	public void setDescp(String desrip) {
		this.descp = desrip;
	}
	public int getId() {
		System.out.println("Book id is : "+id);
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}	
	
}
