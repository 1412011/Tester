/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.service;

import com.spring.model.Dish;
import java.util.List;

/**
 *
 * @author HOANG ANH
 */
public interface DishService {
    List<Dish> getListDishOnBranch(int id_branch);
}
