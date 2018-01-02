package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "dish")
public class Dish {
	@Id
	@Column(name = "dish_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "dish_name")
	private String name;
	
	@Column(name = "dish_description")
	private String description;
	
	@Column(name = "dish_image")
	private String image;
	
	@Column(name = "dish_category_id")
	private int category_id;
	
	@Transient
	private int price;
	
	@Transient
	private int quantity = 0;
	
	@Transient
	private int branchId = 0;
	
	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public Dish() {
		
	}
	
	public Dish(int id, String name, String description, String image, int categoryId, int price) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.image = image;
		this.category_id = categoryId;
		this.price = price;
	}
	
	public Dish(int id, String name, int price, int quantity) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}
	
//	"select d.dish_id, d.dish_name, d.dish_image, " +
//	"dPrBr.price, orD.amount
	public Dish(int id, String name, String image, int price, int quantity, int branchId) {
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.quantity = quantity;
		this.branchId = branchId;
	}
	
	//d.dish_id, d.dish_name, d.dish_image, orD.amount, dPrBr.price
	public Dish(int id, String name, String image, int price) {
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}



	
	
	
}
