package com.spring.dao.impl;

import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import com.spring.dao.AbstractDao;
import com.spring.dao.OrderDao;
import com.spring.model.Order;
import com.spring.util.SQLConstant;

@Repository("orderDao")
public class OrderDaoImpl extends AbstractDao<Integer, Order> implements OrderDao {

	@Override
	public void saveOrder(Order order) {
		// TODO Auto-generated method stub
		persist(order);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getOrderedListByUsername(String username) {
		// TODO Auto-generated method stub
		SQLQuery sqlQuery = getSession().createSQLQuery(SQLConstant.GET_ORDERED_LIST_BY_USER_NAME);
		sqlQuery.setString("username", username);
		List<Object[]> orderedList = sqlQuery.list();
		return orderedList;
	}

}