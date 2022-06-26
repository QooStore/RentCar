package com.RentLoGo.rentCar.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

public interface CarController {

	public String form();
	public ModelAndView index(HttpServletRequest request);
	
}
