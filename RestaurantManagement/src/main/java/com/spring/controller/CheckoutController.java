package com.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.controller.service.CheckoutService;
import com.spring.model.Dish;
import com.spring.util.SessionUtil;


@Controller
public class CheckoutController extends CheckoutService {
	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String loadCheckoutPage(ModelMap modelMap) {
		List<Dish> cartList = SessionUtil.cartList;
		int totalPrice = getTotalPrice();
		String defaultAddress = getClientAddress();
		modelMap.addAttribute("cartList", cartList);
		modelMap.addAttribute("totalPrice", totalPrice);
		modelMap.addAttribute("defaultAddress", defaultAddress);
		return "checkout/checkout";
	}
	
	@ResponseBody
	@RequestMapping(value = "/checkout/updateCart", method = RequestMethod.POST)
	public Map<String, String> updateCart(ModelMap modelMap, @RequestBody Map<String, String> dishMap) {
		Map<String, String> hmResult = new HashMap<>();
		updateCart(dishMap);
		hmResult.put("response", "success");
		return hmResult;
	}
	
	@ResponseBody
	@RequestMapping(value = "/placeOrder", method = RequestMethod.POST)
	public Map<String, String> placeOrder(ModelMap modelMap, @RequestBody Map<String, String> orderInfo) {
		Map<String, String> hmResult = new HashMap<>();
		placeOrder(orderInfo);
		hmResult.put("response", "success");
//		modelMap.addAttribute("cartList", cartList);
//		modelMap.addAttribute("totalPrice", totalPrice);
		return hmResult;
	}
	
	
}
