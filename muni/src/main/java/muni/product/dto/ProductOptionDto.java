package muni.product.dto;

public class ProductOptionDto {
	private String poNum;
	private String poName;
	private int piNum;
	private int poPrice;
	private int poSail;
	private int poSailPrice;
	private int poCount;
	private int poPoint;
	
	
	public ProductOptionDto(String poNum, String poName, int piNum, int poPrice, int poSail, int poSailPrice, int poCount,
			int poPoint) {
		super();
		this.poNum = poNum;
		this.poName = poName;
		this.piNum = piNum;
		this.poPrice = poPrice;
		this.poSail = poSail;
		this.poSailPrice = poSailPrice;
		this.poCount = poCount;
		this.poPoint = poPoint;
	}
	
	
	public ProductOptionDto() {
		super();
	}

	public String getPoNum() {
		return poNum;
	}
	public void setPoNum(String poNum) {
		this.poNum = poNum;
	}
	public String getPoName() {
		return poName;
	}
	public void setPoName(String poName) {
		this.poName = poName;
	}
	public int getPiNum() {
		return piNum;
	}
	public void setPiNum(int piNum) {
		this.piNum = piNum;
	}
	public int getPoPrice() {
		return poPrice;
	}
	public void setPoPrice(int poPrice) {
		this.poPrice = poPrice;
	}
	public int getPoSail() {
		return poSail;
	}
	public void setPoSail(int poSail) {
		this.poSail = poSail;
	}
	public int getPoSailPrice() {
		return poSailPrice;
	}
	public void setPoSailPrice(int poSailPrice) {
		this.poSailPrice = poSailPrice;
	}
	public int getPoCount() {
		return poCount;
	}
	public void setPoCount(int poCount) {
		this.poCount = poCount;
	}
	public int getPoPoint() {
		return poPoint;
	}
	public void setPoPoint(int poPoint) {
		this.poPoint = poPoint;
	}

}
