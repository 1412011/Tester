package com.spring.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.OrderDishDao;
import com.spring.model.OrderDish;
import com.spring.service.OrderDishService;

@Service("orderDishService")
@Transactional
public class OrderDishServiceImpl implements OrderDishService {

	@Autowired
	private OrderDishDao _orderDishDao;
	
	@Override
	public void saveOrderDish(OrderDish orderDish) {
		// TODO Auto-generated method stub
		_orderDishDao.saveOrderDish(orderDish);
	}

}
