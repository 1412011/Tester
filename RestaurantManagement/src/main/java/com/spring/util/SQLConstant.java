package com.spring.util;

public class SQLConstant {
	public static String SQL_GET_DISH_CATEGORY_LIST_BY_BRANCH_ID = 
			"select dCat.dish_category_id, dCat.dish_category_name from branch br, branch_menu brMn, dish_category dCat " +
			"where br.branch_id = brMn.branch_id and brMn.dish_category_id = dCat.dish_category_id " +
			"and br.branch_id = :branch_id";
	
	public static String SQL_GET_DISH_LIST_BY_CATEGORY_ID_AND_BRANCH_ID = 	
			"select d.dish_id, d.dish_name, d.dish_description, d.dish_image, d.dish_category_id, dPrBr.price from branch_menu brMn, dish d, dish_category dCat," +
			" dish_price_branch dPrBr, branch br " +
			"where brMn.dish_category_id = d.dish_category_id and d.dish_category_id = dCat.dish_category_id " +
			"and d.dish_id = dPrBr.dish_id and dCat.dish_category_id = :dish_category_id and br.branch_id = :branch_id " +
			"group by d.dish_id";
	
	public static String SQL_GET_FULL_DISH_INFO_BY_DISH_ID_AND_BRANCH_ID = 
			"select d.dish_id, d.dish_name, d.dish_description, d.dish_image, d.dish_category_id, dPrBr.price from branch_menu brMn, dish d, dish_category dCat," +
			" dish_price_branch dPrBr, branch br " +
			"where brMn.dish_category_id = d.dish_category_id and d.dish_category_id = dCat.dish_category_id " +
			"and br.branch_id = dPrBr.branch_id " +
			"and d.dish_id = dPrBr.dish_id and d.dish_id = :dish_id and br.branch_id = :branch_id " +
			"group by d.dish_id";
	
	public static String GET_ORDERED_LIST_BY_USER_NAME = "select o.order_id, o.date_delivery, o.delivery_address, o.branch_id " +
			"from orders o, client c where o.client_id = c.client_id and c.username = :username " +
			"and o.order_status = 4 and ( o.order_type = 1 or o.order_type = 2 ) ";
	
	public static String SQL_GET_ORDERED_DISH_LIST_BY_ORDER_ID = "select d.dish_id, d.dish_name, d.dish_image, " +
			"dPrBr.price, orD.amount, dPrBr.branch_id from dish d, orders o, order_dish orD, " +
			"dish_price_branch dPrBr where d.dish_id = orD.dish_id and o.order_id = orD.order_id " +
			"and o.branch_id = dPrBr.branch_id and dPrBr.dish_id = d.dish_id and o.order_id = :order_id";
	
	public static String SQL_GET_BEST_DISH_SELLER_LIST_BY_BRANCH_ID = "select d.dish_id, d.dish_name, d.dish_image, orD.amount, dPrBr.price "
			+ "from orders o, order_dish orD, dish d, dish_price_branch dPrBr where o.order_id = orD.order_id and "
			+ "orD.dish_id = d.dish_id and o.order_status = 4 and o.branch_id = dPrBr.branch_id and "
			+ "d.dish_id = dPrBr.dish_id and dPrBr.branch_id = :branch_id "
			+ "group by d.dish_id order by orD.amount desc limit 5";
	
	public static String SQL_GET_CLIENT_BY_USERNAME = "select * from client c where c.username = :username";
}
