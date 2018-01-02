package com.spring.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.controller.service.ProductService;
import com.spring.model.Dish;
import com.spring.util.SessionUtil;

@Controller
public class ProductController extends ProductService {

	@RequestMapping(value = "/products/{dishName}", method = RequestMethod.POST)
	public String loadDishPage(ModelMap modelMap, @RequestBody MultiValueMap<String, String> dishMap) {
		int dishId = Integer.valueOf(dishMap.getFirst("dishId"));

		Dish dish = getFullDishInfoById(dishId);
		modelMap.addAttribute("dish", dish);
		modelMap.addAttribute("total", SessionUtil.getTotalDishInOrder());
		
		return "product/product";
	}
	
	@ResponseBody
	@RequestMapping(value = "/addToCart", method = RequestMethod.POST)
	public Map<String, String> addToCart(@RequestBody Map<String, String> dish) {
		Map<String, String> resultHm = new HashMap<String, String>();
		System.out.println(dish.get("dishId"));
		int dishId = Integer.valueOf(dish.get("dishId"));
		
		int result = addToCart(dishId);
		String total = String.valueOf(SessionUtil.getTotalDishInOrder());
		resultHm.put("result", "success");
		resultHm.put("total", total);
		if(result != 1) {
			resultHm.put("result", "fail");
		}
		
		return resultHm;
	}
	
	
}
