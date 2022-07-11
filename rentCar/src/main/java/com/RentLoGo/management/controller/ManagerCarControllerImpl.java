package com.RentLoGo.management.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.RentLoGo.management.model.ManagerCarService;
import com.RentLoGo.rentCar.model.AllCarDTO;
import com.RentLoGo.rentCar.model.CarService;

@Controller
@RequestMapping("/manager")
public class ManagerCarControllerImpl implements ManagerCarController {

	@Autowired
	ManagerCarService managerCarService;
	@Autowired
	CarService carService;
	
	//렌터카조회(manage)
	@Override
	@RequestMapping("/manageCar.do")
	public String select(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		List<AllCarDTO> list =	carService.selectManageRentCar();
		request.setAttribute("list", list);
		
		return viewName;
	}

	@Override
//	@RequestMapping("/listManageCar.do")
	public String listManageCar(HttpServletRequest request) {

		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}
	
	
	//렌터카삭제(manage)
	@Override
	@RequestMapping(value="/dropCar.do", method=RequestMethod.POST)
	@ResponseBody
	public List<AllCarDTO> dropCar(@RequestBody Map<String, Object> number) {
		
		String carNumber = (String) number.get("carNumber");
		System.out.println("managerController >>> carNumber >>> " + carNumber );
		managerCarService.dropCar(carNumber);
		List<AllCarDTO> list = carService.selectCarList();
		
		return list;
	}
}
