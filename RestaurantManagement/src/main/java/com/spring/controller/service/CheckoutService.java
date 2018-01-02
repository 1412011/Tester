package com.spring.controller.service;

import java.util.ArrayList;
import java.util.Map;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.model.Client;
import com.spring.model.Dish;
import com.spring.model.Order;
import com.spring.model.OrderDish;
import com.spring.service.ClientService;
import com.spring.service.OrderDishService;
import com.spring.service.OrderService;
import com.spring.util.SessionUtil;

public class CheckoutService {
	@Autowired
	private OrderService _orderService;
	
	@Autowired
	private ClientService _clientService;;
	
	@Autowired
	private OrderDishService _orderDishService;

	public int getTotalPrice() {
		int totalPrice = 0;
		for (Dish dish : SessionUtil.cartList) {
			totalPrice += dish.getPrice() * dish.getQuantity();
		}
		return totalPrice;
	}

	public void updateCart(Map<String, String> dishMap) {
		int dishId = Integer.valueOf(dishMap.get("dishId"));
		int dishQuantity = Integer.valueOf(dishMap.get("dishQuantity"));
		int dishIndex = 0;
		for (int i = 0; i < SessionUtil.cartList.size(); i++)
			if (SessionUtil.cartList.get(i).getId() == dishId)
				dishIndex = i;
		if (dishQuantity > 0)
			SessionUtil.cartList.get(dishIndex).setQuantity(dishQuantity);
		else
			SessionUtil.cartList.remove(dishIndex);
	}

	public void placeOrder(Map<String, String> orderInfo) {
		String deliveryAddress = orderInfo.get("deliveryAddress");
		String deliveryDatetime = orderInfo.get("deliveryDatetime");
		//System.out.println(deliveryDatetime);
		int orderStatus = 0;
		int orderType = 1;
		int clientId = _clientService.getClientByUsername(SessionUtil.username).getId();

		DateTimeFormatter formatter = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm");
		DateTime jodaTime = formatter.parseDateTime(deliveryDatetime);
		//System.out.println(jodaTime.toString());
		jodaTime = jodaTime.plusHours(7);
		//System.out.println(jodaTime.toString());

		Order order = new Order(orderStatus, jodaTime, jodaTime, orderType, SessionUtil.branchId, clientId, deliveryAddress);
		_orderService.saveOrder(order);
		
		for(Dish dish : SessionUtil.cartList) {
			OrderDish orderDish = new OrderDish(order.getId(), dish.getId(), dish.getQuantity());
			
			_orderDishService.saveOrderDish(orderDish);
		}
		
		SessionUtil.cartList = new ArrayList<>();
	}
	
	public String getClientAddress() {
		Client client = _clientService.getClientByUsername(SessionUtil.username);
		return client.getAddress();
	}
}
