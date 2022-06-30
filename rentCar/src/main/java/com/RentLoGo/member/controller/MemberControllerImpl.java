package com.RentLoGo.member.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberControllerImpl implements MemberController{

	
	
	@Autowired
	private MemberService memberservice;
	
	@Override
//	@RequestMapping("/*Form.do")
	public String form() {
		
		System.out.println("컨트롤러 호출 >>>> ");
		
		return "member";
	}
	
	@Override
	@RequestMapping(value="memberJoin", method=RequestMethod.POST)
	public String joinPOST(MemberDTO member) throws Exception{
		System.out.println("회원 가입 페이지 >>>>>>>>>>>>>>");
		memberservice.memberJoin(member);
		
		System.out.println("회원 가입 성공 ~~~~~~");
		
		return "redirect:/index";
	}
	
	@Override
	@RequestMapping("/member.do")
	public String join(HttpServletRequest request){
		// TODO Auto-generated method stub
		System.out.println("회원 가입 페이지 >>>>>>>>>>>>>>");
	
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGET() {
		System.out.println("로그인 페이지 >>>>>>>>>>>>>>");
	}


	
}
