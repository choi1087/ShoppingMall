package com.choi.model;

public class Cart {
	private int c_id;
	private String id;
	private int p_id;
	private int qnt;
	
	
	public Cart(String id, int p_id, int qnt) {		
		this.id = id;
		this.p_id = p_id;
		this.qnt = qnt;		
	}
	
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public int getQnt() {
		return qnt;
	}
	public void setQnt(int qnt) {
		this.qnt = qnt;
	}
	
	
	@Override
	public String toString() {
		return "Cart [c_id=" + c_id + ", id=" + id + ", p_id=" + p_id + ", qnt="  + qnt
				+ "]";
	}
}
