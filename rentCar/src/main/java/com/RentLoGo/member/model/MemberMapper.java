package com.RentLoGo.member.model;

public interface MemberMapper {
	
	public void memberJoin(MemberDTO member);
	
	public void memberDelete(MemberDTO member);
	
	public void memberUpdate(MemberDTO member);
	
	public void memberSelect(MemberDTO member);

}
