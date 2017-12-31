/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao;

import com.spring.model.Dish;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HOANG ANH
 */
@Repository
public class DishDaoImpl extends AbstractDao<Integer, Dish> implements DishDao{

    @Override
    public List<Dish> getListDishOnBranch(int id_branch) {
//        String hql = "FROM Dish d WHERE d.dishCategory.dishCategoryId IN "
//                + "(SELECT FROM BranchMenu b WHERE b.branch.)";
            String hql = "from Dish";
            Query query = getSession().createQuery(hql);
            List<Dish> listDish = new ArrayList<Dish>();
            listDish = query.list();
            return listDish;
    }
    
}
