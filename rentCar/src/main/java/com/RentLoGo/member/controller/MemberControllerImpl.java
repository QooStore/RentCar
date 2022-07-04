package com.RentLoGo.member.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberControllerImpl implements MemberController{

	@Autowired
	private MemberService memberService;
	
	@Override
	@RequestMapping("/memberForm.do")
	public String form(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}
	
	@Override
	@RequestMapping(value="/memberJoin.do", method=RequestMethod.POST)
	public String join(MemberDTO member, RedirectAttributes redirect) {
		
		try {
			memberService.memberJoin(member);
			
			redirect.addAttribute("joinResult", "finished");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/car/indexForm.do";
	}
	
	//로그인 화면
	@Override
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request) {
		System.out.println("로그인 화면 >>>>>>>>>>>>>>");
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}

	// 회원정보수정
	@Override
	@RequestMapping("/modify.do")
	public String modify(HttpServletRequest request) {
		// TODO Auto-generated method stub
		System.out.println("회원 정보 수정 >>>>>>>>>>>>>>");
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}
	
	@RequestMapping(value="modify", method=RequestMethod.POST)
	public String modifyPOST(MemberDTO member) throws Exception{
		memberService.memberModify(member);
		
		System.out.println("회원 정보 수정 성공 ~~~~~~");
		
		return "redirect:/index";
	}
	
	//회원조회(manage)
	@Override
	@RequestMapping("/manage.do")
	public String select(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		List<MemberDTO> list =	memberService.selectAllMember();
		request.setAttribute("list", list);
		
		return viewName;
	}

	@Override
//	@RequestMapping("/listCars.do")
	public String listMember(HttpServletRequest request) {

		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}

}
