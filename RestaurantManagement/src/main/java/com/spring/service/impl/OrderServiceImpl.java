package com.spring.service.impl;

import com.spring.dao.BranchDao;
import com.spring.dao.ClientDao;
import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.OrderDao;
import com.spring.model.Branch;
import com.spring.model.Client;
import com.spring.model.Dish;
import com.spring.model.Order;
import com.spring.service.DishService;
import com.spring.service.OrderService;

@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao _orderDao;
	@Autowired
        private DishService _dishService;
        @Autowired 
        private BranchDao _branchDao;
        @Autowired 
        private ClientDao _clientDao;
        
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

        @Override
        public List<Order> getFullListOrderFromCS(int idbranch) {
            List<Object[]> listorder = _orderDao.getListOrderFromCS(idbranch);
            List<Order> listOrderBranch = new ArrayList<>();
            for(Object[] obj: listorder)
            {
                int orderId = Integer.valueOf(String.valueOf(obj[0]));
                int status = Integer.valueOf(String.valueOf(obj[1]));
                
                String dateapproveStr = String.valueOf(obj[2]);
                String datedeliStr = String.valueOf(obj[3]);
                
                DateTimeFormatter dateTimeFormatter = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss.sssss");
                
                DateTime dateApprove = dateTimeFormatter.parseDateTime(dateapproveStr);
                DateTime dateDelivery = dateTimeFormatter.parseDateTime(datedeliStr);
                
                int orderType = Integer.valueOf(String.valueOf(obj[4]));
                int deleteflag = Integer.valueOf(String.valueOf(obj[5]));
                int branchId = Integer.valueOf(String.valueOf(obj[6]));
                int clientId = Integer.valueOf(String.valueOf(obj[7]));
                String deliveryAddress = String.valueOf(obj[8]);
                
                // get list dish
                List<Dish> listDishOrder = _dishService.getListDishOrder(orderId, branchId);
                // get branch
                Branch branch = _branchDao.getBranchById(branchId);
                // get Client
                Client client = _clientDao.getClientById(clientId);
                
                listOrderBranch.add(new Order(orderId,status,dateApprove,dateDelivery,orderType,deliveryAddress,branch,client,listDishOrder));
            }
            return listOrderBranch;
        }

    @Override
    public void changeAndSaveStatusOrder(int idOrder) {
        Order order = _orderDao.getBykey(idOrder);
        
        if(order == null)return;
        
        int status = order.getStatus();
        if(status >=0 && status <4) status++;
        order.setStatus(status);
        
        _orderDao.saveOrder(order);
    }

    @Override
    public int InsertOrder(Order or) {
           return _orderDao.InsertOrder(or);
    }


}
