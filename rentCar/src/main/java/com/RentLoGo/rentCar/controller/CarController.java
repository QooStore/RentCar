package com.RentLoGo.rentCar.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.ResponseEntity;

import com.RentLoGo.rentCar.model.AllCarDTO;

public interface CarController {

	public String form(Map info, HttpServletRequest request);
	public String listCars(HttpServletRequest request);
	String carDetail(HttpServletRequest request);
	public Map<String, List<AllCarDTO>> ajaxCars();
	
	//렌터카조회(manage)
	public String select(HttpServletRequest request);
	public String listManageCar(HttpServletRequest request);
}
