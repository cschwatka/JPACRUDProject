package com.skilldistillery.pizzas.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pizzas.entities.Pizza;

@Service
@Transactional
public class PizzaDaoJpaImpl implements PizzaDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Pizza findById(int pizzaId) {
		return em.find(Pizza.class, pizzaId);
	}

}
