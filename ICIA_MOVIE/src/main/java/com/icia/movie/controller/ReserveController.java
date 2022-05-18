package com.icia.movie.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.ReserveDTO;
import com.icia.movie.dto.SchedulesDTO;
import com.icia.movie.dto.TheaterDTO;
import com.icia.movie.service.ReserveService;

@Controller
public class ReserveController {
	
	private ModelAndView mav = new ModelAndView();

	List<TheaterDTO> thList = new ArrayList<TheaterDTO>();
	List<SchedulesDTO> scList = new ArrayList<SchedulesDTO>();
	List<ReserveDTO> reList = new ArrayList<ReserveDTO>();
	
	
	@Autowired
	private ReserveService rsvc;
	
	
	@GetMapping(value="/reserveInfo")
	public ModelAndView reserveInfo(@RequestParam(value = "mId") String mId) {
		System.out.println("예매목록[1]"+mId);
		
		mav = rsvc.reserveInfo(mId);
		System.out.println("예매목록[5]"+mav);
		return mav;
	}

	@PostMapping(value = "/movieReserve/thList")
	@ResponseBody
	public List<TheaterDTO> theaterList(@RequestParam(value = "movCode") String movCode){ 
		
		System.out.println("movCode : "+movCode);
		thList = rsvc.theaterList(movCode);
		
		return thList;
	}
	
	@PostMapping(value = "/movieReserve/thList/schedules")
	@ResponseBody
	public List<SchedulesDTO> schedules(@RequestParam(value = "movCode") String movCode, @RequestParam(value = "thCode") String thCode, @RequestParam(value = "scHall") String scHall){ 
		
		System.out.println("movCode : "+movCode +" thCode : "+thCode+" scHall : "+scHall);
		scList = rsvc.schedules(movCode, thCode, scHall);
		
		return scList;
	}
	
	//movieReserve/thList/schedules/reserve
	@PostMapping(value = "/movieReserve/thList/schedules/reserve")
	@ResponseBody
	public List<ReserveDTO> reserve(@ModelAttribute ReserveDTO reserve){

		System.out.println("reserve : + "+reserve);
		reList = rsvc.reserve(reserve);
		
		return reList;
	}
	
	@GetMapping(value = "/reserveInfo/delete")
	public ModelAndView reserveDelete(@RequestParam(value = "rvCode") String rvCode, @RequestParam(value = "rvMid") String rvMid) {
		System.out.println("[1] "+ rvCode+" "+rvMid);
		mav = rsvc.reserveDelete(rvCode, rvMid);
		
		return mav;
	}

}
