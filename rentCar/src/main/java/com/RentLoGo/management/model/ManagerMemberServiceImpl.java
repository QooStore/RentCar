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
		managerMemberMapper.dropMember(id);
	}

}
