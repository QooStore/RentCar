package com.RentLoGo.management.controller;

import java.util.List;
import java.util.Map;

import com.RentLoGo.member.model.MemberDTO;

public interface ManagerMemberController {

	List<MemberDTO> dropMember(Map<String, Object> id);
}
