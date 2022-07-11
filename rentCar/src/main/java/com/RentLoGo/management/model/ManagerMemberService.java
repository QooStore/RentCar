package com.RentLoGo.management.model;

import java.util.List;

import com.RentLoGo.member.model.MemberDTO;

public interface ManagerMemberService {

	public void dropMember(String id);
	List<MemberDTO> searchId(String id);
	List<MemberDTO> searchName(String name);
}
