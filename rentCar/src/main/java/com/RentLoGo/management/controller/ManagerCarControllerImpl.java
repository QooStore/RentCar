package com.RentLoGo.management.controller;

import java.util.List; 

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.rentCar.model.AllCarDTO;
import com.RentLoGo.rentCar.model.CarService;

@Controller
@RequestMapping("/manager")
public class ManagerCarControllerImpl implements ManagerCarController {

	@Autowired
	private CarService carService;
	
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
	@RequestMapping("/carDeleteForm.do")
	public String deleteCarForm(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}
	
	@Override
	@RequestMapping(value="/deleteManageRentCar.do", method=RequestMethod.POST)
	public String deleteCar(AllCarDTO allCar, RedirectAttributes redirect) {
		
		try {
			carService.deleteManageRentCar(allCar);
			
			redirect.addAttribute("deleteResult", "finished");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/manageCar.do";
	}
}
