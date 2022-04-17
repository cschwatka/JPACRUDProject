package com.skilldistillery.pizzas.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pizza {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String description;
	private String size;
	private String crust;
	private String cheese;
	private String meat;
	private String vegetable;
	
	
	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getSize() {
		return size;
	}


	public void setSize(String size) {
		this.size = size;
	}


	public String getCrust() {
		return crust;
	}


	public void setCrust(String crust) {
		this.crust = crust;
	}


	public String getCheese() {
		return cheese;
	}


	public void setCheese(String cheese) {
		this.cheese = cheese;
	}


	public String getMeat() {
		return meat;
	}


	public void setMeat(String meat) {
		this.meat = meat;
	}


	public String getVegetable() {
		return vegetable;
	}


	public void setVegetable(String vegetable) {
		this.vegetable = vegetable;
	}


	public Pizza() {
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


	@Override
	public String toString() {
		return "Pizza [id=" + id + ", name=" + name + ", description=" + description + ", size=" + size + ", crust="
				+ crust + ", cheese=" + cheese + ", meat=" + meat + ", vegetable=" + vegetable + "]";
	}
	
	
	

}
