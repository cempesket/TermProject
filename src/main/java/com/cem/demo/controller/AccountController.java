package com.cem.demo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cem.demo.model.Account;
import com.cem.demo.model.User;
import com.cem.demo.repositories.AccountRepository;
import com.cem.demo.repositories.UserRepository;

@Controller
@RequestMapping(value = "/Account")
public class AccountController {
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	@Autowired
	private UserRepository userRepo;
	@Autowired
	private AccountRepository accountRepo;

	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public ModelAndView showUser() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		Account account = accountRepo.findByName(userName);
		ModelAndView model = new ModelAndView();
		model.addObject("userName", userName);
		model.addObject("email", account.getEmail());
		model.addObject("address", account.getAddress());
		model.addObject("updateAddress", account);
		model.setViewName("userInfo");

		return model;
	}

	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("account") Account account, ModelMap model) {
		PasswordEncoder encoder = new BCryptPasswordEncoder();

		User user = account.getUser();
		user.setPassword(encoder.encode(user.getPassword()));
		account.setName(user.getUserName());
		try {
			userRepo.save(user);

		} catch (Exception e) {
			return "redirect:/register?nameError";

		}
		try {
			accountRepo.save(account);

		} catch (Exception e) {
			return "redirect:/register?emailError";

		}

		return "redirect:/login";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("updateAddress") Account model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		accountRepo.update(model.getAddress(), userName);
		return "redirect:../Account/info";

	}

}
