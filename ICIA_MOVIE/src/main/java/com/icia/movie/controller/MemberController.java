package com.icia.movie.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.MemberDTO;
import com.icia.movie.service.MemberService;

@Controller
public class MemberController {
	
	ModelAndView mav = new ModelAndView();
	
	@Autowired
	MemberService msvc;
	
	@Autowired
	HttpSession session;
	

	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		
		return "loginForm";
	}
	
	// registForm : 회원가입 양식
	@RequestMapping(value = "/registForm", method = RequestMethod.GET)
	public String registForm() {
		
		return "registForm";
	}
	
	// regist : 회원가입 처리
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public ModelAndView regist(@ModelAttribute MemberDTO member) throws IllegalStateException, IOException {
		System.out.println("[1]jsp에서 controller로 가져온 member 정보\n" + member);
		mav = msvc.regist(member);
		System.out.println("[5]Service에서 controller로 가져온 member 정보\n" + mav);
		return mav;
	}
	
	
	// memberList : 회원목록
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public ModelAndView memberList(@RequestParam(value="page", required =  false, defaultValue="1") int page, @RequestParam(value="limit", required = false, defaultValue="5") int limit) {
		
		mav = msvc.memberList(page ,limit);
		
		
		return mav;
	}
	
	// memberLogin : 로그인
//	@RequestMapping(value = "/memberLogin2", method = RequestMethod.POST)
//	public ModelAndView memberLogin(@ModelAttribute MemberDTO member) {
//		
//		mav = msvc.memberLogin(member);
//		
//		return mav;
//	}
	
	// memberLogin : 로그인 
		@RequestMapping(value = "/memberLogin", method = {RequestMethod.GET,RequestMethod.POST})
		@ResponseBody
		public Map<Object, Object> memberLogin2(@RequestBody Map<String, Object> paramData) {
			
			System.out.println("통신");
			String loginId =  paramData.get("userId").toString().replace("="," ").trim(); //input 쪽에서 유저가 입력한 값 가져오기
	        String password =  paramData.get("password").toString().replace("="," ").trim();
			Map<Object, Object> map = new HashMap<Object, Object>();
//			
			if(session.getAttribute("login") != null) {
				System.out.println("이미 로그인중");
				session.removeAttribute("login");
			}
			
			System.out.println("ajax 데이터 : "+loginId);
			System.out.println("ajax 데이터 : "+password);
//	
//			
			int check = msvc.mLoginCheck(loginId, password);
//			/* boolean check2 = false; */
			map.put("check", check);
			
			return map;
		}
	
	// logiut : 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		session.invalidate();
		
		return "index";
	}

	// memberInfo : 회원정보 상세보기
	

	@GetMapping(value = "/memberInfo")
	public ModelAndView memberInfo(@RequestParam("mId") String mId) {
		
		mav = msvc.memberInfo(mId);
		
		return mav;
	}
	
	
	
	// idcheck : 아이디 중복 체크
	@RequestMapping(value = "/regist/check", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> idCheck(@RequestParam(value="id", required=false) String mId){
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		System.out.println("jsp에서 Controller로 가져온 mId : "+mId);
		 int count = 0;
		 
		 count = msvc.idCheck(mId);
		 map.put("cnt", count);
		 System.out.println("Service에서 Controller로 중복여부 가져온 결과 : "+count); 
		 return map;
	}
	
	
	// emailCheck : 이메일 중복 체크
	@RequestMapping(value = "/regist/emailcheck", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> emailCheck(@RequestParam(value="email", required=false) String email){
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		System.out.println("jsp에서 Controller로 가져온 eamil : "+email);
		 int count = 0;
		 
		 count = msvc.emailCheck(email);
		 map.put("cnt", count);
		 System.out.println("Service에서 Controller로 중복여부 가져온 결과 : "+count); 
		 return map;
	}
	
	// regist/emailcheck2 : 이메일 인증 ajax
	@RequestMapping(value = "/regist/emailcheck2", method = RequestMethod.POST)
	@ResponseBody
	public String emailCheck2(@RequestParam("mEmail") String mEmail) {
		String uuid = msvc.emailCheck2(mEmail);
		
		return uuid;
	}
	
	// 회원 정보수정 폼 이동
	@GetMapping(value = "/memberModify")
	public ModelAndView memberModifyForm(@ModelAttribute MemberDTO member) {
		
		mav = msvc.memberModifyForm(member);
		
		return mav;
	}
	
	
	// 회원 정보수정
	@PostMapping(value = "/memberModify/update")
	public ModelAndView memberModify(@ModelAttribute MemberDTO member) throws IllegalStateException, IOException {
		
		mav = msvc.memberModify(member);
		
		return mav;
	}
	

	
	// delete : 회원 탈퇴
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView delete(@RequestParam("mId") String mId) {
		
		System.out.println("[1]회원 탈퇴 "+mId);
		mav = msvc.delete(mId);
		System.out.println("[5]회원 탈퇴 "+mav);
		return mav;
	}


}
