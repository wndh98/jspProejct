package muni.order.dto;

public class OrderProductListDto {
	private int oplNum;
	private int olId;
	private int piNum;
	private String poNum;
	private String oplName;
	private int oplPrice;
	private int oplCount;
	private int oplPoint;
	private String oplState;

	@Override
	public String toString() {
		return "OrderProductListDto [oplNum=" + oplNum + ", olId=" + olId + ", piNum=" + piNum + ", poNum=" + poNum
				+ ", oplName=" + oplName + ", oplPrice=" + oplPrice + ", oplCount=" + oplCount + ", oplPoint="
				+ oplPoint + ", oplState=" + oplState + "]";
	}

	public int getOplNum() {
		return oplNum;
	}

	public void setOplNum(int oplNum) {
		this.oplNum = oplNum;
	}

	public int getOlId() {
		return olId;
	}

	public void setOlId(int olId) {
		this.olId = olId;
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

	public String getOplName() {
		return oplName;
	}

	public void setOplName(String oplName) {
		this.oplName = oplName;
	}

	public int getOplPrice() {
		return oplPrice;
	}

	public void setOplPrice(int oplPrice) {
		this.oplPrice = oplPrice;
	}

	public int getOplCount() {
		return oplCount;
	}

	public void setOplCount(int oplCount) {
		this.oplCount = oplCount;
	}

	public int getOplPoint() {
		return oplPoint;
	}

	public void setOplPoint(int oplPoint) {
		this.oplPoint = oplPoint;
	}

	public String getOplState() {
		return oplState;
	}

	public void setOplState(String oplState) {
		this.oplState = oplState;
	}

}
