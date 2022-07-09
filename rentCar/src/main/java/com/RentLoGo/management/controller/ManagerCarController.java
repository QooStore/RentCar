package com.RentLoGo.management.controller;

import javax.servlet.http.HttpServletRequest;

public interface ManagerCarController {

	//렌터카조회(manage)
	public String select(HttpServletRequest request);
	public String listManageCar(HttpServletRequest request);
	
}
