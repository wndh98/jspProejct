package muni.order.dto;

public class OrderDeliveryDto {

	private int odNum;
	private String odName;
	private int odAddressNum;
	private String odAddress;
	private String odAddressEtc;
	private String odTel;
	private String odPhone;
	private String odEmail;
	private String odMemo;

	@Override
	public String toString() {
		return "OrderDeliveryDto [odNum=" + odNum + ", odName=" + odName + ", odAddressNum=" + odAddressNum
				+ ", odAddress=" + odAddress + ", odAddressEtc=" + odAddressEtc + ", odTel=" + odTel + ", odPhone="
				+ odPhone + ", odEmail=" + odEmail + ", odMemo=" + odMemo + "]";
	}

	public int getOdNum() {
		return odNum;
	}

	public void setOdNum(int odNum) {
		this.odNum = odNum;
	}

	public String getOdName() {
		return odName;
	}

	public void setOdName(String odName) {
		this.odName = odName;
	}

	public int getOdAddressNum() {
		return odAddressNum;
	}

	public void setOdAddressNum(int odAddressNum) {
		this.odAddressNum = odAddressNum;
	}

	public String getOdAddress() {
		return odAddress;
	}

	public void setOdAddress(String odAddress) {
		this.odAddress = odAddress;
	}

	public String getOdAddressEtc() {
		return odAddressEtc;
	}

	public void setOdAddressEtc(String odAddressEtc) {
		this.odAddressEtc = odAddressEtc;
	}

	public String getOdTel() {
		return odTel;
	}

	public void setOdTel(String odTel) {
		this.odTel = odTel;
	}

	public String getOdPhone() {
		return odPhone;
	}

	public void setOdPhone(String odPhone) {
		this.odPhone = odPhone;
	}

	public String getOdEmail() {
		return odEmail;
	}

	public void setOdEmail(String odEmail) {
		this.odEmail = odEmail;
	}

	public String getOdMemo() {
		return odMemo;
	}

	public void setOdMemo(String odMemo) {
		this.odMemo = odMemo;
	}

}
