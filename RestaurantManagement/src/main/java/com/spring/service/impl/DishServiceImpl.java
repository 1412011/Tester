package com.spring.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.DishDao;
import com.spring.model.Dish;
import com.spring.service.DishService;

@Service("dishService")
@Transactional
public class DishServiceImpl implements DishService {
	
	@Autowired
	private DishDao _dishDao;
	

	private List<Dish> _renderToDishList(List<Object[]> dishObjList) {
		List<Dish> dishList = new ArrayList<>();
		for(Object[] dishObj : dishObjList) {
			int dishId = Integer.parseInt(String.valueOf(dishObj[0]));
			String dishName = String.valueOf(dishObj[1]);
			String dishDescription = String.valueOf(dishObj[2]);
			String dishImage = String.valueOf(dishObj[3]);
			int dishCategoryId = Integer.parseInt(String.valueOf(dishObj[4]));
			int dishPrice = Integer.parseInt(String.valueOf(dishObj[5]));
			
			dishList.add(new Dish(dishId, dishName, dishDescription, dishImage, dishCategoryId, dishPrice));
		}
		return dishList;
	}
	
	private Dish _renderObjToDish(Object[] dishObj) {
		int dishId = Integer.parseInt(String.valueOf(dishObj[0]));
		String dishName = String.valueOf(dishObj[1]);
		String dishDescription = String.valueOf(dishObj[2]);
		String dishImage = String.valueOf(dishObj[3]);
		int dishCategoryId = Integer.parseInt(String.valueOf(dishObj[4]));
		int dishPrice = Integer.parseInt(String.valueOf(dishObj[5]));
		
		return new Dish(dishId, dishName, dishDescription, dishImage, dishCategoryId, dishPrice);
	}

	@Override
	public List<Dish> getDishListByCategoryIdAndBranchId(int dishCategoryId, int branchId) {
		// TODO Auto-generated method stub
		List<Object[]> dishList = _dishDao.getDishListByCategoryIdAndBranchId(dishCategoryId, branchId);
		return _renderToDishList(dishList);
	}

	@Override
	public Dish getDishById(int id) {
		// TODO Auto-generated method stub
		return _dishDao.getDishById(id);
	}

	@Override
	public Dish getFullDishInfoById(int dishId) {
		// TODO Auto-generated method stub
		Object[] dishObj = _dishDao.getFullDishInfoById(dishId);
		Dish dish = _renderObjToDish(dishObj);
		return dish;
	}
	
	public List<Dish> _convertToOrderedDishList(List<Object[]> listOrderedDishObj) {
		List<Dish> listOrderedDish = new ArrayList<>();
		for(Object[] orderedDishObj : listOrderedDishObj) {
//			"select d.dish_id, d.dish_name, d.dish_image, " +
//					"dPrBr.price, orD.amount
			int dishId = Integer.valueOf(String.valueOf(orderedDishObj[0]));
			String dishName = String.valueOf(orderedDishObj[1]);
			String dishImage = String.valueOf(orderedDishObj[2]);
			int dishPrice = Integer.valueOf(String.valueOf(orderedDishObj[3]));
			int dishQuantity = Integer.valueOf(String.valueOf(orderedDishObj[4]));
			int branchId = Integer.valueOf(String.valueOf(orderedDishObj[5]));
			Dish dish = new Dish(dishId, dishName, dishImage, dishPrice, dishQuantity, branchId);
			listOrderedDish.add(dish);
		}
		return listOrderedDish;
	}

	@Override
	public List<Dish> getOrderedDishListByOrderId(int orderId) {
		// TODO Auto-generated method stub
		List<Object[]> listOrderedDishObj = _dishDao.getOrderedDishListByOrderId(orderId);
		List<Dish> listOrderedDish = _convertToOrderedDishList(listOrderedDishObj);
		return listOrderedDish;
	}
	
	private List<Dish> _convertToBestDishSeller(List<Object[]> listBestDishSellerObj) {
		List<Dish> listBestDishSeller = new ArrayList<>();
		for(Object[] dishObj : listBestDishSellerObj) {
			 //d.dish_id, d.dish_name, d.dish_image, orD.amount, dPrBr.price
			int dishId = Integer.valueOf(String.valueOf(dishObj[0]));
			String dishName = String.valueOf(dishObj[1]);
			String dishImage = String.valueOf(dishObj[2]);
			int dishPrice = Integer.valueOf(String.valueOf(dishObj[4]));
			Dish dish = new Dish(dishId, dishName, dishImage, dishPrice);
			listBestDishSeller.add(dish);
		}
		return listBestDishSeller;
	}

	@Override
	public List<Dish> getBestDishSellerListByBranchId(int branchId) {
		// TODO Auto-generated method stub
		List<Object[]> listBestDishSellerObj = _dishDao.getBestDishSellerListByBranchId(branchId);
		List<Dish> listBestDishSeller = _convertToBestDishSeller(listBestDishSellerObj);
		return listBestDishSeller;
	}

    @Override
    public List<Dish> getListDishOnBranch(int branch_id) {
        List<Object[]> listDish = _dishDao.getDishListByBrandId(branch_id);
        List<Dish> listDishOnBranch = new ArrayList<>();
        for(Object[] dishObj: listDish)
        {
                int dishId = Integer.parseInt(String.valueOf(dishObj[0]));
		String dishName = String.valueOf(dishObj[1]);
		String dishDescription = String.valueOf(dishObj[2]);
		String dishImage = String.valueOf(dishObj[3]);
		int dishCategoryId = Integer.parseInt(String.valueOf(dishObj[4]));
		int dishPrice = _dishDao.getPriceByDishId(dishId, branch_id);
                
                Dish dish = new Dish(dishId,dishName,dishDescription,dishImage,dishCategoryId,dishPrice);
                listDishOnBranch.add(dish);
        }
        
        return listDishOnBranch;
    }

}
