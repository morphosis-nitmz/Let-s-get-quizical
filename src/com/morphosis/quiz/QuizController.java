package com.morphosis.quiz;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuizController {

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

	@RequestMapping("/ComingSoon")
	public String Coming(Model theModel) {
		
		return "ComingSoon";
	}
	@RequestMapping("/leaderboard")
	public String Leaderboard(Model theModel) {
		
		return "leaderboard";
	}
	
	@RequestMapping("/rules")
	public String rules(Model theModel) {
		
		return "rules";
	}
	
	@RequestMapping("/ques1")
	public String ques1(Model theModel) {
		
		return "ques1";
	}
	
	@RequestMapping("/ques2")
	public String ques2(Model theModel) {
		
		return "ques2";
	}
	@RequestMapping("/ques3")
	public String ques3(Model theModel) {
		
		return "ques3";
	}
	
	@RequestMapping("/ques4")
	public String ques4(Model theModel) {
		
		return "ques4";
	}
	@RequestMapping("/ques5")
	public String ques5(Model theModel) {
		
		return "ques5";
	}
	@RequestMapping("/ques6")
	public String ques6(Model theModel) {
		
		return "ques6";
	}
	@RequestMapping("/ques7")
	public String ques7(Model theModel) {
		
		return "ques7";
	}
	
	@RequestMapping("/ques8")
	public String ques8(Model theModel) {
		
		return "ques8";
	}
	
	@RequestMapping("/ques9")
	public String ques9(Model theModel) {
		
		return "ques9";
	}
	
	@RequestMapping("/ques10")
	public String ques10(Model theModel) {
		
		return "ques10";
	}

	
	
}
