package com.RentLoGo.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.member.model.MemberMapper;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper membermapper;
	
	@Override
	public void memberJoin(MemberDTO member) throws Exception {
		
	}
}
