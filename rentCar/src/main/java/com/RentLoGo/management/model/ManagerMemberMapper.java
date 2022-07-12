package com.RentLoGo.management.model;

public interface ManagerMemberMapper {

	//회원삭제
<<<<<<< Updated upstream
	public void dropMember(String id);
=======
	void dropMember(String memberId);
	List<MemberDTO> searchIdName(MemberDTO dto);
//	List<MemberDTO> searchName(String name);
	void modifyMember(MemberDTO dto);
>>>>>>> Stashed changes
}
