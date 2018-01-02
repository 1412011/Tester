package com.spring.dao;

import java.util.List;

import com.spring.model.Branch;

public interface BranchDao {

	List<Branch> getAllBranch();
	
	List<Object[]> getDishCategoryListByBranchId(int branchId);
	
	Branch getBranchById(int branchId);
}
