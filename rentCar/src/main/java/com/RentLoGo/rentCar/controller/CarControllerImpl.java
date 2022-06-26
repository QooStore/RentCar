package com.RentLoGo.rentCar.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/car")
public class CarControllerImpl implements CarController {

	@Override
//	@RequestMapping("/*Form.do")
	public String form() {
		
		System.out.println("컨트롤러 호출 >>>> ");
		
		return "index";
	}

	@Override
	@RequestMapping("/index.do")
	public ModelAndView index(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return new ModelAndView(viewName);
	}
}
