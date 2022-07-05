package com.RentLoGo.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.RentLoGo.member.model.MemberDTO;

public interface MemberController {
	
	String form(HttpServletRequest request);
	public void verify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	public String join(MemberDTO member, RedirectAttributes redirect);
	
	//로그인
	public String login(HttpServletRequest request);
	
	//회원정보수정
	public String modifyForm(HttpServletRequest request);
	public String modify(MemberDTO member, RedirectAttributes redirect);
	
	//회원조회(manage)
	public String select(HttpServletRequest request);
	public String listMember(HttpServletRequest request);
}
