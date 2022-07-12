package com.RentLoGo.management.model;

public interface ManagerMemberService {

<<<<<<< Updated upstream
	public void dropMember(String id);
=======
	void dropMember(String id);
	List<MemberDTO> searchIdName(MemberDTO dto);
//	List<MemberDTO> searchName(String name);
	void modifyMember(MemberDTO dto);
>>>>>>> Stashed changes
}
