package com.RentLoGo.management.controller;

import java.util.List;
import java.util.Map;

import com.RentLoGo.member.model.MemberDTO;

public interface ManagerMemberController {

	List<MemberDTO> dropMember(Map<String, Object> id);
<<<<<<< Updated upstream
=======
	List<MemberDTO> searchMember(Map<String, Object> map, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	String ManagerMemberModify(MemberDTO dto, HttpServletRequest request);
	
>>>>>>> Stashed changes
}
