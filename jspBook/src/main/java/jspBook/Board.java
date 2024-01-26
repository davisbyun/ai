package jspBook;

import java.io.Serializable;

public class Board implements Serializable {

	private int bNo ;
	private String bTitle ;
	private String bContent ;
	private String writer ;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	
}
