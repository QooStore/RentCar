package com.RentLoGo.member.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	@RequestMapping(value="/virify.do", method=RequestMethod.POST)
	public void verify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/mail/sendMail");
		dispatcher.forward(request, response);
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
	
	@Override
	@RequestMapping(value="/memberLogin.do", method=RequestMethod.POST)
	public String login(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {
		
		System.out.println("로그인 메서드 진입 >>>>>>>> ");
		System.out.println("전달된 데이터 : " + member);
		
		System.out.println("진입>>>>>>>>>>>");
		HttpSession session = request.getSession();
		MemberDTO mto = null;
		mto = memberService.memberLogin(member);
		
		System.out.println("데이터 >>>>>>>>> " + mto);
//		String id = member.getMemberId();
//		String pw = member.getMemberPw();
//		
//		System.out.println("아이디 : >>> " + id);
//		System.out.println("비번 : >>> " + pw);
//		
//		List<MemberDTO> list =	memberService.AllMember();
//		System.out.println("all list " + list);
//		
//		if(list.contains(id)) {
//			session.setAttribute("member", member);
//			System.out.println("로그인 성공 ~~~~~");
//			return "redirect:/car/indexForm.do";
//		}else
//		{
//			int result = 0;
//			rttr.addFlashAttribute("result",result);
//			System.out.println("로그인 실패 >>>>>>>>>>>>>>>> 비번 또는 아이디 틀림");
//			return "redirect:/member/login.do";
//		}
		
		if(mto == null) {
			int result = 0;
			rttr.addFlashAttribute("result",result);
			System.out.println("로그인 실패 >>>>>>>>>>>>>>>> 비번 또는 아이디 틀림");
			return "redirect:/member/login.do";
		}
		
		session.setAttribute("member", mto);
		System.out.println("로그인 성공 ~~~~~");
		return "redirect:/car/indexForm.do";
	}

	// 회원정보수정
	@Override
	@RequestMapping("/memberModifyForm.do")
	public String modifyForm(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}
	
	@Override
	@RequestMapping(value="/memberModify.do", method=RequestMethod.POST)
	public String modify(MemberDTO member, RedirectAttributes redirect) {
		
		try {
			memberService.memberModify(member);
			
			redirect.addAttribute("modifyResult", "finished");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/car/indexForm.do";
	}
	
	// 회원탈퇴
	@Override
	@RequestMapping("/memberDeleteForm.do")
	public String deleteForm(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}
	
	@Override
	@RequestMapping(value="/memberDelete.do", method=RequestMethod.POST)
	public String delete(MemberDTO member, RedirectAttributes redirect) {
		
		try {
			memberService.memberDelete(member);
			
			redirect.addAttribute("deleteResult", "finished");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/car/indexForm.do";
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
