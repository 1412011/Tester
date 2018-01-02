package com.spring.controller.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.model.Dish;
import com.spring.model.Order;
import com.spring.service.DishService;
import com.spring.service.OrderService;
import com.spring.util.SessionUtil;

public class AccountService {
	
	@Autowired
	private OrderService _orderService;
	
	@Autowired
	private DishService _dishService;
	
	public List<Order> getOrderedList() {
		String username = SessionUtil.username;
		List<Order> listOrderedResult = new ArrayList<>();
		List<Order> listOrdered = _orderService.getOrderedListByUsername(username);
		for(Order order : listOrdered) {
			int orderId = order.getId();
			List<Dish> listDish = _dishService.getOrderedDishListByOrderId(orderId);
			order.setListDish(listDish);
			listOrderedResult.add(order);
		}
		
		return listOrderedResult;
	}
}
