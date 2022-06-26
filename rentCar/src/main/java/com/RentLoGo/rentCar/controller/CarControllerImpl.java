package com.RentLoGo.rentCar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/car")
public class CarControllerImpl implements CarController {

	@Override
	@RequestMapping("/*Form.do")
	public String Form() {
		
		System.out.println("컨트롤러 호출 >>>> ");
		
		return "index";
	}
}
