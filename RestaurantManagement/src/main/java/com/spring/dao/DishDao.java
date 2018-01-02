package com.spring.dao;

import java.util.List;

import com.spring.model.Dish;

public interface DishDao {
	Dish getDishById(int id);
	List<Object[]> getDishListByCategoryIdAndBranchId(int dishCategoryId, int branchId);
	
	Object[] getFullDishInfoById(int dishId);
	List<Object[]> getOrderedDishListByOrderId(int orderId);
	List<Object[]> getBestDishSellerListByBranchId(int branchId);
        //
        List<Object[]> getDishListByBrandId(int BranchId);
        int getPriceByDishId(int id_dish, int id_branch);
}
