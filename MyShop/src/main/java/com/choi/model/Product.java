package com.choi.model;

public class Product {
	private int p_id;
	private String p_name;
	private double price;
	private int qnt;
	private String url;

	
	public Product(int p_id, String p_name, double price, int qnt, String url) {
		this.p_id = p_id;
		this.p_name = p_name;
		this.price = price;
		this.qnt = qnt;
		this.url = url;		
	}
	
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQnt() {
		return qnt;
	}
	public void setQnt(int qnt) {
		this.qnt = qnt;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
		
	@Override
	public String toString() {
		return "Product [p_id=" + p_id + ", p_name=" + p_name + ", price=" + price + ", qnt="  + qnt + ", url=" + url
				+ "]";
	}
}
