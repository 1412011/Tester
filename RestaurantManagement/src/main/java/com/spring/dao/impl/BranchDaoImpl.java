package com.spring.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import com.spring.dao.AbstractDao;
import com.spring.dao.BranchDao;
import com.spring.model.Branch;
import com.spring.util.SQLConstant;

@Repository("branchDao")
public class BranchDaoImpl extends AbstractDao<Integer, Branch> implements BranchDao{

	
	@SuppressWarnings("unchecked")
	public List<Branch> getAllBranch() {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria();
		return (List<Branch>) criteria.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getDishCategoryListByBranchId(int branchId) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery(SQLConstant.SQL_GET_DISH_CATEGORY_LIST_BY_BRANCH_ID);
		query.setInteger("branch_id", branchId);
		List<Object[]> dishCategoryList = query.list();
		return dishCategoryList;
	}

	@Override
	public Branch getBranchById(int branchId) {
		// TODO Auto-generated method stub
		return getByKey(branchId);
	}
	
	
}
