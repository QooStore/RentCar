package com.RentLoGo.management.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

public interface MailController {

	public void sendMail(HttpServletResponse response) throws IOException;
}
