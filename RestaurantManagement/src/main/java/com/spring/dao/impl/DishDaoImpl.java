package com.spring.dao.impl;

import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import com.spring.dao.AbstractDao;
import com.spring.dao.DishDao;
import com.spring.model.Dish;
import com.spring.util.SQLConstant;
import com.spring.util.SessionUtil;

@Repository("dishDao")
public class DishDaoImpl extends AbstractDao<Integer, Dish> implements DishDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getDishListByCategoryIdAndBranchId(int dishCategoryId, int branchId) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery(SQLConstant.SQL_GET_DISH_LIST_BY_CATEGORY_ID_AND_BRANCH_ID);
		query.setInteger("dish_category_id", dishCategoryId);
		query.setInteger("branch_id", branchId);
		List<Object[]> dishList = query.list();
		return dishList;
	}

	@Override
	public Dish getDishById(int id) {
		// TODO Auto-generated method stub
		return getByKey(id);
	}

	@Override
	public Object[] getFullDishInfoById(int dishId) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery(SQLConstant.SQL_GET_FULL_DISH_INFO_BY_DISH_ID_AND_BRANCH_ID);
		query.setInteger("dish_id", dishId);
		query.setInteger("branch_id", SessionUtil.branchId);
		Object[] dish = (Object[])query.uniqueResult();
		return dish;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getOrderedDishListByOrderId(int orderId) {
		// TODO Auto-generated method stub
		SQLQuery sqlQuery = getSession().createSQLQuery(SQLConstant.SQL_GET_ORDERED_DISH_LIST_BY_ORDER_ID);
		sqlQuery.setInteger("order_id", orderId);
		List<Object[]> listOrderedDish = sqlQuery.list();
		return listOrderedDish;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getBestDishSellerListByBranchId(int branchId) {
		// TODO Auto-generated method stub
		SQLQuery sqlQuery = getSession().createSQLQuery(SQLConstant.SQL_GET_BEST_DISH_SELLER_LIST_BY_BRANCH_ID);
		sqlQuery.setInteger("branch_id", branchId);
		List<Object[]> listBestDishSeller = sqlQuery.list();
		return listBestDishSeller;
	}

}
