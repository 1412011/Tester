package com.spring.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.OrderDao;
import com.spring.model.Order;
import com.spring.service.OrderService;

@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao _orderDao;
	
	@Override
	public void saveOrder(Order order) {
		// TODO Auto-generated method stub
		_orderDao.saveOrder(order);
	}
	
	private List<Order> _convertToOrderedIdList(List<Object[]> listOrderedObj) {
		List<Order> listOrdered = new ArrayList<>();
		for(Object[] orderObj : listOrderedObj) {
			//o.order_id, o.date_delivery, o.delivery_address
			int orderId = Integer.valueOf(String.valueOf(orderObj[0]));
			String dateDeliveryStr = String.valueOf(orderObj[1]);
			String deliveryAddress = String.valueOf(orderObj[2]);
			int branchId = Integer.valueOf(String.valueOf(orderObj[3]));
			DateTimeFormatter dateTimeFormatter = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss.sssss");
			DateTime dateDelivery = dateTimeFormatter.parseDateTime(dateDeliveryStr);
			Order order = new Order(orderId, dateDelivery, deliveryAddress, branchId);
			listOrdered.add(order);
		}
		return listOrdered;
	}

	@Override
	public List<Order> getOrderedListByUsername(String username) {
		// TODO Auto-generated method stub
		List<Object[]> listOrderedObj = _orderDao.getOrderedListByUsername(username);
		List<Order> listOrdered = _convertToOrderedIdList(listOrderedObj);
		return listOrdered;
	}

}
