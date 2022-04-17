package com.skilldistillery.pizzas.data;

import java.util.List;

import com.skilldistillery.pizzas.entities.Pizza;

public interface PizzaDAO {
	
	public Pizza findById(int id);
	public List<Pizza> findAll();
	
	
	public Pizza create(Pizza pizza);
	public Pizza update(int id, Pizza pizza);
	public boolean destroy(int id);
	

}
