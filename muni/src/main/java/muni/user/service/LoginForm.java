package muni.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;

public class LoginForm implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return "/view/user/loginForm.jsp";
	}

}
