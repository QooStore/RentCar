package com.RentLoGo.rentCar.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("InsertMemberService")
public class InsertMemberServiceImpl implements InsertMemberService{

	@Autowired
	private InsertMemberMapper insertMemberMapper;
	
	@Override
	public void insertMember() {

		insertMemberMapper.insertMember();
		
	}

}
