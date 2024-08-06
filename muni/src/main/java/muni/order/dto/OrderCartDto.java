package muni.order.dto;

public class OrderCartDto {
	private int ocNum;
	private String ocId;
	private int piNum;
	private String poNum;
	private int ocCount;
	private int ocPrice;



	@Override
	public String toString() {
		return "OrderCartDto [ocNum=" + ocNum + ", ocId=" + ocId + ", piNum=" + piNum + ", poNum=" + poNum
				+ ", ocCount=" + ocCount + ", ocPrice=" + ocPrice + "]";
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

	public int getPiNum() {
		return piNum;
	}

	public void setPiNum(int piNum) {
		this.piNum = piNum;
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
