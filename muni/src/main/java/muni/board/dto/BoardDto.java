package muni.board.dto;

import java.sql.Date;

public class BoardDto {
	private int bNum;
	private int piNum;
	private String userId;
	private String bSubject;
	private String bContent;
	private int bStar;
	private String bWriter;
	private String bYoutube;
	private int bCount;
	private Date bDate;
	private int bScreate;

	public int getbNum() {
		return bNum;
	}

	public void setbNum(int bNum) {
		this.bNum = bNum;
	}

	public int getPiNum() {
		return piNum;
	}

	public void setPiNum(int piNum) {
		this.piNum = piNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getbSubject() {
		return bSubject;
	}

	public void setbSubject(String bSubject) {
		this.bSubject = bSubject;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public int getbStar() {
		return bStar;
	}

	public void setbStar(int bStar) {
		this.bStar = bStar;
	}

	public String getbWriter() {
		return bWriter;
	}

	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}

	public String getbYoutube() {
		return bYoutube;
	}

	public void setbYoutube(String bYoutube) {
		this.bYoutube = bYoutube;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public int getbScreate() {
		return bScreate;
	}

	public void setbScreate(int bScreate) {
		this.bScreate = bScreate;
	}

}
