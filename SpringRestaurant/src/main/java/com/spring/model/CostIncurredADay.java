package com.spring.model;
// Generated Dec 31, 2017 2:05:26 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * CostIncurredADay generated by hbm2java
 */
public class CostIncurredADay  implements java.io.Serializable {


     private Integer costIncurredADayId;
     private Branch branch;
     private String description;
     private Date date;
     private int cost;

    public CostIncurredADay() {
    }

    public CostIncurredADay(Branch branch, String description, Date date, int cost) {
       this.branch = branch;
       this.description = description;
       this.date = date;
       this.cost = cost;
    }
   
    public Integer getCostIncurredADayId() {
        return this.costIncurredADayId;
    }
    
    public void setCostIncurredADayId(Integer costIncurredADayId) {
        this.costIncurredADayId = costIncurredADayId;
    }
    public Branch getBranch() {
        return this.branch;
    }
    
    public void setBranch(Branch branch) {
        this.branch = branch;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    public int getCost() {
        return this.cost;
    }
    
    public void setCost(int cost) {
        this.cost = cost;
    }




}

