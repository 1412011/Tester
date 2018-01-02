package com.spring.service;

import java.util.List;

import com.spring.model.Order;

public interface OrderService {
	void saveOrder(Order order);
	List<Order> getOrderedListByUsername(String username);
}
