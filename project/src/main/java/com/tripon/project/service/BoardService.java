package com.tripon.project.service;

import java.util.List;

import com.tripon.project.dto.BoardDTO;

public interface BoardService {
	// 글쓰기
	public int writeBoard(BoardDTO dto);

	public int getTotalBoard();

	public List<BoardDTO> freeboard(int[] limit);

	
	
	// 글상세
	public BoardDTO updateViewcountAndGetDetail(int post_id);
}
