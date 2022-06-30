package com.RentLoGo.member.controller;

import javax.servlet.http.HttpServletRequest;

import com.RentLoGo.member.model.MemberDTO;

public interface MemberController {
	
	public String form();
	public String join(HttpServletRequest request) throws Exception;
	public String joinPOST(MemberDTO member) throws Exception;
}
