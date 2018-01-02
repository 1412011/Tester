package com.spring.dao;

import com.spring.model.User;

public interface UserDao {
	
	User findByUserName(String username);
	
	void saveUser(User user);
}
