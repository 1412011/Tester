package com.spring.dao.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.spring.dao.AbstractDao;
import com.spring.dao.UserRoleDao;
import com.spring.model.UserRole;

@Transactional
@Repository("userRoleDao")
public class UserRoleDaoImpl extends AbstractDao<Integer, UserRole> implements UserRoleDao {

	@Override
	public void saveUserRoleDao(UserRole userRole) {
		// TODO Auto-generated method stub
		persist(userRole);
	}

}
