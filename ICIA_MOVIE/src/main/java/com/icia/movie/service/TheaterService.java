package com.icia.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.TheaterDAO;
import com.icia.movie.dto.MovieDTO;
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

	
	
}
