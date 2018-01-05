/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller.service;

import com.spring.dao.OrderDao;
import com.spring.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author HOANG ANH
 */
public class OrderBranchService {
    @Autowired
    OrderService _orderService;
    
    public void UpdateOrder_Status(int idOrder)
    {
        _orderService.changeAndSaveStatusOrder(idOrder);
    }
}
