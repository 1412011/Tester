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

    @Override
    public List<Object[]> getDishListByBrandId(int BranchId) {
          String sql = "select * from dish where dish.dish_category_id in "
                  + "(select bm.dish_category_id from branch_menu bm where bm.branch_id = :idbranch)";
          SQLQuery query = getSession().createSQLQuery(sql);
          query.setInteger("idbranch", BranchId);
          List<Object[]> listDishOnBranch = query.list();
          return listDishOnBranch;
    }

    @Override
    public int getPriceByDishId(int id_dish, int id_branch) {
        String sql = "SELECT db.price FROM dish_price_branch db WHERE db.dish_id = :id_dish AND db.branch_id = :id_branch";
        SQLQuery query = getSession().createSQLQuery(sql);
        query.setInteger("id_dish", id_dish);
	query.setInteger("id_branch", id_branch);
	int price = (int)query.uniqueResult();
        return price;
    }

    @Override
    public List<Object[]> getListNameDishByBranch(int id_branch) {
        String sql = "select dish.dish_name from dish where dish.dish_category_id in "
                  + "(select bm.dish_category_id from branch_menu bm where bm.branch_id = :idbranch)";
          SQLQuery query = getSession().createSQLQuery(sql);
          query.setInteger("idbranch", id_branch);
          List<Object[]> listNameDish = query.list();
          return listNameDish; 
    }

    @Override
    public List<Object[]> getListDishForSearch(int id_branch, String key) {
             String sql = "select * from dish d where dish.dish_category_id in "
                  + "(select bm.dish_category_id from branch_menu bm where bm.branch_id = :idbranch)"
                  + "AND d.dish_name LIKE '%"+key+"%'";  
          SQLQuery query = getSession().createSQLQuery(sql);
          query.setInteger("idbranch", id_branch);
          List<Object[]> listDishOnSearch = query.list();
          return listDishOnSearch;
    }

    @Override
    public List<Object[]> getListDishByBranchAndOrder(int idorder) {
        String sql = "select d.dish_id, d.dish_name, od.amount "
                + "from dish d, order_dish od "
                + "where d.dish_id=od.dish_id and od.order_id=:idorder";
         SQLQuery query = getSession().createSQLQuery(sql);
         query.setInteger("idorder", idorder);
         List<Object[]> listDishOrder = query.list();
         return listDishOrder;
    }
    
    
    
}
