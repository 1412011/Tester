package com.spring.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "dish_category")
public class DishCategory {
	
	@Id
	@Column(name = "dish_category_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "dish_category_name")
	private String name;
	
	@OneToMany(targetEntity=Dish.class, mappedBy="id", fetch=FetchType.EAGER)
	private List<Dish> dishList;
	
	public DishCategory(int id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public List<Dish> getDishList() {
		return dishList;
	}
	
	public void setDishList(List<Dish> dishList) {
		this.dishList = dishList;
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

	
}
