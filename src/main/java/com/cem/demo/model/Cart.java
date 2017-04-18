package com.cem.demo.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "STOCK")
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user-seq-gen")
	@SequenceGenerator(name = "user-seq-gen", sequenceName = "SEQ_USER", allocationSize = 1)
	@Column(name = "STOCK_ID")
	private long id;

	@Column(name = "TOTAL", length = 30, nullable = false)
	private int total;
	@Column(name = "QUANTITY", length = 30, nullable = false)
	private int quantity;
	@OneToMany(mappedBy = "cart", fetch = FetchType.EAGER)
	private List<Product> products;

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public int getTotal() {
		return total;
	}

	public List<Product> getProductList() {
		return products;
	}

	public void setProductList(List<Product> productList) {
		this.products = productList;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Cart() {
	}

}
