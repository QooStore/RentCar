package com.RentLoGo.rentCar.controller;

import java.util.List; 

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.RentLoGo.rentCar.model.CarDTO;
import com.RentLoGo.rentCar.model.CarService;

@Controller
@RequestMapping("/car")
public class CarControllerImpl implements CarController {

	@Autowired
	private CarService carService;
	
	@Override
//	@RequestMapping("/*Form.do")
	public String form() {
		
		System.out.println("컨트롤러 호출 >>>> ");
		
		return "index";
	}

	@Override
	@RequestMapping("/index.do")
	public String index(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		List<CarDTO> list =	carService.selectAllrentCar();
		request.setAttribute("list", list);
		
		System.out.println("컨트롤러 list >>> " + list);
		
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
