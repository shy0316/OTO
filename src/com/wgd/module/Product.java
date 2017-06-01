package com.wgd.module;

public class Product {//订单详细表
	private int oid;
	private int tid;
	private String tname;
	private int price;
	private int  months;
	private String phone;
	private String address;//教师的住址
	private String imgsrc;
	
	public Product(){
		
	}
	
	public Product(int tid, String tname, int price, int months, String phone, String address, String imgsrc) {
		super();
		this.tid = tid;
		this.tname = tname;
		this.price = price;
		this.months = months;
		this.phone = phone;
		this.address = address;
		this.imgsrc = imgsrc;
	}

	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMonth() {
		return months;
	}
	public void setMonth(int months) {
		this.months = months;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
}
