package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.MovieDTO;
import com.icia.movie.dto.PageDTO;

@Repository
public class MovieDAO {
	
	@Autowired
	SqlSessionTemplate sql;

	public int movieInsert(MovieDTO movie) {
		// TODO Auto-generated method stub
		System.out.println("[3]"+movie);
		return sql.insert("Movie.insert", movie);
	}

	public List<MovieDTO> movieList(PageDTO paging) {
		// TODO Auto-generated method stub
		System.out.println("[3]");
		return sql.selectList("Movie.list",paging);
	}

	public int mvCount() { 
		// TODO Auto-generated method stub
		return sql.selectOne("Movie.count");
	}

	public MovieDTO mView(String movName) {
		
		return sql.selectOne("Movie.mView", movName);
	}

	public int movieModify(MovieDTO movie) {
		// TODO Auto-generated method stub
		return sql.update("Movie.modi", movie);
	}

	public int movDelete(String movCode) {
		// TODO Auto-generated method stub
		return sql.delete("Movie.delete", movCode);
	}

	public List<MovieDTO> mBook() {
		
		return sql.selectList("Movie.mBook");
	}
	

}
