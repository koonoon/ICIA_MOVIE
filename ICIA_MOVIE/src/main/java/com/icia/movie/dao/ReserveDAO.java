package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.ReserveDTO;
import com.icia.movie.dto.SchedulesDTO;
import com.icia.movie.dto.TheaterDTO;

@Repository
public class ReserveDAO {
	
	@Autowired
	SqlSessionTemplate sql;

	public List<TheaterDTO> theaterList(String movCode) {
		// TODO Auto-generated method stub
		
		return sql.selectList("Reserve.thList", movCode);
	}



	public List<SchedulesDTO> schedules(SchedulesDTO scDTO) {
		// TODO Auto-generated method stub
		return sql.selectList("Reserve.scList", scDTO);
	}



	public int reserve(ReserveDTO rsDTO) {
		// TODO Auto-generated method stub
		
		
		return sql.insert("Reserve.rsInsert", rsDTO);
	}



	public List<ReserveDTO> reserveInfo(String mId) {
		// TODO Auto-generated method stub
		System.out.println("예매목록[3]"+mId);
		return sql.selectList("Reserve.rsInfo", mId);
	}

	public int reserveDelete(String rvCode) {
		// TODO Auto-generated method stub
		return sql.delete("Reserve.rsDelete", rvCode);
	}

}
