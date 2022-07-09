package com.RentLoGo.management.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/managerMember")
public class ManagerMemberControllerImpl implements ManagerController {

	@Override
	@RequestMapping("/managerForm.do")
	public String managerForm(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}

}
