package com.RentLoGo.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.member.model.MemberMapper;
import com.RentLoGo.rentCar.model.CarDTO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper membermapper;
//	@Autowired
//	MemberService memberservice;
	
	
	@Override
	public void memberJoin(MemberDTO member) throws Exception {
		membermapper.memberJoin(member);
		//memberservice.memberJoin(member);
	}
	
	@Override
	public void memberLogin(MemberDTO member) throws Exception {
		//memberservice.memberLogin(member);
		membermapper.memberLogin(member);
	}
	
	@Override
	public void memberDelete(MemberDTO member) throws Exception {
		membermapper.memberDelete(member);
	}
	
	@Override
	public void memberModify(MemberDTO member) throws Exception {
		membermapper.memberModify(member);
	}
	
	@Override
	public List<MemberDTO> selectAllMember() {

		System.out.println("membermapper 실행....");
		List<MemberDTO> list = membermapper.selectAllMember();
		System.out.println("membermapper 실행 후 list >>>>" + list );
		
		return list;
	}
}
