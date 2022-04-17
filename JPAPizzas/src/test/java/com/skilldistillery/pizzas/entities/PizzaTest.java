package com.skilldistillery.pizzas.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PizzaTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Pizza pizza;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAPizzas");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		pizza = em.find(Pizza.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		pizza = null;
	}

	@Test
	void test_Pizza_entity_mapping() {
		assertNotNull(pizza);
		assertEquals("Pepperoni", pizza.getName());
		
	}

}
