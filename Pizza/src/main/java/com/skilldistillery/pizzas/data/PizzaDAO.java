package com.skilldistillery.pizzas.data;

import com.skilldistillery.pizzas.entities.Pizza;

public interface PizzaDAO {
	
	Pizza findById(int pizzaId);

}
