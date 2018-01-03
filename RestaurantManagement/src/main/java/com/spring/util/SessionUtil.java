package com.spring.util;

import java.util.ArrayList;
import java.util.List;

import com.spring.model.Dish;

public class SessionUtil {
	
	public static String username;
	public static int branchId = 1000;
	public static String branchAddress;
	
	public static List<Dish> cartList = new ArrayList<>();
        public static List<Dish> _cartListhome = new ArrayList<>();
	
	public static int getTotalDishInOrder() {
		int total = 0;
		for(Dish dish : SessionUtil.cartList) {
			total += dish.getQuantity();
		}
		return total;
	}
}
