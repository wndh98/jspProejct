package muni.user.service;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;

public class JoinWrite implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
	    
	    
	    String userId = request.getParameter("userId"); 
	    String userPassword = request.getParameter("userPassword");
	    String userType = request.getParameter("userType");
	    if(userType.equals("2"))userType=request.getParameter("userType2");
	    String userName = request.getParameter("userName");
	    String userAddressNum = request.getParameter("userAddressNum");
	    String userAddress = request.getParameter("userAddress");
	    String userAddressEtc = request.getParameter("userAddressEtc");
	    String userTel = request.getParameter("userTel1")+"-"+request.getParameter("userTel2")+"-"+request.getParameter("userTel3");
	    String userPhone = request.getParameter("userPhone1")+"-"+request.getParameter("userPhone2")+"-"+request.getParameter("userPhone3");
	    String userEmail = request.getParameter("userEmail");
	    String userSolar = request.getParameter("userSolar");
	    Date userBirthday = Date.valueOf(request.getParameter("userBirthday1")+"-"+request.getParameter("userBirthday2")+"-"+request.getParameter("userBirthday3"));
	    String userComName = request.getParameter("userComName");
	    String userComNum = request.getParameter("userComNum");
	    String userCoNum = request.getParameter("userCoNum1")+"-"+request.getParameter("userCoNum2");
	    String userRecommend = request.getParameter("userRecommend");
	    
	    
	    
	    int userSnsAgree = Integer.parseInt(request.getParameter("userSnsAgree"));
	    int userEmailAgree = Integer.parseInt(request.getParameter("userEmailAgree"));
	    if(userSnsAgree==1) {
	    	int userPoint = 3000;
	    }else {
	    	int userPoint = 0;
	    }
	    
	    
	    
		return null;
	}

}
