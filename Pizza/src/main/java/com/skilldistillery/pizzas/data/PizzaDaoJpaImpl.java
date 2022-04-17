package com.skilldistillery.pizzas.data;

import java.util.List;

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
	public Pizza findById(int id) {
		return em.find(Pizza.class, id);
	}

	@Override
	public List<Pizza> findAll() {
		String jpql = "SELECT p FROM Pizza p";
		
		return em.createQuery(jpql, Pizza.class).getResultList();
		
	}

	@Override
	public Pizza create(Pizza pizza) {
		
		// start the transaction
		em.getTransaction().begin();

		// write the pizza to the database
		em.persist(pizza);
		
		// update the "local" Pizza object
		em.flush();
		
		// commit the changes (actually perform the operation)
		em.getTransaction().commit();

		em.close();
		return pizza;
		
	}

	@Override
	public Pizza update(int id, Pizza pizza) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean destroy(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
