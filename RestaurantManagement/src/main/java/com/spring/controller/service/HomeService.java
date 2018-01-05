package com.spring.controller.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.util.MultiValueMap;

import com.spring.model.Branch;
import com.spring.model.Client;
import com.spring.model.Dish;
import com.spring.model.DishCategory;
import com.spring.model.Order;
import com.spring.model.OrderDish;
import com.spring.model.User;
import com.spring.model.UserRole;
import com.spring.service.BranchService;
import com.spring.service.ClientService;
import com.spring.service.DishService;
import com.spring.service.OrderDishService;
import com.spring.service.OrderService;
import com.spring.service.UserRoleService;
import com.spring.service.UserService;
import com.spring.util.SessionUtil;
import java.util.Date;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;


public class HomeService {
	@Autowired
	private BranchService _branchService;
	@Autowired
	private DishService _dishService;
	@Autowired
	private ClientService _clientService;
	@Autowired
	private UserService _userService;
	@Autowired
	private UserRoleService _userRoleService;
	@Autowired
	private PasswordEncoder _passwordEncoder;
	@Autowired
        private OrderService _orderService;
        @Autowired
        private OrderDishService _orderDishService;
        
	public List<Branch> getAllBranch(String addressInput) {
		List<Branch> branches = _branchService.getAllBranch();
		List<Branch> result = new ArrayList<>();

		for (Branch branch : branches) {
			if (branch.getAddress().contains(addressInput)) {
				result.add(branch);
			}
		}

		return result;
	}
	public List<Branch> getallbranchhome()
        {
            List<Branch> branches = _branchService.getAllBranch();
            return branches;
        }
	public List<DishCategory> getAllCategoryAndDishByBranchId(int branchId) {
		SessionUtil.branchAddress = _branchService.getBranchById(branchId).getAddress();
		List<DishCategory> dishCategoryList = _branchService.getDishCategoryListByBranchId(branchId);
		
		//System.out.println(dishCategoryList.size());
		for(DishCategory dishCategory : dishCategoryList) {
			List<Dish> dishList = _dishService.getDishListByCategoryIdAndBranchId(dishCategory.getId(), branchId);
			dishCategory.setDishList(dishList);

		}
		return dishCategoryList;
	}
	
	public int registerAccount(Map<String, String> registerInfo) {
		String name = String.valueOf(registerInfo.get("name"));
		String phoneNumber = String.valueOf(registerInfo.get("phoneNumber"));
		String address = String.valueOf(registerInfo.get("address"));
		
		String username = String.valueOf(registerInfo.get("username"));
		String password = String.valueOf(registerInfo.get("password"));
		
		//System.out.println("password: " + password);
		User user = new User(username, _passwordEncoder.encode(password), true);
		//System.out.println("password encode: " + _passwordEncoder.encode(password));
		try {
			_userService.saveUser(user);
			UserRole userRole = new UserRole(user, "ROLE_CLIENT");
			_userRoleService.saveUserRole(userRole);
			
			Client client = new Client(name, phoneNumber, address, user.getUsername());
			_clientService.saveClient(client);
			
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		
		return 1;
	}
	
	public Dish getDishByDishObj(MultiValueMap<String, String> dishObj) {
		int dishId = Integer.valueOf(dishObj.getFirst("dishId"));
		Dish dish = _dishService.getDishById(dishId);
		
		return dish;
	}
	
	public List<Dish> getBestDishSellerList() {
		List<Dish> listBestDishSeller = _dishService.getBestDishSellerListByBranchId(SessionUtil.branchId);
		return listBestDishSeller;
	}
	
	public void setDefaultContentPage() {
		
	}
        
        public List<Dish> getDishList_ON_Branch(int idbranch)
        {
            List<Dish> listDishOnBranch = _dishService.getListDishOnBranch(idbranch);
            return listDishOnBranch;
        }
        public List<Dish> getListDishSearch(int idbranch, String key)
        {
            List<Dish> DishSearch = _dishService.getListDishSearch(idbranch, key);
            return DishSearch;
        }
         public void init()
         {
             Dish dish = _dishService.getFullDishInfoById(1000);
             SessionUtil._cartListhome.add(dish);
         }
       
         private void _addToCartProcessHome(Dish dish) {
		for (int i = 0; i < SessionUtil._cartListhome.size(); i++) {
			if (SessionUtil._cartListhome.get(i).getId() == dish.getId()) {
				SessionUtil._cartListhome.get(i).setQuantity(SessionUtil._cartListhome.get(i).getQuantity() + 1);
				return;
			}
		}
		if(dish.getQuantity() == 0) {
			dish.setQuantity(1);
		}
		SessionUtil._cartListhome.add(dish);
	}
	
	public int addToCartHome(int dishId) {
		try {
			Dish dish = _dishService.getFullDishInfoById(dishId);
			_addToCartProcessHome(dish);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}
        
	public int getToTalPriceOnCart()
        {
            int total = 0;
            for(Dish dish:SessionUtil._cartListhome)
            {
                total = total + (dish.getPrice()*dish.getQuantity());
            }
            return total;
        }
        
        public void updateToCartSession(Map<String, String> dishMap) {
		int dishId = Integer.valueOf(dishMap.get("dishId"));
		int dishQuantity = Integer.valueOf(dishMap.get("dishQuantity"));
		int dishIndex = -1;
                System.out.println(dishQuantity);
                System.out.println(dishId);
		for (int i = 0; i < SessionUtil._cartListhome.size(); i++)
                {
                    if (SessionUtil._cartListhome.get(i).getId() == dishId)
                        {
                            	if (dishQuantity > 0)
                                    SessionUtil._cartListhome.get(i).setQuantity(dishQuantity);
                                else
                                     SessionUtil._cartListhome.remove(i);
                                return;
                        }
                }
	}
        
        public String toJavascriptArray(List<Dish> array){

            String s="";
            s+="[";
            for(int i=0; i<array.size(); i++){
                s+="\""; 
                s+=array.get(i).getName(); 
                s+="\"";
                if(i+1 < array.size()){
                    s+=",";
                }
            }
            s+="]";
            return s;
        }
        
        public String getCurrentDate()
        {
            Date dt = new Date();

            java.text.SimpleDateFormat sdf = 
                 new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            return sdf.format(dt);
        }
        
        public void SaveOrder(int type)
        {
            int statushome = 4; // finish
            int statushere = 2; // Cooking
            
            String date = getCurrentDate();
            int orderType = 0 ;// at table - finish
            int delete = 0;
            int branchId = SessionUtil.branchId;
            int clientId = 1000; //defauls because dont hava info client
            String address = "null";
            
            Order ordernew;
            if(type == 1)
            {
                ordernew=new Order(statushome,DateTime.now(DateTimeZone.UTC),DateTime.now(DateTimeZone.UTC),orderType,delete,address,branchId,clientId);
            }else
            {
                ordernew=new Order(statushere,DateTime.now(),DateTime.now(),orderType,delete,address,branchId,clientId);
            }
            int key = _orderService.InsertOrder(ordernew);

            for(int i=0;i<SessionUtil._cartListhome.size();i++)
            {
                OrderDish od = new OrderDish(key,SessionUtil._cartListhome.get(i).getId() , SessionUtil._cartListhome.get(i).getQuantity());

                _orderDishService.saveOrderDish(od);
            }
        }
}
