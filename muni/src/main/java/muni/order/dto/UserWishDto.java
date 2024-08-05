package muni.order.dto;

public class UserWishDto {
	private int uwNum;
	private String userId;
	private int piNum;

	public int getUwNum() {
		return uwNum;
	}

	public void setUwNum(int uwNum) {
		this.uwNum = uwNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getPiNum() {
		return piNum;
	}

	public void setPiNum(int piNum) {
		this.piNum = piNum;
	}

	@Override
	public String toString() {
		return "UserWishDto [uwNum=" + uwNum + ", userId=" + userId + ", piNum=" + piNum + "]";
	}

}
