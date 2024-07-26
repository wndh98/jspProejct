package muni.user.dto;

import java.sql.Date;

public class UserDto {
	private int userNum;
	private String userId;
	private String userPassword;
	private String userType;
	private String userName;
	private String userAddressNum;
	private String userAddress;
	private String userAddressEtc;
	private String userTell;
	private String userPhone;
	private String userEmail;
	private String userSolar;
	private Date userBirthday;
	private String userComName;
	private String userComNum;
	private String userCoNum;
	private String userRecommend;
	private int userPoint;
	private String userDel;
	private String userSnsAgree;
	private String userEmailAgree;
	private Date userRegist;

	
	
	public UserDto() {
		super();
	}

	public UserDto(String userId, String userPassword, String userType, String userName, String userAddressNum,
			String userAddress, String userAddressEtc, String userTell, String userPhone, String userEmail,
			String userSolar, Date userBirthday, String userComName, String userComNum, String userCoNum,
			String userRecommend, int userPoint, String userSnsAgree, String userEmailAgree) {
		super();
		this.userId = userId;
		this.userPassword = userPassword;
		this.userType = userType;
		this.userName = userName;
		this.userAddressNum = userAddressNum;
		this.userAddress = userAddress;
		this.userAddressEtc = userAddressEtc;
		this.userTell = userTell;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userSolar = userSolar;
		this.userBirthday = userBirthday;
		this.userComName = userComName;
		this.userComNum = userComNum;
		this.userCoNum = userCoNum;
		this.userRecommend = userRecommend;
		this.userPoint = userPoint;
		this.userSnsAgree = userSnsAgree;
		this.userEmailAgree = userEmailAgree;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddressNum() {
		return userAddressNum;
	}

	public void setUserAddressNum(String userAddressNum) {
		this.userAddressNum = userAddressNum;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserAddressEtc() {
		return userAddressEtc;
	}

	public void setUserAddressEtc(String userAddressEtc) {
		this.userAddressEtc = userAddressEtc;
	}

	public String getUserTell() {
		return userTell;
	}

	public void setUserTell(String userTell) {
		this.userTell = userTell;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserSolar() {
		return userSolar;
	}

	public void setUserSolar(String userSolar) {
		this.userSolar = userSolar;
	}

	public Date getUserBirthday() {
		return userBirthday;
	}

	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getUserComName() {
		return userComName;
	}

	public void setUserComName(String userComName) {
		this.userComName = userComName;
	}

	public String getUserComNum() {
		return userComNum;
	}

	public void setUserComNum(String userComNum) {
		this.userComNum = userComNum;
	}

	public String getUserCoNum() {
		return userCoNum;
	}

	public void setUserCoNum(String userCoNum) {
		this.userCoNum = userCoNum;
	}

	public String getUserRecommend() {
		return userRecommend;
	}

	public void setUserRecommend(String userRecommend) {
		this.userRecommend = userRecommend;
	}

	public int getUserPoint() {
		return userPoint;
	}

	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}

	public String getUserDel() {
		return userDel;
	}

	public void setUserDel(String userDel) {
		this.userDel = userDel;
	}

	public String getUserSnsAgree() {
		return userSnsAgree;
	}

	public void setUserSnsAgree(String userSnsAgree) {
		this.userSnsAgree = userSnsAgree;
	}

	public String getUserEmailAgree() {
		return userEmailAgree;
	}

	public void setUserEmailAgree(String userEmailAgree) {
		this.userEmailAgree = userEmailAgree;
	}

	public Date getUserRegist() {
		return userRegist;
	}

	public void setUserRegist(Date userRegist) {
		this.userRegist = userRegist;
	}

}
