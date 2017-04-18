package com.cem.demo.services;

import java.util.List;

import com.cem.demo.model.User;

public interface UserService {
	public void addUser(User user);

	public void updateUser(String userName, String password);

	public void deleteUser(String userName);

	public User getUser(String userName);

	public List<User> getAllUsers();

}
