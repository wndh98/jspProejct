package muni.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;

public class JoinForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("userSnsAgree", request.getParameter("snsAgree"));
		request.setAttribute("userEmailAgree", request.getParameter("emailAgree"));
		return "/view/user/joinForm.jsp";
	}

}
