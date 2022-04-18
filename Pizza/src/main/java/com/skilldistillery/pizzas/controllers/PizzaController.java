package com.skilldistillery.pizzas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.pizzas.data.PizzaDAO;
import com.skilldistillery.pizzas.entities.Pizza;

@Controller
public class PizzaController {
	
	@Autowired
	private PizzaDAO dao;
	
//	@RequestMapping(path= {"/", "home.do"})
//	public String home(Model model) {
//		model.addAttribute("DEBUG",dao.findById(1));
//		return "home";
//	}
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		List<Pizza> pizzas = dao.findAll();
		model.addAttribute("pizzas", pizzas);
	   return "home"; // using a ViewResolver.
	}
	
	@RequestMapping(path= {"listAll.do"})
	public String listAll(Model model) {
		List<Pizza> pizzas = dao.findAll();
		model.addAttribute("pizzas", pizzas);
		return "pizza/result"; // using a ViewResolver.
	}
	
	@RequestMapping(path = "findById.do", params = "id")
	public String findById(@RequestParam("id") int id, Model model) {
		Pizza pizza = dao.findById(id);
		model.addAttribute("pizza", pizza);
		return "pizza/result"; // using a ViewResolver.
	}

	
	@RequestMapping(path = "create.do", method = RequestMethod.POST)
	public String create(Pizza pizza, Model model) {
		Pizza newPizza = dao.create(pizza);
		model.addAttribute("pizza", newPizza);
		return "pizza/result";
	}
	
	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public String update(Pizza pizza, Model model) {
		Pizza updatePizza = dao.update(pizza.getId(),pizza);
		model.addAttribute("pizza", updatePizza);
		return "pizza/result";
	}
	
	@RequestMapping(path = "goToUpdate.do", method = RequestMethod.POST)
	public String goToUpdate(int pizzaId, Model model) {
		Pizza pizza = dao.findById(pizzaId);
		model.addAttribute("pizza", pizza);
		return "pizza/update";
	}
	
	@RequestMapping(path = "destroy.do", method = RequestMethod.POST)
	public String destroy(int id, Model model) {
//		Pizza newPizza = dao.create(pizza);
//		model.addAttribute("pizza", newPizza);
		
		boolean success = dao.destroy(id);
		
		if (success) {
			return "pizza/delete/success";
		} else {
			return "pizza/delete/error";
		}
	}
	


}
