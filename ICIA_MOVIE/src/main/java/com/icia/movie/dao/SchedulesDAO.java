package com.icia.movie.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SchedulesDAO {

	@Autowired
	SqlSessionTemplate sql;
}
