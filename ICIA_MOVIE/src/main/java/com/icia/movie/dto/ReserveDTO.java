package com.icia.movie.dto;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ReserveDTO {

	private String rvCode;
	
	private String rvMid;
	private String rvSchall;	
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private String rvSctime;
//	private Timestamp rvSctime;
	private String thName;
	public String getThName() {
		return thName;
	}
	public void setThName(String thName) {
		this.thName = thName;
	}
	private String scTime;
	private	String rvScthcode;
	private int rvCount;
	private String rvscMovcode;
	private String movName;
	private String mName;
	
	private String movPoster;
	
	public String getRvSctime() {
		return rvSctime;
	}
	public void setRvSctime(String rvSctime) {
		this.rvSctime = rvSctime;
	}
	public String getRvCode() {
		return rvCode;
	}
	public void setRvCode(String rvCode) {
		this.rvCode = rvCode;
	}
	public String getRvMid() {
		return rvMid;
	}
	public void setRvMid(String rvMid) {
		this.rvMid = rvMid;
	}
	public String getRvSchall() {
		return rvSchall;
	}
	public void setRvSchall(String rvSchall) {
		this.rvSchall = rvSchall;
	}

	public String getScTime() {
		return scTime;
	}
	public void setScTime(String scTime) {
		this.scTime = scTime;
	}
	public String getRvScthcode() {
		return rvScthcode;
	}
	public void setRvScthcode(String rvScthcode) {
		this.rvScthcode = rvScthcode;
	}
	public int getRvCount() {
		return rvCount;
	}
	public void setRvCount(int rvCount) {
		this.rvCount = rvCount;
	}
	public String getRvscMovcode() {
		return rvscMovcode;
	}
	public void setRvscMovcode(String rvscMovcode) {
		this.rvscMovcode = rvscMovcode;
	}
	public String getMovName() {
		return movName;
	}
	public void setMovName(String movName) {
		this.movName = movName;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getMovPoster() {
		return movPoster;
	}
	public void setMovPoster(String movPoster) {
		this.movPoster = movPoster;
	}
	@Override
	public String toString() {
		return "ReserveDTO [rvCode=" + rvCode + ", rvMid=" + rvMid + ", rvSchall=" + rvSchall + ", rvSctime=" + rvSctime
				+ ", thName=" + thName + ", scTime=" + scTime + ", rvScthcode=" + rvScthcode + ", rvCount=" + rvCount
				+ ", rvscMovcode=" + rvscMovcode + ", movName=" + movName + ", mName=" + mName + ", movPoster="
				+ movPoster + "]";
	}


	
}
