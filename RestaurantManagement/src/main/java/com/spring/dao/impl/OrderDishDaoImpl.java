package com.spring.dao.impl;

import org.springframework.stereotype.Repository;

import com.spring.dao.AbstractDao;
import com.spring.dao.OrderDishDao;
import com.spring.model.OrderDish;

@Repository("orderDishDao")
public class OrderDishDaoImpl extends AbstractDao<Integer, OrderDish> implements OrderDishDao {

	@Override
	public void saveOrderDish(OrderDish orderDish) {
		// TODO Auto-generated method stub
		persist(orderDish);
	}

}
