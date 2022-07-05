package com.RentLoGo.rentCar.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.RentLoGo.rentCar.model.CarDTO;
import com.RentLoGo.rentCar.model.CarService;

@Controller
@RequestMapping("/car")
public class CarControllerImpl implements CarController {

	@Autowired
	private CarService carService;
	
	@Override
	@RequestMapping("/indexForm.do")
		public String form(@RequestParam Map info, HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		List<CarDTO> list =	carService.selectAllrentCar();
		request.setAttribute("list", list);
		request.setAttribute("info", info);
		
		return viewName;
	}

	@Override
//	@RequestMapping("/listCars.do")
	public String listCars(HttpServletRequest request) {

		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}

}

