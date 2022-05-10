package com.icia.movie.dto;

public class TheaterDTO {

	private String thCode;
	private String thName;
	private String thAddr;
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
	@Override
	public String toString() {
		return "TheaterDTO [thCode=" + thCode + ", thName=" + thName + ", thAddr=" + thAddr + "]";
	}
	
	
}
