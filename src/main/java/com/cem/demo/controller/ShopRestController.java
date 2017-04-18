package com.cem.demo.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cem.demo.model.Cart;
import com.cem.demo.model.Payment;
import com.cem.demo.model.Product;
import com.cem.demo.repositories.CartRepository;

@RestController
@RequestMapping(value = "/Shop")
public class ShopRestController {
	private static final Logger logger = LoggerFactory.getLogger(ShopRestController.class);
	@Autowired
	CartRepository repository;

//	@RequestMapping(value = "/checkout", method = RequestMethod.POST, headers = "Accept=*/*", consumes = "application/json")
//	public @ResponseBody ModelAndView checkOut(@RequestBody Cart cart) {
//		int total = cart.getTotal();
//		int quantity = cart.getQuantity();
//		List<Product> products = cart.getProductList();
//		String name = products.get(0).getName();
//		ModelAndView model = new ModelAndView();
//		model.setViewName("payment");
//		model.addObject("payment", new Payment());
//		return model;
//
//	}}
}
