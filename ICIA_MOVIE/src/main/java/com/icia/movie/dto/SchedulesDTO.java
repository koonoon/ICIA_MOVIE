package com.icia.movie.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class SchedulesDTO {
	
//    SCHALL NVARCHAR2(10),
//    SCTIME DATE,
//    SCTHCODE NVARCHAR2(4),
//    SCMOVCODE NVARCHAR2(6)
	
	private String scHall;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
	private Date scTime;
	private String inScTime;
	private String scThcode;
	private String scMovcode;
	private String thCode;
	private String thName;
	private String thAddr;
	private String thHall;
	private String thSit;
	
	private String movCode;
	private String movName;
	public String getScHall() {
		return scHall;
	}
	public void setScHall(String scHall) {
		this.scHall = scHall;
	}
	public Date getScTime() {
		return scTime;
	}
	public void setScTime(Date scTime) {
		this.scTime = scTime;
	}
	public String getInScTime() {
		return inScTime;
	}
	public void setInScTime(String inScTime) {
		this.inScTime = inScTime;
	}
	public String getScThcode() {
		return scThcode;
	}
	public void setScThcode(String scThcode) {
		this.scThcode = scThcode;
	}
	public String getScMovcode() {
		return scMovcode;
	}
	public void setScMovcode(String scMovcode) {
		this.scMovcode = scMovcode;
	}
	public String getThCode() {
		return thCode;
	}
	public void setThCode(String thCode) {
		this.thCode = thCode;
	}
	public String getThName() {
		return thName;
	}
	public void setThName(String thName) {
		this.thName = thName;
	}
	public String getThAddr() {
		return thAddr;
	}
	public void setThAddr(String thAddr) {
		this.thAddr = thAddr;
	}
	public String getThHall() {
		return thHall;
	}
	public void setThHall(String thHall) {
		this.thHall = thHall;
	}
	public String getThSit() {
		return thSit;
	}
	public void setThSit(String thSit) {
		this.thSit = thSit;
	}
	public String getMovCode() {
		return movCode;
	}
	public void setMovCode(String movCode) {
		this.movCode = movCode;
	}
	public String getMovName() {
		return movName;
	}
	public void setMovName(String movName) {
		this.movName = movName;
	}
	@Override
	public String toString() {
		return "SchedulesDTO [scHall=" + scHall + ", scTime=" + scTime + ", inScTime=" + inScTime + ", scThcode="
				+ scThcode + ", scMovcode=" + scMovcode + ", thCode=" + thCode + ", thName=" + thName + ", thAddr="
				+ thAddr + ", thHall=" + thHall + ", thSit=" + thSit + ", movCode=" + movCode + ", movName=" + movName
				+ "]";
	}
	
	

	
	
}
