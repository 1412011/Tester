package com.spring.service;

import java.util.List;

import com.spring.model.Branch;
import com.spring.model.DishCategory;

public interface BranchService {

	List<Branch> getAllBranch();
	List<DishCategory> getDishCategoryListByBranchId(int branchId);
	Branch getBranchById(int branchId);
}
