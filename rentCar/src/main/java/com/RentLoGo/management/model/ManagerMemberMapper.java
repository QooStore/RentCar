package com.RentLoGo.management.model;

import java.util.List;

import com.RentLoGo.member.model.MemberDTO;

public interface ManagerMemberMapper {

	//회원삭제
	public void dropMember(String memberId);
	List<MemberDTO> searchId(String id);
	List<MemberDTO> searchName(String name);
}
