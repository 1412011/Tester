package com.spring.dao;

import java.util.List;

import com.spring.model.Order;

public interface OrderDao {
	
	void saveOrder(Order order);
	List<Object[]> getOrderedListByUsername(String username);
        List<Object[]> getListOrderFromCS(int idbranch);
}
