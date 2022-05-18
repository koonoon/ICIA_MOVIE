package com.icia.movie.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CommentDTO {

	private  int cNum;
	private String cmCode;
	private String cWriter;
	private String cComment;
	private double cStarScore;
	private int page;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int startRow;
	private int endRow;
	private int limit;

	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}

	
	public double getcStarScore() {
		return cStarScore;
	}

	public void setcStarScore(double cStarScore) {
		this.cStarScore = cStarScore;
	}

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
				+ ", cStarScore=" + cStarScore + ", page=" + page + ", maxPage=" + maxPage + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", startRow=" + startRow + ", endRow=" + endRow + ", limit=" + limit
				+ ", cDate=" + cDate + "]";
	}

	

	
	
	

}