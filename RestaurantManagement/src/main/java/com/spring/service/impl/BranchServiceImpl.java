package com.spring.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.BranchDao;
import com.spring.model.Branch;
import com.spring.model.DishCategory;
import com.spring.service.BranchService;

@Service("branchService")
@Transactional
public class BranchServiceImpl implements BranchService {

	@Autowired
	private BranchDao _branchDao;

	public List<Branch> getAllBranch() {
		// TODO Auto-generated method stub
		return _branchDao.getAllBranch();
	}

	private List<DishCategory> _renderToDishCategoryList(List<Object[]> dishCategoryObjList) {
		List<DishCategory> dishCategoryList = new ArrayList<>();
		for(Object[] dishCategoryObj : dishCategoryObjList) {
			int dishCategoryId = Integer.parseInt(String.valueOf(dishCategoryObj[0]));
			String dishCategoryName = String.valueOf(dishCategoryObj[1]);
			dishCategoryList.add(new DishCategory(dishCategoryId, dishCategoryName));
		}
		return dishCategoryList;
	}

	@Override
	public List<DishCategory> getDishCategoryListByBranchId(int branchId) {
		// TODO Auto-generated method stub
		List<Object[]> dishCategoryObjList = _branchDao.getDishCategoryListByBranchId(branchId);
		return _renderToDishCategoryList(dishCategoryObjList);
	}

	@Override
	public Branch getBranchById(int branchId) {
		// TODO Auto-generated method stub
		return _branchDao.getBranchById(branchId);
	}

	
	
}
