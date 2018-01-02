package com.spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.controller.service.AccountService;
import com.spring.model.Order;
import com.spring.util.SessionUtil;

@Controller
public class AccountController extends AccountService {

	@RequestMapping(value = "/account/order-history", method = RequestMethod.GET)
	public String loadPastOrderPage(ModelMap modelMap) {
		List<Order> listOrdered = getOrderedList();
		modelMap.addAttribute("listOrdered", listOrdered);
		if (SessionUtil.branchId != -1) {
			modelMap.addAttribute("branchId", SessionUtil.branchId);
		}

		return "account/orderHistory";
	}
}
