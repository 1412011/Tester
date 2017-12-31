/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

/**
 *
 * @author HOANG ANH
 */

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HomeController {
    
//    @Autowired
//    DishService _dishService;
    
    @RequestMapping(value="/", method = RequestMethod.GET)
    public String welcomeHome(Model model, HttpServletRequest request)
    {
//        List<Dish> listDishOnBranch = _dishService.getDishOnBranch(1001);
//       request.getSession().setAttribute("ListDishOnBranch", listDishOnBranch);
        return "home";
    }
    
}
