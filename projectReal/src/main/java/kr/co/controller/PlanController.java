package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PlanController {
	
	@RequestMapping(value = "/plan", method = RequestMethod.GET)
	public String PlanMain() {
		
		
		return "myPlan/plan";
	}
}
