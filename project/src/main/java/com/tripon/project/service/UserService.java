package com.tripon.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripon.project.dao.UserDAO;
import com.tripon.project.dto.UserDTO;

@Service
public class UserService {
	
	@Autowired
	UserDAO userDao;
	
	public int isMember(String id, String password) {
		return userDao.isMember(id, password);
	}
	
	public UserDTO getUserByIdAndPassword(String id, String password) {
		return userDao.getUserByIdAndPassword(id, password);
	}
	
	public int insertUser(UserDTO user) {
		return userDao.insertUser(user);
	}
	 public boolean checkDuplicateUsername(String username) {
		    return false;
		  }


}
