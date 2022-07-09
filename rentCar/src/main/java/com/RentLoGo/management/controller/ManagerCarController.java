package com.RentLoGo.management.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.RentLoGo.rentCar.model.AllCarDTO;

public interface ManagerCarController {

	//렌터카조회(manage)
	public String select(HttpServletRequest request);
	public String listManageCar(HttpServletRequest request);
	
	//렌터카삭제(manage)
	public String deleteCarForm(HttpServletRequest request);
	public String deleteCar(AllCarDTO allCar, RedirectAttributes redirect);
}
