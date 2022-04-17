package com.skilldistillery.pizzas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(path = "create.do", method = RequestMethod.POST)
	public ModelAndView create(Pizza pizza) {
		ModelAndView mv = new ModelAndView();
		Pizza newPizza = dao.create(pizza);
		mv.addObject("pizza", newPizza);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;

	}
	


}
