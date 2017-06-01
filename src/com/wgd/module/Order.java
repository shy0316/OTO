package com.wgd.module;

import java.util.List;
import java.util.Vector;

import com.sun.javafx.binding.StringFormatter;

public class Order {
	private int oid;
	private int uid;
	private int money;
	private int num;
	private String realname;//用户的
	private String address;//用户的address
	private String phone;//用户的
	private String method;
	private List<Product> product;
	
	
	public Order(){
		
	}
	
	public Order(int uid, String realname, String address, String phone, String method, int money ) {
		super();
		this.uid=uid;
		this.realname = realname;
		this.address = address;
		this.phone = phone;
		this.method = method;
		this.money = money;
	}
	
	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}


	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public List<Product> getProduct() {
		return product;
	}

	public void setProduct(List<Product> product) {
		this.product = product;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}
}
