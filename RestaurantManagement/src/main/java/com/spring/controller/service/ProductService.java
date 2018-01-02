package com.spring.controller.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.model.Dish;
import com.spring.service.DishService;
import com.spring.util.SessionUtil;

public class ProductService {

	@Autowired
	private DishService _dishService;
	
	private void _addToCartProcess(Dish dish) {
		for (int i = 0; i < SessionUtil.cartList.size(); i++) {
			if (SessionUtil.cartList.get(i).getId() == dish.getId()) {
				SessionUtil.cartList.get(i).setQuantity(SessionUtil.cartList.get(i).getQuantity() + 1);
				return;
			}
		}
		if(dish.getQuantity() == 0) {
			dish.setQuantity(1);
		}
		SessionUtil.cartList.add(dish);
	}
	
	public int addToCart(int dishId) {
		try {
			Dish dish = _dishService.getFullDishInfoById(dishId);
			_addToCartProcess(dish);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}
	
	public Dish getFullDishInfoById(int dishId) {
		return _dishService.getFullDishInfoById(dishId);
	}
}
