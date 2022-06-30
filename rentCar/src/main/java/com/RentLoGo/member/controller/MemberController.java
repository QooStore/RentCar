package com.RentLoGo.member.controller;

import javax.servlet.http.HttpServletRequest;

public interface MemberController {
	
	public String form();
	public String join(HttpServletRequest request);
}
