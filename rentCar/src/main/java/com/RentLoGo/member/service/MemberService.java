package com.RentLoGo.member.service;

import com.RentLoGo.member.model.MemberDTO;

public interface MemberService {

	public void memberJoin(MemberDTO member) throws Exception;

	public void memberDelete(MemberDTO member) throws Exception;
	
	public void memberUpdate(MemberDTO member) throws Exception;
	
	public void memberSelect(MemberDTO member) throws Exception;
}
