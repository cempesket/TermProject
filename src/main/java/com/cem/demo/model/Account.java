package com.cem.demo.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "ACCOUNT")

public class Account extends BaseEntity {

	private static final long serialVersionUID = -7178382684799515861L;
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	@Id
	@Column(name = "ACCOUNT_ID", length = 40, unique = true, nullable = false)
	private String accountID;
	@Column(name = "EMAIL", length = 200, unique = true, nullable = false)
	private String email;
	@Column(name = "ADDRESS", length = 100, nullable = false)
	private String address;
	@Column(name = "PAYMENT_INFO", length = 50)
	private String paymentInfo;
	@Column(name = "NAME", length = 50)
	private String name;

	@OneToOne(fetch = FetchType.EAGER, cascade = { CascadeType.ALL }, mappedBy = "account")
	@JoinColumn(nullable = false)

	private User user = new User();

	public Account() {
	}

	public Account(String email, String address) {
		this.email = email;
		this.address = address;

	}

	public String getAccountID() {
		return accountID;
	}

	public void setAccountID(String accountID) {
		this.accountID = accountID;
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

	public String getPaymentInfo() {
		return paymentInfo;
	}

	public void setPaymentInfo(String paymentInfo) {
		this.paymentInfo = paymentInfo;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Account) {
			Account account = (Account) obj;
			return account.getAccountID().equals(this.getAccountID());
		}
		return false;
	}
}
