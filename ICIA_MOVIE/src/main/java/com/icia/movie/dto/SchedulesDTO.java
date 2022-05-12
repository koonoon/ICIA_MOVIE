package com.icia.movie.dto;

import java.sql.Date;

public class SchedulesDTO {

	private String scHall;
	private Date scTime;
	private String scthCode;
	private String scmovCode;
	
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
	public String getScthCode() {
		return scthCode;
	}
	public void setScthCode(String scthCode) {
		this.scthCode = scthCode;
	}
	public String getScmovCode() {
		return scmovCode;
	}
	public void setScmovCode(String scmovCode) {
		this.scmovCode = scmovCode;
	}
	@Override
	public String toString() {
		return "SchedulesDTO [scHall=" + scHall + ", scTime=" + scTime + ", scthCode=" + scthCode + ", scmovCode="
				+ scmovCode + "]";
	}
	
	
}
