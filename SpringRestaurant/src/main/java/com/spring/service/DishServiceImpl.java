/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.service;

import com.spring.dao.DishDao;
import com.spring.model.Dish;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HOANG ANH
 */
@Service
public class DishServiceImpl implements DishService{

    @Autowired
    DishDao _dishDao;
    
    @Override
    public List<Dish> getListDishOnBranch(int id_branch) {
        List<Dish> listD = _dishDao.getListDishOnBranch(id_branch);
        return  listD;
    }
    
}
