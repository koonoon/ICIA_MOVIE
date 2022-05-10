package com.icia.movie.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CommentDTO {

	private  int cNum;
	private String cmCode;
	private String cWriter;
	private String cComment;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date cDate;

	public int getcNum() {
		return cNum;
	}

	public void setcNum(int cNum) {
		this.cNum = cNum;
	}

	public String getCmCode() {
		return cmCode;
	}

	public void setCmCode(String cmCode) {
		this.cmCode = cmCode;
	}

	public String getcWriter() {
		return cWriter;
	}

	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}

	public String getcComment() {
		return cComment;
	}

	public void setcComment(String cComment) {
		this.cComment = cComment;
	}

	public Date getcDate() {
		return cDate;
	}

	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}

	@Override
	public String toString() {
		return "CommentDTO [cNum=" + cNum + ", cmCode=" + cmCode + ", cWriter=" + cWriter + ", cComment=" + cComment
				+ ", cDate=" + cDate + "]";
	}
	
	

}