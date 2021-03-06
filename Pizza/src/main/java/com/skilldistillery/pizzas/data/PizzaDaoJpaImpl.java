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
		em.persist(pizza);
		return pizza;
		
	}

	@Override
	public Pizza update(int id, Pizza pizza) {
		Pizza managed = em.find(Pizza.class, id); //refactor with  merge if have time
		managed.setName(pizza.getName());
		managed.setDescription(pizza.getDescription());
		managed.setSize(pizza.getSize());
		managed.setCrust(pizza.getCrust());
		managed.setCheese(pizza.getCheese());
		managed.setMeat(pizza.getMeat());
		managed.setVegetable(pizza.getVegetable());
		return managed;
	}

	@Override
	public boolean destroy(int id) {
		boolean successDestroy = false;
		Pizza p = em.find(Pizza.class, id);
		
		if (p != null) {
			em.remove(p); // performs the delete on the managed entity
			successDestroy = !em.contains(p); // confirm destroyed
		}
		return successDestroy;

	}

}
