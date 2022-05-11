package com.icia.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.SchedulesDAO;

@Service
public class SchedulesService {

	private ModelAndView mav = new ModelAndView();
	
	@Autowired
	private SchedulesDAO scdao;
}
