package com.RentLoGo.rentCar.controller;

import javax.servlet.http.HttpServletRequest;

public interface CarController {

	public String form(HttpServletRequest request);
	public String listCars(HttpServletRequest request);
}
