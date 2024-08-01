package muni.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import muni.controller.CommandProcess;
import muni.user.dto.UserDto;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;

public class LoginAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserRepository ur = new UserRepositoryImpl();
		//result = 0 비밀번호 다름
		//result = 1 회원정보 일치
		//result = -1 회원정보 없음
		int result = 0; 
		String userId = request.getParameter("userId");
		String userPassword = request.getParameter("userPassword");
		UserDto user = ur.loginFindById(userId);
		
		if(user==null)result=-1; // 회원이 없을시
		else if(user.getUserPassword().equals(userPassword)) {
			result=1; // 일치할시
			HttpSession session = request.getSession();
			session.setAttribute("userId", userId);
		}
		
		request.setAttribute("result", result);
		
		return "/view/user/login.jsp";
	}
}
