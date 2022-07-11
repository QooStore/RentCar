package com.RentLoGo.management.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.rentCar.model.AllCarDTO;

public interface ManagerCarController {

	//렌터카조회(manage)
	public String select(HttpServletRequest request);
	public String listManageCar(HttpServletRequest request);
	
	//렌터카삭제(manage)
	List<AllCarDTO> dropCar(Map<String, Object> number);
}
