package com.cem.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "PAYMENT")
public class Payment {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user-seq-gen")
	@SequenceGenerator(name = "user-seq-gen", sequenceName = "SEQ_USER", allocationSize = 1)
	@Column(name = "PAYMENT_ID")
	private long id;

	@Column(name = "NUMBER", length = 16, nullable = false)
	private int cardNumber;
	@Column(name = "NAME", length = 30, nullable = false)
	private String name;
	@Column(name = "EXPIRATION_DATE", length = 6, nullable = false)
	private int expirationDate;
	@Column(name = "CVC", length = 3, nullable = false)
	private int cvc;

	public Payment() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(int cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(int expirationDate) {
		this.expirationDate = expirationDate;
	}

	public int getCvc() {
		return cvc;
	}

	public void setCvc(int cvc) {
		this.cvc = cvc;
	}

}