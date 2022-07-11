package com.RentLoGo.management.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.RentLoGo.management.model.ManagerMemberService;
import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.member.service.MemberService;

@Controller
@RequestMapping("/managerMember")
public class ManagerMemberControllerImpl implements ManagerMemberController {

	@Autowired
	ManagerMemberService managerMemberService;
	@Autowired
	MemberService memberService;
	
	@Override
	@RequestMapping(value="/dropMember.do", method=RequestMethod.POST)
	@ResponseBody
	public List<MemberDTO> dropMember(@RequestBody Map<String, Object> id) {
		
		String memberId = (String) id.get("memberId");
		System.out.println("managerController >>> memberId >>> " + memberId );
		managerMemberService.dropMember(memberId);
		List<MemberDTO> list = memberService.selectAllMember();
		
		return list;
	}
}
