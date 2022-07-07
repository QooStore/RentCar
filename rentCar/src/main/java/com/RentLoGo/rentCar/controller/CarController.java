package com.RentLoGo.rentCar.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface CarController {

	public String form(Map info, HttpServletRequest request);
	public String listCars(HttpServletRequest request);
	String carDetail(HttpServletRequest request);
	
	//렌터카조회(manage)
	public String select(HttpServletRequest request);
	public String listManageCar(HttpServletRequest request);
}
