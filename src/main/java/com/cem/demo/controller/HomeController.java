package com.cem.demo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cem.demo.model.Account;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		logger.info("Welcome home");
		ModelAndView model = new ModelAndView();
		model.addObject("message", "Welcome " + userName);
		model.setViewName("home");

		return model;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register(@RequestParam(value = "nameError", required = false) String nameError,
			@RequestParam(value = "emailError", required = false) String emailError) {
		ModelAndView model = new ModelAndView();
		model.addObject("account", new Account());
		if (nameError != null) {
			model.addObject("nameError", "Username exists! Choose another");
		} else if (emailError != null) {
			model.addObject("emailError", "Email exists! Choose another");
		}
		model.setViewName("register");
		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginPage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Username or password wrong");
		}

		if (logout != null) {
			model.addObject("message", "Logged out successfully.");
		}

		model.setViewName("login");
		return model;
	}
}
