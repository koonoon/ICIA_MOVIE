package com.icia.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.service.SchedulesService;

@Controller
public class SchedulesController {

	private ModelAndView mav = new ModelAndView();
	
	@Autowired
	private SchedulesService scsvc;
	
	@RequestMapping(value = "/schedulesForm", method = RequestMethod.GET)
	public String schedulesForm() {
		
		return "schedulesForm";
	}
}
