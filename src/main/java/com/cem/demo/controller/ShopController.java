package com.cem.demo.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cem.demo.model.Cart;
import com.cem.demo.model.Payment;
import com.cem.demo.model.Product;

@Controller
@RequestMapping(value = "/Shop")
public class ShopController {
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String showProducts() {
		return "shopping";

	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String showCart() {
		return "cart";

	}

	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public ModelAndView showPayment() {
		ModelAndView model = new ModelAndView();
		model.setViewName("payment");
		model.addObject("payment", new Payment());
		return model;

	}

	@RequestMapping(value = "/checkout", method = RequestMethod.POST, headers = "Accept=*/*", consumes = "application/json")
	public @ResponseBody String checkOut(@RequestBody Cart cart) {
		int total = cart.getTotal();
		int quantity = cart.getQuantity();
		List<Product> products = cart.getProductList();
		String name = products.get(0).getName();
		return name;
	}

}
