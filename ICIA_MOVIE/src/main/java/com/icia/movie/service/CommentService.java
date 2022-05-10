package com.icia.movie.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.movie.dao.CommentDAO;
import com.icia.movie.dto.CommentDTO;

@Service
public class CommentService {

	@Autowired
	private CommentDAO cmdao;

	List<CommentDTO> commentList = new ArrayList<CommentDTO>();
	
	public List<CommentDTO> cList(String cmCode) {
		
		commentList = cmdao.cList(cmCode);
		return commentList;
	}

	public List<CommentDTO> cWrite(CommentDTO comm) {
		
		int result = cmdao.cWrite(comm);
		
		if(result>0) {
			commentList = cmdao.cList(comm.getCmCode());
		} else {
			commentList = null;
		}
		return commentList;
	}
}
