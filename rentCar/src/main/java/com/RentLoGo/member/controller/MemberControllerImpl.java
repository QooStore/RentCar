package com.RentLoGo.member.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.RentLoGo.member.model.MemberDTO;
import com.RentLoGo.member.service.MemberJoinCodeService;
import com.RentLoGo.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberControllerImpl implements MemberController{

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MemberJoinCodeService codeService;
	
	@Override
	@RequestMapping("/memberForm.do")
	public String form(HttpServletRequest request) {
		
		String viewName = (String) request.getAttribute("viewName");
		viewName = viewName.substring(viewName.lastIndexOf("/")+1, viewName.length());
		
		return viewName;
	}
	
	@Override
	@RequestMapping(value="/memberJoin.do", method=RequestMethod.GET)
	public String join(HttpSession session, RedirectAttributes redirect) {
		
		try {
			
			MemberDTO member = (MemberDTO) session.getAttribute("memberInfo");
			
			memberService.memberJoin(member);
			redirect.addAttribute("joinResult", "finished");
			
			session.removeAttribute("memberInfo");
			
		} catch (Exception e) {
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
	
	//로그인
	@Override
	@RequestMapping(value="/memberLogin.do", method=RequestMethod.POST)
	public String login(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {
		
		System.out.println("member >>> " + member);
		
		HttpSession session = request.getSession();
		MemberDTO mto = null;
		mto = memberService.memberLogin(member);
		
		System.out.println("데이터 >>>>>>>>> " + mto);
//		String id = member.getMemberId();
//		String pw = member.getMemberPw();
//		
//		System.out.println("아이디 : >>> " + id);
//		System.out.println("비번 : >>> " + pw);
		
		List<MemberDTO> list = memberService.selectAllMember();
		System.out.println("all list >>>>> " + list);
		
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
		
		if(mto.getMemberId().equals("admin")) {
			System.out.println("매니저 로그인 ~~~~");
			session.setAttribute("member", mto);
			return "redirect:/car/indexForm.do";
		}
		else {
			session.setAttribute("member", mto);
			System.out.println("회원 로그인 성공 ~~~~~");
			return "redirect:/car/indexForm.do";
		}

	}
	
	//로그아웃
	@Override
	@RequestMapping("/logout.do")
	public String logoutMainGET(HttpServletRequest request) throws Exception{
		
		System.out.println("logout 되었음 ~~~~~");
		HttpSession session = request.getSession();
		
		session.invalidate();
		
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
	
	//회원목록조회페이지(manage)
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
	@RequestMapping(value="/verify.do", method=RequestMethod.POST)
	public String verify(MemberDTO dto, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
		
		codeService.createCode(response);
		session.setAttribute("memberInfo", dto);
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/mail/sendMail.do");
//		dispatcher.forward(request, response);
//		return null;
		return "redirect:/mail/sendMail.do";
	}

	//인증번호 재요청
	@Override
	@RequestMapping(value="/resendCode.do", method=RequestMethod.POST)
	public String reVerify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		codeService.createCode(response);
		
		return "redirect:/mail/sendMail.do";
	}

	//인증번호 비교
	@Override
	@RequestMapping(value="/checkCode.do", method=RequestMethod.POST)
	public ResponseEntity<String> checkCode(@RequestBody Map<String, Object> inputCode, HttpSession session, HttpServletRequest request) {

		Cookie[] allCookies = request.getCookies();
		
		String randomCode = "";
		for(int i = 0; i < allCookies.length; i++) {
			if(allCookies[i].getName().equals("randomCode")) {
				randomCode = allCookies[i].getValue();
			}
		}
		
		System.out.println("code >>> " + inputCode.get("code"));
		String code = (String) inputCode.get("code");
		ResponseEntity<String> result = codeService.checkCode(code, randomCode);
		
		System.out.println("controller >>> result >>> " + result);
		return result;
	}



}
