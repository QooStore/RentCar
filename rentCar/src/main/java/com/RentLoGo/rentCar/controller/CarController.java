package com.RentLoGo.rentCar.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface CarController {

	public String form(Map info, HttpServletRequest request);
	public String listCars(HttpServletRequest request);
	public String carDetail();
}
