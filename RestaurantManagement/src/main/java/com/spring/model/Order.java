package com.spring.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.Type;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "orders")
public class Order {
	
	@Id
	@Column(name = "order_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "order_status")
	private int status;
	
	@DateTimeFormat(pattern="dd/MM/yyyy HH:mm:ss") 
       @Type(type="org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@Column(name = "date_approve")
	private DateTime dateApprove;
	
	@DateTimeFormat(pattern="dd/MM/yyyy HH:mm:ss") 
        @Type(type="org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@Column(name = "date_delivery")
	private DateTime dateDelivery;
        
	@Column(name = "order_type")
	private int type;
	
        @Column(name = "delete_flag")
	private int delete_flag;
        
	@OneToMany(targetEntity=Dish.class, mappedBy="id", fetch=FetchType.EAGER)
	private List<Dish> listDish;
	
        
	@Column(name = "branch_id")
	private int branchId;
	
	@Column(name = "client_id")
	private int clientId;
	
	@Column(name = "delivery_address")
	private String deliveryAddress;
        
        @Transient
        private Branch branch;
        @Transient
        private Client client;

    public Order(int id, int status, DateTime dateApprove, DateTime dateDelivery, int type, String deliveryAddress, Branch branch, Client client, List<Dish> listDish) {
        this.id = id;
        this.status = status;
        this.dateApprove = dateApprove;
        this.dateDelivery = dateDelivery;
        this.type = type;
        this.listDish = listDish;
        this.deliveryAddress = deliveryAddress;
        this.branch = branch;
        this.client = client;
    }

    public Order(int status, DateTime dateApprove, DateTime dateDelivery, int type, int delete_flag, String deliveryAddress, int branch, int client) {
        this.status = status;
        this.dateApprove = dateApprove;
        this.dateDelivery = dateDelivery;
        this.type = type;
        this.delete_flag = delete_flag;
        this.deliveryAddress = deliveryAddress;
        this.branchId = branch;
        this.clientId = client;
    }




    public Order() {
    }

        public int getDelete_flag() {
            return delete_flag;
        }

        public void setDelete_flag(int delete_flag) {
            this.delete_flag = delete_flag;
        }

        
        public Branch getBranch() {
            return branch;
        }

        public Client getClient() {
            return client;
        }

        public void setBranch(Branch branch) {
            this.branch = branch;
        }

        public void setClient(Client client) {
            this.client = client;
        }

        
	public List<Dish> getListDish() {
		return listDish;
	}

	public void setListDish(List<Dish> listDish) {
		this.listDish = listDish;
	}

	public Order(int status, DateTime dateApprove, DateTime dateDelivery, 
			int type, int branchId, int clientId, String deliveryAddress) {
		this.status = status;
		this.dateApprove = dateApprove;
		this.dateDelivery = dateDelivery;
		this.type = type;
		this.branchId = branchId;
		this.clientId = clientId;
		this.deliveryAddress = deliveryAddress;
	}
	
	//o.order_id, o.date_delivery, o.delivery_address
	public Order(int orderId, DateTime dateDelivery, String deliveryAddress, int branchId) {
		this.id = orderId;
		this.dateDelivery = dateDelivery;
		this.deliveryAddress = deliveryAddress;
		this.branchId = branchId;
	}
	
//	public Order(DateTime dateApprove, DateTime dateDelivery) {
//		this.dateApprove = dateApprove;
//		this.dateDelivery = dateDelivery;	
//	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public DateTime getDateApprove() {
		return dateApprove;
	}

	public void setDateApprove(DateTime dateApprove) {
		this.dateApprove = dateApprove;
	}

	public DateTime getDateDelivery() {
		return dateDelivery;
	}

	public void setDateDelivery(DateTime dateDelivery) {
		this.dateDelivery = dateDelivery;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public int getClientId() {
		return clientId;
	}

	public void setClientId(int clientId) {
		this.clientId = clientId;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	
	
}
