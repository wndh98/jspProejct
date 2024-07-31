package muni.user.dto;

public class UserDeliveryDto {
	private int udNum;
	private String userId;
	private String udSubject;
	private String udName;
	private String udAddressNum;
	private String udAddress;
	private String udAddressEtc;
	private String udTel;
	private String udPhone;

	public int getUdNum() {
		return udNum;
	}

	public void setUdNum(int udNum) {
		this.udNum = udNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUdSubject() {
		return udSubject;
	}

	public void setUdSubject(String udSubject) {
		this.udSubject = udSubject;
	}

	public String getUdName() {
		return udName;
	}

	public void setUdName(String udName) {
		this.udName = udName;
	}

	public String getUdAddressNum() {
		return udAddressNum;
	}

	public void setUdAddressNum(String udAddressNum) {
		this.udAddressNum = udAddressNum;
	}

	public String getUdAddress() {
		return udAddress;
	}

	public void setUdAddress(String udAddress) {
		this.udAddress = udAddress;
	}

	public String getUdAddressEtc() {
		return udAddressEtc;
	}

	public void setUdAddressEtc(String udAddressEtc) {
		this.udAddressEtc = udAddressEtc;
	}

	public String getUdTel() {
		return udTel;
	}

	public void setUdTel(String udTel) {
		this.udTel = udTel;
	}

	public String getUdPhone() {
		return udPhone;
	}

	public void setUdPhone(String udPhone) {
		this.udPhone = udPhone;
	}

	@Override
	public String toString() {
		return "UserDeliveryDto [udNum=" + udNum + ", userId=" + userId + ", udSubject=" + udSubject + ", udName="
				+ udName + ", udAddressNum=" + udAddressNum + ", udAddress=" + udAddress + ", udAddressEtc="
				+ udAddressEtc + ", udTel=" + udTel + ", udPhone=" + udPhone + "]";
	}

}
