package com.RentLoGo.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.RentLoGo.member.model.MemberDTO;

public interface MemberController {
	
	String form(HttpServletRequest request);
	public String join(MemberDTO member ,Model model);
	
	//로그인
	public String login(HttpServletRequest request);
	
	//회원정보수정
	public String modify(HttpServletRequest request);
	
	//회원조회(manage)
	public String select(HttpServletRequest request);
	public String listMember(HttpServletRequest request);
}
