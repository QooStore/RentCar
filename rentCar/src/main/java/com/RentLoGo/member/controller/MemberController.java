package com.RentLoGo.member.controller;

import javax.servlet.http.HttpServletRequest;

import com.RentLoGo.member.model.MemberDTO;

public interface MemberController {
	
	public String form();
	public String join(HttpServletRequest request) throws Exception;
	public String joinPOST(MemberDTO member) throws Exception;
	
	//회원정보수정
	public String modify(HttpServletRequest request);
	//회원조회(manage)
	public String select(HttpServletRequest request);
	public String listMember(HttpServletRequest request);
}
