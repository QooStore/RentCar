package com.RentLoGo.member.controller;

import java.util.logging.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	
	@Autowired
	private MemberService memberservice;
	
	@RequestMapping(value="join", method=RequestMethod.GET)
	public void joinGET() {
		System.out.println("회원 가입 페이지 >>>>>>>>>>>>>>");
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String joinPOST(MemberDTO member) throws Exception{
		
		memberservice.memberJoin(member);
		
		System.out.println("회원 가입 성공 ~~~~~~");
		
		return "redirect:/index";
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGET() {
		System.out.println("로그인 페이지 >>>>>>>>>>>>>>");
	}
	
}
