package com.wgd.module;

public class Cart {
	private int cartid;
	private int uid;
	private int tid;
	
	public Cart(){
		
	}
	
	public Cart(int uid, int tid){
		this.uid=uid;
		this.tid=tid;
	}
	
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	
}
