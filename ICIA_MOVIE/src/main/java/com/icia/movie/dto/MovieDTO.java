package com.icia.movie.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class MovieDTO {
	
	private String movCode;
	private String movName;
	private String movDirector;
	private String movGenre;
	private int movGrade;
	private Date movOpen;
	private MultipartFile movPosterFile;
	private String movPoster;
	private String movStory;
	private int movStarScore;
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
	public String getMovDirector() {
		return movDirector;
	}
	public void setMovDirector(String movDirector) {
		this.movDirector = movDirector;
	}
	public String getMovGenre() {
		return movGenre;
	}
	public void setMovGenre(String movGenre) {
		this.movGenre = movGenre;
	}
	public int getMovGrade() {
		return movGrade;
	}
	public void setMovGrade(int movGrade) {
		this.movGrade = movGrade;
	}
	public Date getMovOpen() {
		return movOpen;
	}
	public void setMovOpen(Date movOpen) {
		this.movOpen = movOpen;
	}
	public MultipartFile getMovPosterFile() {
		return movPosterFile;
	}
	public void setMovPosterFile(MultipartFile movPosterFile) {
		this.movPosterFile = movPosterFile;
	}
	public String getMovPoster() {
		return movPoster;
	}
	public void setMovPoster(String movPoster) {
		this.movPoster = movPoster;
	}
	public String getMovStory() {
		return movStory;
	}
	public void setMovStory(String movStory) {
		this.movStory = movStory;
	}
	public int getMovStarScore() {
		return movStarScore;
	}
	public void setMovStarScore(int movStarScore) {
		this.movStarScore = movStarScore;
	}
	@Override
	public String toString() {
		return "MovieDTO [movCode=" + movCode + ", movName=" + movName + ", movDirector=" + movDirector + ", movGenre="
				+ movGenre + ", movGrade=" + movGrade + ", movOpen=" + movOpen + ", movPosterFile=" + movPosterFile
				+ ", movPoster=" + movPoster + ", movStory=" + movStory + ", movStarScore=" + movStarScore + "]";
	}
	
	
	


	

}
