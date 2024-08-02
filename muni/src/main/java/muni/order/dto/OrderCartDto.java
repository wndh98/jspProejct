package muni.order.dto;

public class OrderCartDto {
	private int ocNum;
	private String ocId;
	private int oc;
	private String poNum;
	private int ocCount;
	private int ocPrice;
	
	
	@Override
	public String toString() {
		return "OrderCartDto [ocNum=" + ocNum + ", ocId=" + ocId + ", oc=" + oc + ", poNum=" + poNum + ", ocCount="
				+ ocCount + ", ocPrice=" + ocPrice + "]";
	}
	public int getOcNum() {
		return ocNum;
	}
	public void setOcNum(int ocNum) {
		this.ocNum = ocNum;
	}
	public String getOcId() {
		return ocId;
	}
	public void setOcId(String ocId) {
		this.ocId = ocId;
	}
	public int getOc() {
		return oc;
	}
	public void setOc(int oc) {
		this.oc = oc;
	}
	public String getPoNum() {
		return poNum;
	}
	public void setPoNum(String poNum) {
		this.poNum = poNum;
	}
	public int getOcCount() {
		return ocCount;
	}
	public void setOcCount(int ocCount) {
		this.ocCount = ocCount;
	}
	public int getOcPrice() {
		return ocPrice;
	}
	public void setOcPrice(int ocPrice) {
		this.ocPrice = ocPrice;
	}

}
