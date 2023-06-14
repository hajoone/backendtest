package com.tripon.project.service;

import com.tripon.project.dao.MemberDAO;
import com.tripon.project.dto.MemberDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDAO dao;

	public MemberDTO oneMember(String id){
		return dao.oneMember(id);
	}


}

