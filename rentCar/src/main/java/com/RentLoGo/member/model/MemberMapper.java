package com.RentLoGo.member.model;

import java.util.List;
import com.RentLoGo.rentCar.model.CarDTO;

public interface MemberMapper {
	
	public void memberJoin(MemberDTO member);
	
	public void memberLogin(MemberDTO member);
	
	public void memberDelete(MemberDTO member);
	
	public void memberModify(MemberDTO member);
	
	public List<MemberDTO> selectAllMember();

}
