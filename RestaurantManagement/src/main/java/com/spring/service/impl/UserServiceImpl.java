package com.spring.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.spring.dao.UserDao;
import com.spring.model.User;
import com.spring.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao _userDao;

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		_userDao.saveUser(user);
	}

	@Override
	public User findByUserName(String username) {
		// TODO Auto-generated method stub
		return _userDao.findByUserName(username);
	}
	
	
}
