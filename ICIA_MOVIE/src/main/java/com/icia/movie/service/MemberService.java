package com.icia.movie.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.MemberDAO;
import com.icia.movie.dto.MemberDTO;
import com.icia.movie.dto.PageDTO;

@Service
public class MemberService {

	// ModelAndView 객체 생성
	private ModelAndView mav = new ModelAndView();

	// dao(Repository) 연결
	@Autowired
	private MemberDAO mdao;

	// session 설정
	@Autowired
	private HttpSession session;
	
	// security 설정
	@Autowired
	private BCryptPasswordEncoder pwEnc;
	
	// 이메일 인증 설정
	@Autowired
	private JavaMailSender mailsender;
	

	// 회원가입
	public ModelAndView regist(MemberDTO member) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		System.out.println("[2] 회원가입 " + member);
		
		// 1. 파일 업로드 처리
		UUID uuid = UUID.randomUUID();

		MultipartFile mProfile = member.getmProfile();

		String fileName = uuid.toString().substring(0, 8) + "_" + mProfile.getOriginalFilename();

		String filePath = "C:/Users/user/Documents/SpringWorkspace/MemBoardProject/src/main/webapp/resources/profile/"
				+ fileName;
//		String savePath = "D:/SpringProject/SpringWorkspace/MemBoardProject/src/main/webapp/resources/profile/"+fileName;

		if (!mProfile.isEmpty()) {
			mProfile.transferTo(new File(filePath));
			member.setmProfileName(fileName);
		}

		// 2. 주소 처리
		String addr1 = member.getAddr1();
		String addr2 = member.getAddr2();
		String addr3 = member.getAddr3();

		String mAddr = "(" + addr1 + ")" + addr2 + " " + addr3;

		if (!addr1.equals("")) {
			member.setmAddr(mAddr);
		}
		
		
		// 3. 비밀번호 암호화
		member.setmPw(pwEnc.encode(member.getmPw()));
		
		
		

		// 가입 여부를 확인하는 result 변수 선언
		int result = mdao.regist(member);

		if (result > 0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("index");
		}
		System.out.println("[4] 회원가입 " + member);
		return mav;
	}

	// 회원 목록
	public ModelAndView memberList(int page, int limit) {
		// TODO Auto-generated method stub
		// 한 화면에 보여줄 페이지 번호 갯수
		int block = 5;

		// 전체 회원수
		int mCount = mdao.mCount();

		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;

		int maxPage = (int) (Math.ceil((double) mCount / limit));
		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;
		int endPage = startPage + block - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		// 페이지 객체 생성
		PageDTO paging = new PageDTO();

		paging.setPage(page);

		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);

		paging.setLimit(limit);

		List<MemberDTO> memList = mdao.memberList(paging);

		mav.addObject("memberList", memList);
		mav.addObject("paging", paging);
		mav.setViewName("memberList");

		return mav;
	}

	public ModelAndView memberLogin(MemberDTO member) {
		// TODO Auto-generated method stub

		MemberDTO mdto = mdao.memberLogin(member);
		int check = mdao.loginCheck(member);
		System.out.println(check);
		String mId = mdto.getmId();
		if (check == 1) {
			System.out.println("로그인 성공");
			session.setAttribute("login", mdto);

			mav.setViewName("index");
		} else {

		}

		return mav;
	}

	public ModelAndView memberInfo(String mId) {
		// TODO Auto-generated method stub
		MemberDTO member = mdao.memberInfo(mId);
		
		mav.addObject("info",member);
		mav.setViewName("memberInfo");
		
		
		
		
		return mav;
	}

	public int idCheck(String mId) {
		// TODO Auto-generated method stub

		int result = mdao.idCheck(mId);

		return result;
	}

	public int emailCheck(String email) {
		// TODO Auto-generated method stub
		int result = mdao.emailCheck(email);

		return result;
	}

	
	
	public ModelAndView memberModifyForm(MemberDTO member) {
		// TODO Auto-generated method stub
		
		MemberDTO memDTO = mdao.memberInfo(member.getmId());
		
		mav.addObject("member",memDTO);
		mav.setViewName("memberModify");
		
		return mav;
	}
	
	


	public ModelAndView delete(String mId) {
		// TODO Auto-generated method stub

		int result = mdao.delete(mId);

		if (result > 0) {
			mav.setViewName("index");
			session.invalidate();
		} else {
			mav.setViewName("index");
		}

		return mav;
	}

	public int mLoginCheck(String loginId, String password) {
		// TODO Auto-generated method stub
		
		
		MemberDTO member = new MemberDTO();		
		
		member.setmId(loginId);
		member.setmPw(password);
		// (1) 입력한 id로 암호화 된 패스워드를 검색
		String ePw = mdao.mEpw(member.getmId());
		int result = 0;
		// (2) 입력한 패스워드와 암호화 된 패스워드가 일치하는지 비교
		if(pwEnc.matches(member.getmPw(), ePw)) {
			result = 1;
			System.out.println("로그인 성공");
			session.setAttribute("login", member);
		}
		
		System.out.println("[2]로그인 "+ member);
		/* result = mdao.mLoginCheck(member); */
//		if (result == 1) {
			
//
//			mav.setViewName("index");
//		}
		System.out.println("[4]로그인 "+result);
		return result;
	}

	public String emailCheck2(String mEmail) {
		// TODO Auto-generated method stub
		UUID uuid = UUID.randomUUID();
		
		String subuuid = uuid.toString().substring(0,8);
		
		MimeMessage mail = mailsender.createMimeMessage();
		
		String str = "<h2>안녕하세요. 시그너스 블로그 입니다.</h2></br>" 
					+ "<h3>인증번호는 "+subuuid+" 입니다.</h3>" 
					+ "<h3>인증번호를 입력해주세요!</h3>";
		
		System.out.println(subuuid);
		
		try {
			mail.setSubject("[이메일 인증] 시그너스 블로그 이메일 인증","utf-8"); 	 // 이메일 제목
			mail.setText(str,"utf-8","html");								 // 이메일 내용
			mail.addRecipient(RecipientType.TO, new InternetAddress(mEmail));// 이메일 받는 사람
			
			mailsender.send(mail);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return subuuid;
	}

	public ModelAndView memberModify(MemberDTO member) throws IllegalStateException, IOException {

		// 파일처리
		UUID uuid = UUID.randomUUID();
		MultipartFile mfile = member.getmProfile();
		String fileName = uuid.toString().substring(0,8)+"_"+mfile.getOriginalFilename();
		String filePath = "C:/Users/user/Documents/SpringWorkspace/ICIA_MOVIE/src/main/webapp/resources/poster/"+ fileName;
		
		if(!mfile.isEmpty()) {
			mfile.transferTo(new File(filePath));
			member.setmProfileName(fileName);
		}
		
	
		
		
		// 비밀번호 암호화
		
		member.setmPw(pwEnc.encode(member.getmPw()));
		
		
		// 주소 처리
		String addr1 = member.getAddr1();
		String addr2 = member.getAddr2();
		String addr3 = member.getAddr3();
		
		String addr ="( "+addr1+" ) "+addr2+" "+addr3;
		

		if (!addr1.equals("")) {
			member.setmAddr(addr);
		}

		
		int result = mdao.memberModify(member);
		

		
		if(result > 0) {
			System.out.println("수정완료");
			mav.setViewName("redirect:/memberInfo?mId="+member.getmId());
		}else {
			mav.setViewName("index");
		}
		
		return mav;
	}



	




}
