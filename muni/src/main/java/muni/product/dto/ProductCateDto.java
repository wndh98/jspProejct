package muni.product.dto;

public class ProductCateDto {
	private String pcId;
	private String pcName;

	public String getPcId() {
		return pcId;
	}

	public void setPcId(String pcId) {
		this.pcId = pcId;
	}

	public String getPcName() {
		return pcName;
	}

	public void setPcName(String pcName) {
		this.pcName = pcName;
	}

	public ProductCateDto(String pcId, String pcName) {
		super();
		this.pcId = pcId;
		this.pcName = pcName;
	}

	public ProductCateDto() {
		super();
	}

}
