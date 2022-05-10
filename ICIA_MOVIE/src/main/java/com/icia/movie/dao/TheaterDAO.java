package com.icia.movie.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.TheaterDTO;

@Repository
public class TheaterDAO {

	@Autowired
	SqlSessionTemplate sql;

	public int theaterInsert(TheaterDTO theater) {
		
		return sql.insert("Theater.insert", theater);
	}
}
