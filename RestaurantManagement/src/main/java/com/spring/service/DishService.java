package com.spring.service;

import java.util.List;

import com.spring.model.Dish;

public interface DishService {
	Dish getDishById(int id);
	List<Dish> getDishListByCategoryIdAndBranchId(int dishCategoryId, int branchId);
	Dish getFullDishInfoById(int dishId);
	List<Dish> getOrderedDishListByOrderId(int orderId);
	List<Dish> getBestDishSellerListByBranchId(int branchId);
        List<Dish> getListDishOnBranch(int branch_id);
}
