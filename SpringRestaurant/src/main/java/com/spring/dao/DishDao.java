/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao;
import com.spring.model.*;
import java.util.List;
/**
 *
 * @author HOANG ANH
 */
public interface DishDao {
    List<Dish> getListDishOnBranch(int id_branch);
            
}
