package com.RentLoGo.management.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("managerMemberService")
public class ManagerMemberServiceImpl implements ManagerMemberService {

	@Autowired
	ManagerMemberMapper managerMemberMapper;
	
	@Override
	public void dropMember(String id) {

		System.out.println("ManagerMemberService >>> mapper >> dropMember 실행");
<<<<<<< Updated upstream
		managerMemberMapper.dropMember(id);
=======
		managerMemberMapper.dropMember(memberId);
	}

	@Override
	public List<MemberDTO> searchIdName(MemberDTO dto) {
		List<MemberDTO> list = managerMemberMapper.searchIdName(dto);
		return list;
	}

	@Override
	public void modifyMember(MemberDTO dto) {
		managerMemberMapper.modifyMember(dto);
>>>>>>> Stashed changes
	}

}
