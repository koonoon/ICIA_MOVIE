package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.CommentDTO;

@Repository
public class CommentDAO {

	@Autowired
	SqlSessionTemplate sql;

	public List<CommentDTO> cList(String cmCode) {
		
		return sql.selectList("Comment.cList", cmCode);
	}

	public int cWrite(CommentDTO comm) {
		
		return sql.insert("Comment.cWrite", comm);
	}
}
