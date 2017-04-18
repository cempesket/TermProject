package com.cem.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "PRODUCT")
public class Product {
	@Id
	@Column(name = "ID", length = 100)
	private int id;

	@Column(name = "NAME", length = 30, nullable = false, unique = true)
	private String name;

	@Column(name = "PRICE", length = 100, nullable = false)
	private String price;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "STOCK_ID")
	private Cart cart;

	public Product() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
