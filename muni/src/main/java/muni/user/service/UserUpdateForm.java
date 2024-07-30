package muni.user.service;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import muni.controller.CommandProcess;
import muni.user.dto.UserDto;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;

public class UserUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserRepository ur = new UserRepositoryImpl();
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		UserDto user = ur.findById(userId);
		if (user.getUserBirthday() != null) {
			Calendar userBirthday = Calendar.getInstance();
			userBirthday.setTime(user.getUserBirthday());
			int userBirthday1 = userBirthday.get(Calendar.YEAR);
			int userBirthday2 = userBirthday.get(Calendar.MONTH) + 1;
			int userBirthday3 = userBirthday.get(Calendar.DAY_OF_MONTH);

			request.setAttribute("userBirthday1", userBirthday1);
			request.setAttribute("userBirthday2", userBirthday2);
			request.setAttribute("userBirthday3", userBirthday3);
		}
		request.setAttribute("user", user);
		return "/view/user/mypage/userUpdateForm.jsp";
	}

}
