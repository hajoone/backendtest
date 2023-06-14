package com.tripon.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripon.project.dao.BoardDAO;
import com.tripon.project.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO dao;

	public int writeBoard(BoardDTO dto) {
		return dao.writeBoard(dto);
	}
	
	public int getTotalBoard() {
		return dao.getTotalBoard();
	}
	
	@Override
	public List<BoardDTO> freeboard(int[] limit) {
		return dao.freeboard(limit);
	}

	@Override
	public BoardDTO updateViewcountAndGetDetail(int post_id) {
		int updaterows = dao.updateViewcount(post_id);
		return dao.getDetail(post_id);
	}

}