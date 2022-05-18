package com.icia.movie.dto;

public class TheaterDTO {

	private String thCode;
	private String thName;
	private String thAddr;
	private String thHall;
	private String thSit;
	
	
	
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
	@Override
	public String toString() {
		return "TheaterDTO [thCode=" + thCode + ", thName=" + thName + ", thAddr=" + thAddr + ", thHall=" + thHall
				+ ", thSit=" + thSit + "]";
	}
	
	
	
	
}
