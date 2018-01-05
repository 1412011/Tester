/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import com.spring.controller.service.OrderBranchService;
import com.spring.model.Dish;
import com.spring.model.Order;
import com.spring.service.OrderService;
import com.spring.util.SessionUtil;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author HOANG ANH
 */
@Controller
public class OrderController extends OrderBranchService{
    
    @Autowired
    OrderService _orderService;
    
    @RequestMapping(value="/orderbranch", method = RequestMethod.GET)
    public String ReceiveOrder(ModelMap model)
    {
        if(SessionUtil.branchId != -1){
            List<Order> listOrder = _orderService.getFullListOrderFromCS(SessionUtil.branchId);
            model.addAttribute("listOrderOnBranch",listOrder);
            
            System.out.println(listOrder.size());
        }

        return "orderbranch";
    }
    
    
    @RequestMapping(value="/orderbranch/submit", method = RequestMethod.GET)
    public String submitOrder(ModelMap model, @RequestParam(value = "id") int idOrder)
    {
        UpdateOrder_Status(idOrder);

        return "redirect:/orderbranch";
    }
}
