package com.cem.demo.services;

import java.util.List;

import com.cem.demo.model.Account;

public interface AccountService {
	public void addAccount(Account account);

	public void updateAccount(String email, String address, String paymentInfo, String newEmail);

	public void deleteAccount(String email);

	public Account getAccount(String email);

	public List<Account> getAllAccounts();

}
