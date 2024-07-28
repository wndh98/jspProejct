package muni.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.user.dto.UserDto;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;


public class CoNumChk implements CommandProcess{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserRepository ur = new UserRepositoryImpl();
		UserDto user = ur.findByCoNum(request.getParameter("userCoNum"));
		int result = 0;
		if(user==null)result=1;
		request.setAttribute("result", result);
		
		return "/view/user/coNumChk.jsp";
	}

}