package com.icia.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.TheaterDTO;
import com.icia.movie.service.TheaterService;

@Controller
public class TheaterController {

	@Autowired
	private TheaterService thsvc;
	
	private ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value = "/theaterForm", method = RequestMethod.GET)
	public String theaterForm() {
		
		return "theaterForm";
	}
	
	// theaterInsert
		@PostMapping(value = "/theaterInsert")
		public ModelAndView theaterInsert(@ModelAttribute TheaterDTO theater) {
			System.out.println("[1]"+theater);
			mav = thsvc.theatherInsert(theater);
			System.out.println("[5]"+mav);
			return mav;
		}
}
