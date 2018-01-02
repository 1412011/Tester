package com.spring.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.spring.dao.AbstractDao;
import com.spring.dao.UserDao;
import com.spring.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

	public User findByUserName(String username) {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("username", username));
		return (User)criteria.uniqueResult();
	}
	
	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		persist(user);
	}
}
