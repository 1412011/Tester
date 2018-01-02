package com.spring.service;

import com.spring.model.User;

public interface UserService {
	
	User findByUserName(String username);
	
	void saveUser(User user);
}
