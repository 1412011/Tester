package com.spring.model;
// Generated Dec 31, 2017 2:05:26 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * QuantityOfVisit generated by hbm2java
 */
public class QuantityOfVisit  implements java.io.Serializable {


     private Integer quantityOfVisitId;
     private Date date;

    public QuantityOfVisit() {
    }

    public QuantityOfVisit(Date date) {
       this.date = date;
    }
   
    public Integer getQuantityOfVisitId() {
        return this.quantityOfVisitId;
    }
    
    public void setQuantityOfVisitId(Integer quantityOfVisitId) {
        this.quantityOfVisitId = quantityOfVisitId;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }




}

