package com.tripon.project.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.tripon.project.dto.UserDTO;

@Mapper
@Repository
public interface UserDAO {
	public int isMember(String id, String password);
	public UserDTO getUserByIdAndPassword(String id, String password);
	public int insertUser(UserDTO user);
	
}
