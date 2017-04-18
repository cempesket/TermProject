package com.cem.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "\"USER\"")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user-seq-gen")
	@SequenceGenerator(name = "user-seq-gen", sequenceName = "SEQ_USER", allocationSize = 1)
	private long id;
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ACCOUNT_ID")
	private Account account;

	@Column(name = "USER_NAME", length = 30, nullable = false, unique = true)
	private String userName;

	@Column(name = "PASSWORD", length = 100, nullable = false)
	private String password;

	public User() {
	}

	public User(String username, String password, Account account) {
		this.userName = username;
		this.password = password;
		this.account = account;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

}
