package com.spring.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.UserRoleDao;
import com.spring.model.UserRole;
import com.spring.service.UserRoleService;

@Service("userRoleService")
public class UserRoleServiceImpl implements UserRoleService {
	
	@Autowired
	private UserRoleDao _userRoleDao;

	@Override
	public void saveUserRole(UserRole userRole) {
		// TODO Auto-generated method stub
		_userRoleDao.saveUserRoleDao(userRole);
	}
}
