package muni.user.service;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.user.dto.UserDto;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;

public class UserUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		UserRepository ur = new UserRepositoryImpl();

		String userId = request.getParameter("userId");
		UserDto user2 = ur.findById(userId);
		if (user2 != null) {
			String userPassword = request.getParameter("userPassword");
			if (userPassword.equals(""))
				userPassword = null;
			String userName = request.getParameter("userName");
			String userAddressNum = request.getParameter("userAddressNum");
			String userAddress = request.getParameter("userAddress");
			String userAddressEtc = request.getParameter("userAddressEtc");
			String userTel = null;
			if (request.getParameter("userTel2") != null && request.getParameter("userTel3") != null) {
				if (!request.getParameter("userTel2").equals("") && !request.getParameter("userTel3").equals("")) {
					userTel = request.getParameter("userTel1") + "-" + request.getParameter("userTel2") + "-"
							+ request.getParameter("userTel3");
				}
			}
			String userPhone = request.getParameter("userPhone1") + "-" + request.getParameter("userPhone2") + "-"
					+ request.getParameter("userPhone3");
			String userEmail = request.getParameter("userEmail");
			String userSolar = request.getParameter("userSolar");
			Date userBirthday = null;
			if (request.getParameter("userBirthday1") != null && request.getParameter("userBirthday2") != null
					&& request.getParameter("userBirthday3") != null) {
				if (!request.getParameter("userBirthday1").equals("")
						&& !request.getParameter("userBirthday2").equals("")
						&& !request.getParameter("userBirthday3").equals("")) {
					userBirthday = Date.valueOf(request.getParameter("userBirthday1") + "-"
							+ request.getParameter("userBirthday2") + "-" + request.getParameter("userBirthday3"));
				}
			}
			String userRecommend = user2.getUserRecommend();
			int userSnsAgree=0;
			if(request.getParameter("userSnsAgree")!=null) {
				userSnsAgree = Integer.parseInt(request.getParameter("userSnsAgree"));
			}
			int userEmailAgree=0;
			if(request.getParameter("userEmailAgree")!=null) {
				userEmailAgree = Integer.parseInt(request.getParameter("userEmailAgree"));
			}
			int userPoint = user2.getUserPoint();
			UserDto user = new UserDto(userId, userPassword, userName, userAddressNum, userAddress, userAddressEtc,
					userTel, userPhone, userEmail, userSolar, userBirthday, userRecommend, userPoint, userSnsAgree,
					userEmailAgree);
			result = ur.userUpdate(user);
		}
		request.setAttribute("result", result);
		return "/view/user/mypage/userUpdate.jsp";
	}

}
