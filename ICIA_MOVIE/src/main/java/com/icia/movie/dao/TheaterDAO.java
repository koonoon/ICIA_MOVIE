package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.TheaterDTO;
import com.icia.movie.dto.SchedulesDTO;

@Repository
public class TheaterDAO {

	@Autowired
	SqlSessionTemplate sql;

	public int theaterInsert(TheaterDTO theater) {
		
		return sql.insert("Theater.insert", theater);
	}
	
	
	public List<TheaterDTO> TheaterList() {
		System.out.println("[3]");
		return sql.selectList("Theater.list");
	}


	public int thDelete(String thCode) {
		// TODO Auto-generated method stub
		return sql.delete("Theater.delete", thCode);
	}

	public TheaterDTO thView(String thCode) {
		// TODO Auto-generated method stub
		return sql.selectOne("Theater.view", thCode);
	}
	
	
	public int theaterModify(TheaterDTO theater) {
		// TODO Auto-generated method stub
		return sql.update("Theater.modi", theater);
	}

	public int insertSch(SchedulesDTO schedule) {
		System.out.println("[3]");
		return sql.insert("Theater.schedule", schedule);
	}

	public List<SchedulesDTO> thList() {
		// TODO Auto-generated method stub
		return sql.selectList("Theater.thList");
	}

	public List<SchedulesDTO> thList2() {
		// TODO Auto-generated method stub
		return sql.selectList("Theater.thList2");
	}

	


	
}
