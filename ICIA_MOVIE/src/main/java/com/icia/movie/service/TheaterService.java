package com.icia.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.TheaterDAO;
import com.icia.movie.dto.TheaterDTO;

@Service
public class TheaterService {

	private ModelAndView mav = new ModelAndView();
	
	@Autowired
	private TheaterDAO thdao;

	public ModelAndView theatherInsert(TheaterDTO theater) {
		
		int result = thdao.theaterInsert(theater);
		
		if(result > 0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("index");
		}
		
		return mav;
	}
	
	public ModelAndView TheaterList() {
		List <TheaterDTO> TheaterList = thdao.TheaterList();
		System.out.println("[2]");
		mav.setViewName("theaterList");
		mav.addObject("TheaterList",TheaterList);
		System.out.println("[4]" + TheaterList);
		return mav;
	}

	public ModelAndView thDelete(String thCode) {
		int result = thdao.thDelete(thCode);
		
		if(result>0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("index");
		}
		return mav;
	}

	public ModelAndView thModiForm(String thCode) {
		 TheaterDTO theater = thdao.thView(thCode);
		 
		 mav.addObject("modi", theater);
		 mav.setViewName("theaterModify");
		return mav;
	}

	public ModelAndView theaterModify(TheaterDTO theater) {
		int result = thdao.theaterModify(theater);
		
		if(result>0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("index");
		}
		return mav;
	}

	
	
	
}
