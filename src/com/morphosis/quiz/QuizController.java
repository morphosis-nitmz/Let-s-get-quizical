package com.morphosis.quiz;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuizController {
	@RequestMapping("/questions")
	public String listCustomers(Model theModel) {
		
		return "questions";
	}
	
	@RequestMapping("/q1")
	public String question1(Model theModel) {
		
		return "q1";
	}
	
	@RequestMapping("/q2")
	public String question2(Model theModel) {
		
		return "q2";
	}
	
	@RequestMapping("/q3")
	public String question3(Model theModel) {
		
		return "q3";
	}
	@RequestMapping("/score")
	public String score(Model theModel) {
		
		return "score";
	}
	@RequestMapping("/register")
	public String SignUp(Model theModel) {
		
		return "register";
	}
	
	@RequestMapping("/after_reg")
	public String registered(Model theModel) {
		
		return "after_reg";
	}
	
	@RequestMapping("/login2")
	public String login(Model theModel) {
		
		return "login2";
	}
	@RequestMapping("/LoginAuth")
	public String Loginauth(Model theModel) {
		
		return "LoginAuth";
	}
	
	@RequestMapping("/afterlogin")
	public String afterlogin(Model theModel) {
		
		return "afterlogin";
	}

	@RequestMapping("/Ended")
	public String Ended(Model theModel) {
		
		return "Ended";
	}
	
	@RequestMapping("/scoreDisplay")
	public String scoreDisplay(Model theModel) {
		
		return "scoreDisplay";
	}
	@RequestMapping("/")
	public String home(Model theModel) {
		
		return "home";
	}
	@RequestMapping("/header")
	public String header(Model theModel) {
		
		return "header";
	}
	@RequestMapping("/logout")
	public String logout(Model theModel) {
		
		return "logout";
	}
	
	@RequestMapping("/contact")
	public String contact(Model theModel) {
		
		return "contact";
	}
	
	@RequestMapping("/goLive")
	public String goLive(Model theModel) {
		
		return "goLive";
	}
	
	@RequestMapping("/ComingSoon")
	public String Coming(Model theModel) {
		
		return "ComingSoon";
	}
	
}
