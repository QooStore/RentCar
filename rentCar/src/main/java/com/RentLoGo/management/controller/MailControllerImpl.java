package com.RentLoGo.management.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.RentLoGo.management.model.MailService;

@Controller
@RequestMapping("/mail")
@EnableAsync
public class MailControllerImpl implements MailController {

	@Autowired
	private MailService mailService;
	
	@Override
	@RequestMapping("/sendMail")
	public void sendMail(HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		mailService.sendMail("hr01cho@naver.com", "테스트 메일", "테스트 입니다.");
	}
}
