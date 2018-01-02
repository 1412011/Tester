package com.spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.controller.service.HomeService;
import com.spring.model.Branch;
import com.spring.model.Dish;
import com.spring.model.DishCategory;
import com.spring.util.SessionUtil;

@Controller
public class HomeController extends HomeService {
	
	@RequestMapping(value = { "/", "/welcome**"}, method = RequestMethod.GET)
	public String loadHomePage(ModelMap modelMap) {
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//	    String username = auth.getName();
//	    if(!username.equals("anonymousUser")) {
//	    	SessionUtil.username = username;
//	    } else {
//	    	SessionUtil.username = "";
//		}
//	    
//	    if(SessionUtil.branchId != -1) {
//	    	List<Dish> listBestDishSeller = getBestDishSellerList(); 
//	    	List<DishCategory> dishCategoryList = getAllCategoryAndDishByBranchId(SessionUtil.branchId);
//	    	
//		    modelMap.addAttribute("listBestDishSeller", listBestDishSeller);
//		    modelMap.addAttribute("dishCategoryList", dishCategoryList);
//			modelMap.addAttribute("branchAddress", SessionUtil.branchAddress);
//			modelMap.addAttribute("total", SessionUtil.getTotalDishInOrder());
//	    }
	    //if(SessionUtil.branchId != -1)
            {
                List<Dish> listDishOnBranch = getDishList_ON_Branch(1000);
                modelMap.addAttribute("listDishOnBranch", listDishOnBranch);
            }

		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String getPages(ModelMap modelMap, @RequestParam("branchId") String branchId) {
		//System.out.println("post");
		int iBranchId = Integer.valueOf(branchId);
		//SessionUtil.storeBranchInfo(iBranchId);
		SessionUtil.branchId = iBranchId;
		if(iBranchId != SessionUtil.branchId) {
			SessionUtil.cartList = new ArrayList<>();
		}
		//List<DishCategory> dishCategoryList = getAllCategoryAndDishByBranchId(iBranchId);

//		List<Dish> listBestDishSeller = getBestDishSellerList(); 
//		//System.out.println(SessionUtil.branchAddress);
//		modelMap.addAttribute("dishCategoryList", dishCategoryList);
//		modelMap.addAttribute("branchAddress", SessionUtil.branchAddress);
//		
//	    modelMap.addAttribute("listBestDishSeller", listBestDishSeller);
		
		return "redirect:/";
	}

	@ResponseBody
	@RequestMapping(value = "/getBranch", method = RequestMethod.GET)
	public List<Branch> getBranch(@RequestParam("tagName") String addressInput) {
		//System.out.println(addressInput);
		return getAllBranch(addressInput);
	}
	
	@ResponseBody
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public Map<String, String> register(@RequestBody Map<String, String> registerInfo, ModelMap modelMap) {
		Map<String, String> hmResult = new HashMap<>();
		String result = "error";
		
		int registerResult = registerAccount(registerInfo);
		if(registerResult == 1) {
			result = "success";
		}
		
		hmResult.put("result", result);
		return hmResult;
	}
	
	private String _getErrorMessage(HttpServletRequest request, String key) {
		Exception exception = (Exception) request.getSession().getAttribute(key);
		
		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Invalid username and password";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			error = "Invalid username and password";
		}
		
		return error;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error
			, @RequestParam(value = "logout", required = false) String logout
			, HttpServletRequest request, ModelMap modelMap) {
		if (error != null) {
			modelMap.addAttribute("error", _getErrorMessage(request
					, "SPRING_SECURITY_LAST_EXCEPTION"));
		}
		
		if (logout != null) {
			modelMap.addAttribute("msg", "you've been logged out successfully");
			
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		    String username = auth.getName();
		    if(!username.equals("anonymousUser")) {
		    	SessionUtil.username = username;
		    } else {
		    	SessionUtil.username = "";
			}
		    
		    if(SessionUtil.branchId != -1) {
		    	List<Dish> listBestDishSeller = getBestDishSellerList(); 
		    	List<DishCategory> dishCategoryList = getAllCategoryAndDishByBranchId(SessionUtil.branchId);
		    	
			    modelMap.addAttribute("listBestDishSeller", listBestDishSeller);
			    modelMap.addAttribute("dishCategoryList", dishCategoryList);
				modelMap.addAttribute("branchAddress", SessionUtil.branchAddress);
		    }
		    
		    SessionUtil.cartList = new ArrayList<>();
		}
		
		return "home/home";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String loadAboutPage(ModelMap modelMap) {
		modelMap.addAttribute("ok", "ok");
		return "about/about";
	}
	
}
