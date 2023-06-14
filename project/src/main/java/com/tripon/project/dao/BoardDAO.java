package com.tripon.project.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.tripon.project.dto.BoardDTO;

@Mapper
@Repository
public interface BoardDAO {
	
	public int writeBoard(BoardDTO dto);
	
	public int getTotalBoard();
	public List<BoardDTO> freeboard(int[] limit);
	
	

	public int updateViewcount(int post_id);

	public BoardDTO getDetail(int post_id);
}
