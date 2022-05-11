package com.icia.movie.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.MovieDAO;
import com.icia.movie.dto.MovieDTO;
import com.icia.movie.dto.PageDTO;

@Service
public class MovieService {
	
	private ModelAndView mav = new ModelAndView();
	
	@Autowired
	private MovieDAO mvdao;

	public ModelAndView movieInsert(MovieDTO movie) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		
//		Random random = new Random();

		UUID uuid = UUID.randomUUID();
		
		MultipartFile mPosterFile = movie.getMovPosterFile();
		String fileName = uuid.toString().substring(0,8)+"_"+mPosterFile.getOriginalFilename();

		String filePath = "C:/Users/user/git/ICIA_MOVIE/ICIA_MOVIE/src/main/webapp/resources/poster/"+fileName;
//		String filePath = "D:/SpringProject/SpringWorkspace/ICIA_MOVIE/src/main/webapp/resources/poster/"+fileName;
		
		
		if(!mPosterFile.isEmpty()) {
			mPosterFile.transferTo(new File(filePath));
			movie.setMovPoster(fileName);
		}

		int result = mvdao.movieInsert(movie);
		if(result > 0) {
			mav.setViewName("index");
		}else {
			mav.setViewName("index");
		}
		System.out.println("[4]"+movie);
		
		return mav;
	}

	public ModelAndView movieList(int page, int limit) {
		// TODO Auto-generated method stub
		System.out.println("[2]");
		// 한 화면에 보여줄 페이지 번호 갯수
		int block = 5;

		// 전체 게시글 수
		int mCount = mvdao.mvCount();

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

		List<MovieDTO> movieDTO = mvdao.movieList(paging);

		mav.addObject("movieList", movieDTO);
		mav.addObject("paging", paging);
		mav.setViewName("movies");
		System.out.println("[4]" + movieDTO);
		return mav;
	}

	public ModelAndView mView(String movName) {
		MovieDTO movie = mvdao.mView(movName);
		
		mav.setViewName("mView");
		mav.addObject("view", movie);
		
		return mav;
	}

	public ModelAndView movModiForm(String movCode) {
		MovieDTO movie = mvdao.mView(movCode);
		
		mav.addObject("modi", movie);
		mav.setViewName("movieModify");
		return mav;
	}

	public ModelAndView movieModify(MovieDTO movie) throws IllegalStateException, IOException {
		UUID uuid = UUID.randomUUID();
		
		MultipartFile mPosterFile = movie.getMovPosterFile();
		String fileName = uuid.toString().substring(0,8)+"_"+mPosterFile.getOriginalFilename();

		String filePath = "C:/Users/user/git/ICIA_MOVIE/ICIA_MOVIE/src/main/webapp/resources/poster/"+fileName;

		if(!mPosterFile.isEmpty()) {
			mPosterFile.transferTo(new File(filePath));
			movie.setMovPoster(fileName);
		}

		int result = mvdao.movieModify(movie);
		if(result > 0) {
			mav.setViewName("index");
		}else {
			mav.setViewName("index");
		}
		System.out.println("[4]"+movie);
		
		return mav;
	}

	public ModelAndView movDelete(String movCode) {
		int result = mvdao.movDelete(movCode);
		
		if(result>0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("index");
		}
		return mav;
	}

}
