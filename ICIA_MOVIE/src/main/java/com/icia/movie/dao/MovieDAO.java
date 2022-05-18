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

	public int movieDelete(String movCode) {
		// TODO Auto-generated method stub
		sql.delete("Movie.mvrsDelete", movCode);
		sql.delete("Movie.mvscDelete", movCode);
		sql.delete("Movie.mvcmDelete", movCode);
		return sql.delete("Movie.delete", movCode);
	}

	public int movieModify(MovieDTO movie) {
		// TODO Auto-generated method stub
		System.out.println("[3]영화수정 : "+movie);
		return sql.update("Movie.modify",movie);
	}

	public List<MovieDTO> movieList2(PageDTO paging) {
		// TODO Auto-generated method stub
		return sql.selectList("Movie.list2",paging);
	}
	
	public List<MovieDTO> mBook() {
		
		return sql.selectList("Movie.mBook");
	}
	

}
