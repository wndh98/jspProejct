package muni.user.service;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.user.dto.UserDto;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;

public class JoinWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		UserRepository ur = new UserRepositoryImpl();
		
		String userId = request.getParameter("userId");
		UserDto user2 = ur.findById(userId);
		if (user2 != null) {
			String userPassword = request.getParameter("userPassword");
			String userType = request.getParameter("userType");
			if (userType.equals("2"))
				userType = request.getParameter("userType2");
			String userName = request.getParameter("userName");
			String userAddressNum = request.getParameter("userAddressNum");
			String userAddress = request.getParameter("userAddress");
			String userAddressEtc = request.getParameter("userAddressEtc");
			String userTel =null;
			if(!request.getParameter("userTel2").equals("") && !request.getParameter("userTel3").equals("")) {
			userTel = request.getParameter("userTel1") + "-" + request.getParameter("userTel2") + "-"
					+ request.getParameter("userTel3");
			}
			String userPhone = request.getParameter("userPhone1") + "-" + request.getParameter("userPhone2") + "-"
					+ request.getParameter("userPhone3");
			String userEmail = request.getParameter("userEmail");
			String userSolar = request.getParameter("userSolar");
			Date userBirthday = null;
			if (!request.getParameter("userBirthday1").equals("") && !request.getParameter("userBirthday2").equals("")
					&& !request.getParameter("userBirthday3").equals("")) {
				userBirthday = Date.valueOf(request.getParameter("userBirthday1") + "-"
						+ request.getParameter("userBirthday2") + "-" + request.getParameter("userBirthday3"));
			}
			String userComName = request.getParameter("userComName");
			
			String userComNum = request.getParameter("userComNum");
			String userCoNum=null;
			if(!request.getParameter("userCoNum1").equals("") && !request.getParameter("userCoNum2").equals("")) {
				userCoNum = request.getParameter("userCoNum1") + "-" + request.getParameter("userCoNum2");
			}
			String userRecommend = request.getParameter("userRecommend");

			int userSnsAgree = Integer.parseInt(request.getParameter("userSnsAgree"));
			int userEmailAgree = Integer.parseInt(request.getParameter("userEmailAgree"));
			int userPoint = 0;
			if (userSnsAgree == 1) {
				userPoint = 3000;
			}
			UserDto user = new UserDto(userId, userPassword, userType, userName, userAddressNum, userAddress,
					userAddressEtc, userTel, userPhone, userEmail, userSolar, userBirthday, userComName, userComNum,
					userCoNum, userRecommend, userPoint, userSnsAgree, userEmailAgree);
			result = ur.save(user);
		}
		request.setAttribute("result", result);
		return "/view/user/joinWrite.jsp";
	}

}
