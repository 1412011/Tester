package com.spring.model;
// Generated Dec 31, 2017 2:05:26 PM by Hibernate Tools 4.3.1



/**
 * BranchMenu generated by hbm2java
 */
public class BranchMenu  implements java.io.Serializable {


     private Integer branchMenuId;
     private Branch branch;
     private DishCategory dishCategory;

    public BranchMenu() {
    }

    public BranchMenu(Branch branch, DishCategory dishCategory) {
       this.branch = branch;
       this.dishCategory = dishCategory;
    }
   
    public Integer getBranchMenuId() {
        return this.branchMenuId;
    }
    
    public void setBranchMenuId(Integer branchMenuId) {
        this.branchMenuId = branchMenuId;
    }
    public Branch getBranch() {
        return this.branch;
    }
    
    public void setBranch(Branch branch) {
        this.branch = branch;
    }
    public DishCategory getDishCategory() {
        return this.dishCategory;
    }
    
    public void setDishCategory(DishCategory dishCategory) {
        this.dishCategory = dishCategory;
    }




}

