package com.spring.service;

import java.util.List;

import com.spring.model.Order;

public interface OrderService {
	void saveOrder(Order order);
	List<Order> getOrderedListByUsername(String username);
        List<Order> getFullListOrderFromCS(int idbranch);
        List<Order> getFullListOrderFromCS_2(int idbranch);
        void changeAndSaveStatusOrder(int idOrder);
        int InsertOrder(Order or);
}
