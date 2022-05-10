package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.MemberDTO;
import com.icia.movie.dto.PageDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	public int regist(MemberDTO member) {
		// TODO Auto-generated method stub
		System.out.println("[3] 회원가입 "+member);
		return sql.insert("Member.regist", member);
	}




	public List<MemberDTO> memberList(PageDTO paging) {
		// TODO Auto-generated method stub
		return sql.selectList("Member.mList",paging);
	}




	public int mCount() {
		// TODO Auto-generated method stub
		return sql.selectOne("Member.mCount");
	}




	public MemberDTO memberLogin(MemberDTO member) {
		// TODO Auto-generated method stub
		return sql.selectOne("Member.mLogin", member);
	}




	public MemberDTO memberInfo(String mId) {
		// TODO Auto-generated method stub
		return sql.selectOne("Member.mInfo",mId);
	}




	public int idCheck(String mId) {
		// TODO Auto-generated method stub
		return sql.selectOne("Member.idCheck",mId);
	}




	public int emailCheck(String email) {
		// TODO Auto-generated method stub
		return sql.selectOne("Member.emailCheck",email);
	}




	public int loginCheck(MemberDTO member) {
		// TODO Auto-generated method stub
		return sql.selectOne("Member.loginCheck",member);
	}








	public int delete(String mId) {
		// TODO Auto-generated method stub
		return sql.delete("Member.mDelete",mId);
	}




	public int mLoginCheck(MemberDTO member) {
		// TODO Auto-generated method stub
		System.out.println("[3]회원 로그인 "+member);
		return sql.selectOne("Member.mLoginCheck",member);
	}




	public String mEpw(String loginId) {
		// TODO Auto-generated method stub
		// 입력한 id로 암호화 된 패스워드를 검색
		return sql.selectOne("Member.mEpw",loginId);
	}




	public int memberModify(MemberDTO member) {
		// TODO Auto-generated method stub
		return sql.update("Member.mModify", member);
	}




	

}
