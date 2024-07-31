package muni.product.dto;

import java.sql.Date;

public class ProductItemDto {
	private int piNum;
	private String pcId;
	private String piName;
	private int piCprice;
	private int piPrice;
	private int piSail;
	private int piSailPrice;
	private int piDelivery;
	private int piPoint;
	private int piCount;
	private String piContent;
	private int piStatus;
	private int piHit;
	private int piColor;
	private int piSize;
	private String piFile1;
	private String piFile2;
	private String piFile3;
	private String piFile4;
	private String piFile5;
	private String piFile6;
	private String piFile7;
	private Date piDate;

	public ProductItemDto(int piNum, String pcId, String piName, int piCprice, int piPrice, int piSail, int piSailPrice,
			int piDelivery, int piPoint, int piCount, String piContent, int piStatus, int piHit, int piColor,
			int piSize, String piFile1, String piFile2, String piFile3, String piFile4, String piFile5, String piFile6,
			String piFile7, Date piDate) {
		super();
		this.piNum = piNum;
		this.pcId = pcId;
		this.piName = piName;
		this.piCprice = piCprice;
		this.piPrice = piPrice;
		this.piSail = piSail;
		this.piSailPrice = piSailPrice;
		this.piDelivery = piDelivery;
		this.piPoint = piPoint;
		this.piCount = piCount;
		this.piContent = piContent;
		this.piStatus = piStatus;
		this.piHit = piHit;
		this.piColor = piColor;
		this.piSize = piSize;
		this.piFile1 = piFile1;
		this.piFile2 = piFile2;
		this.piFile3 = piFile3;
		this.piFile4 = piFile4;
		this.piFile5 = piFile5;
		this.piFile6 = piFile6;
		this.piFile7 = piFile7;
		this.piDate = piDate;
	}

	public ProductItemDto() {
		super();
	}

	public int getPiNum() {
		return piNum;
	}

	public void setPiNum(int piNum) {
		this.piNum = piNum;
	}

	public String getPcId() {
		return pcId;
	}

	public void setPcId(String pcId) {
		this.pcId = pcId;
	}

	public String getPiName() {
		return piName;
	}

	public void setPiName(String piName) {
		this.piName = piName;
	}

	public int getPiCprice() {
		return piCprice;
	}

	public void setPiCprice(int piCprice) {
		this.piCprice = piCprice;
	}

	public int getPiPrice() {
		return piPrice;
	}

	public void setPiPrice(int piPrice) {
		this.piPrice = piPrice;
	}

	public int getPiSail() {
		return piSail;
	}

	public void setPiSail(int piSail) {
		this.piSail = piSail;
	}

	public int getPiSailPrice() {
		return piSailPrice;
	}

	public void setPiSailPrice(int piSailPrice) {
		this.piSailPrice = piSailPrice;
	}

	public int getPiDelivery() {
		return piDelivery;
	}

	public void setPiDelivery(int piDelivery) {
		this.piDelivery = piDelivery;
	}

	public int getPiPoint() {
		return piPoint;
	}

	public void setPiPoint(int piPoint) {
		this.piPoint = piPoint;
	}

	public int getPiCount() {
		return piCount;
	}

	public void setPiCount(int piCount) {
		this.piCount = piCount;
	}

	public String getPiContent() {
		return piContent;
	}

	public void setPiContent(String piContent) {
		this.piContent = piContent;
	}

	public int getPiStatus() {
		return piStatus;
	}

	public void setPiStatus(int piStatus) {
		this.piStatus = piStatus;
	}

	public int getPiHit() {
		return piHit;
	}

	public void setPiHit(int piHit) {
		this.piHit = piHit;
	}

	public int getPiColor() {
		return piColor;
	}

	public void setPiColor(int piColor) {
		this.piColor = piColor;
	}

	public int getPiSize() {
		return piSize;
	}

	public void setPiSize(int piSize) {
		this.piSize = piSize;
	}

	public String getPiFile1() {
		return piFile1;
	}

	public void setPiFile1(String piFile1) {
		this.piFile1 = piFile1;
	}

	public String getPiFile2() {
		return piFile2;
	}

	public void setPiFile2(String piFile2) {
		this.piFile2 = piFile2;
	}

	public String getPiFile3() {
		return piFile3;
	}

	public void setPiFile3(String piFile3) {
		this.piFile3 = piFile3;
	}

	public String getPiFile4() {
		return piFile4;
	}

	public void setPiFile4(String piFile4) {
		this.piFile4 = piFile4;
	}

	public String getPiFile5() {
		return piFile5;
	}

	public void setPiFile5(String piFile5) {
		this.piFile5 = piFile5;
	}

	public String getPiFile6() {
		return piFile6;
	}

	public void setPiFile6(String piFile6) {
		this.piFile6 = piFile6;
	}

	public String getPiFile7() {
		return piFile7;
	}

	public void setPiFile7(String piFile7) {
		this.piFile7 = piFile7;
	}

	public Date getPiDate() {
		return piDate;
	}

	public void setPiDate(Date piDate) {
		this.piDate = piDate;
	}

	@Override
	public String toString() {
		return "ProductItemDto [piNum=" + piNum + ", pcId=" + pcId + ", piName=" + piName + ", piCprice=" + piCprice
				+ ", piPrice=" + piPrice + ", piSail=" + piSail + ", piSailPrice=" + piSailPrice + ", piDelivery="
				+ piDelivery + ", piPoint=" + piPoint + ", piCount=" + piCount + ", piContent=" + piContent
				+ ", piStatus=" + piStatus + ", piHit=" + piHit + ", piColor=" + piColor + ", piSize=" + piSize
				+ ", piFile1=" + piFile1 + ", piFile2=" + piFile2 + ", piFile3=" + piFile3 + ", piFile4=" + piFile4
				+ ", piFile5=" + piFile5 + ", piFile6=" + piFile6 + ", piFile7=" + piFile7 + ", piDate=" + piDate + "]";
	}

}