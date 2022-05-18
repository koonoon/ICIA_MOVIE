package com.icia.movie.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.ReserveDAO;
import com.icia.movie.dto.ReserveDTO;
import com.icia.movie.dto.SchedulesDTO;
import com.icia.movie.dto.TheaterDTO;

@Service
public class ReserveService {
	
	private ModelAndView mav = new ModelAndView();
	
	List<TheaterDTO> thList = new ArrayList<TheaterDTO>();
	List<SchedulesDTO> scList = new ArrayList<SchedulesDTO>();
	List<ReserveDTO> reList = new ArrayList<ReserveDTO>();	
	@Autowired
	private ReserveDAO rsDAO;

	

	public List<TheaterDTO> theaterList(String movCode) {
		// TODO Auto-generated method stub
		
		thList = rsDAO.theaterList(movCode);
		
		return thList;
	}

	public List<SchedulesDTO> schedules(String movCode,String thCode, String scHall) {
		// TODO Auto-generated method stub
		SchedulesDTO scDTO = new SchedulesDTO();
		
		scDTO.setScThcode(thCode);
		scDTO.setScHall(scHall);
		scDTO.setScMovcode(movCode);
		scList = rsDAO.schedules(scDTO);
		
		System.out.println("스케줄 : "+scList);
		return scList;
	}

//	public List<ReserveDTO> reserve(String thCode, String scHall,  String scMovcode, String scTime, String rvMid) {
//		// TODO Auto-generated method stub
//		ReserveDTO rsDTO = new ReserveDTO();
//		rsDTO.setRvScthcode(thCode);
//		rsDTO.setRvSchall(scHall);
//		
//		System.out.println("서비스 접근");
//		System.out.println("rsDTO : "+rsDTO);
//		int result = rsDAO.reserve(rsDTO); 
//		
//		if(result > 0) {
//			System.out.println("삽입 성공");
//		}else {
//			System.out.println("삽입?");
//		}
//		
//		
//		
//		
//		return reList;
//	}

	public List<ReserveDTO> reserve(ReserveDTO reserve) {
		// TODO Auto-generated method stub
		int result = rsDAO.reserve(reserve); 
		
		return reList;
	}

	public ModelAndView reserveInfo(String mId) {
		// TODO Auto-generated method stub
		
		reList = rsDAO.reserveInfo(mId);
		System.out.println("예매목록[2]"+reList);
		mav.addObject("reList",reList);
		mav.addObject("rvMid",mId);
		mav.setViewName("reserveInfo");
		
		System.out.println("예매목록[4]"+mav);
		return mav;
	}

	public ModelAndView reserveDelete(String rvCode, String mId) {
		// TODO Auto-generated method stub
		
		int result = rsDAO.reserveDelete(rvCode);
		
		if(result > 0) {
			mav.setViewName("redirect:/reserveInfo?mId="+mId);
		}else {
			mav.setViewName("index");
		}
		
		return mav;
	}

}
