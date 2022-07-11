package com.RentLoGo.management.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	@Override
	@ResponseBody
	@RequestMapping(value="/searchMember.do", method=RequestMethod.POST)
		public List<MemberDTO> searchMember(@RequestBody Map<String, Object> map, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String option = (String) map.get("selected");
		String value = (String) map.get("inputVal");
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		System.out.println("value >>>> " + value);
		if(value.equals("")) {
			return null;
		}
		
		switch(option) {
			case "id": list = managerMemberService.searchId(value);
				break;
			case "name": list = managerMemberService.searchName(value);
				break;
		}
		
		System.out.println("list >>> " + list);
		
		return list;
	}
}
