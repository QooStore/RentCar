package com.RentLoGo.member.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.member.service.MemberService;
import com.RentLoGo.rentCar.model.CarDTO;

@Controller
@RequestMapping("/member")
public class MemberControllerImpl implements MemberController{

	
	@Autowired
	private MemberService memberservice;
	
	@Override
//	@RequestMapping("/*Form.do")
	public String form() {
		
		System.out.println("컨트롤러 호출 >>>> ");
		
		return "member";
	}
	
//	@Override
//	@RequestMapping(value="/memberJoin.do", method=RequestMethod.POST)
//	public String joinPOST(MemberDTO member) throws Exception{
//		
//		System.out.println("가입 페이지 진입>>>>>>>>>>>>>>");
//		memberservice.memberJoin(member);
//		
//		System.out.println("회원 가입 성공 ~~~~~~");
//		
//		return "redirect:/index";
//	}
	@Override
	@RequestMapping(value="/memberJoin", method=RequestMethod.POST)
	public String join(@RequestParam("memberId") String id,
					   @RequestParam("memberPw") String pw,
					   @RequestParam("memberClass")char cl,
					   @RequestParam("memberName") String name,
					   @RequestParam("memberBirth") String birth,
					   @RequestParam("memberPhone") String phone,
					   @RequestParam("memberEmail") String email,
					   Model model) {
		System.out.println("id : >>>>>" + id);
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		model.addAttribute("memberClass", '1');
		model.addAttribute("name", name);
		model.addAttribute("birth", birth);
		model.addAttribute("phone", phone);
		model.addAttribute("email", email);
		
		System.out.println("회원가입 성공~~~~");
		return "redirect:/index";
	}
	
	@Override
	@RequestMapping("/member.do")
	public String join(HttpServletRequest request){
		// TODO Auto-generated method stub
		System.out.println("회원 가입 페이지 >>>>>>>>>>>>>>");
	
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}
	
//	@RequestMapping(value="member/login", method=RequestMethod.GET)
//	public void loginGET() {
//		System.out.println("로그인 페이지 >>>>>>>>>>>>>>");
//	}
	
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
	
//	@RequestMapping("/modify.do")
//	public String modifyGET(HttpServletRequest request) {
//		System.out.println("회원 정보 수정 >>>>>>>>>>>>>>");
//		
//		String viewName = (String) request.getAttribute("viewName");
//		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
//		
//		return viewName;
//	}
	
	@RequestMapping(value="modify", method=RequestMethod.POST)
	public String modifyPOST(MemberDTO member) throws Exception{
		memberservice.memberModify(member);
		
		System.out.println("회원 정보 수정 성공 ~~~~~~");
		
		return "redirect:/index";
	}
	
	//회원조회(manage)
	@Override
	@RequestMapping("/manage.do")
	public String select(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		List<MemberDTO> list =	memberservice.selectAllMember();
		request.setAttribute("list", list);
		
		System.out.println("컨트롤러 list >>> " + list);
		
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
