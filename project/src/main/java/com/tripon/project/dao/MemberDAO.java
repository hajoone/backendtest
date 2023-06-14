package com.tripon.project.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.tripon.project.dto.MemberDTO;

@Mapper
@Repository
public interface MemberDAO {
	
	public MemberDTO oneMember(String id) ;


}