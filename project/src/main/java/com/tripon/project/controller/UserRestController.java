package com.tripon.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.tripon.project.dto.UserDTO;
import com.tripon.project.service.UserService;

import jakarta.servlet.http.HttpSession;

@RestController
public class UserRestController {
	
	@Autowired
	UserService userService;
	
	@PostMapping("/login")
	public ResponseEntity<UserDTO> requestLogin(@RequestBody UserDTO user, HttpSession session) {
	String id = user.getEmail();
	String password = user.getPassword();
		if (userService.isMember(id, password) == 1) {
			user = userService.getUserByIdAndPassword(id, password);
			session.setAttribute("user", user);
			return ResponseEntity.ok().body(user);
		} else {
			return ResponseEntity.notFound().build();
		}
	}
	
	@GetMapping("/logout")
	public ResponseEntity<UserDTO> requestLogout(HttpSession session) {
		session.invalidate();
		return ResponseEntity.ok().body(new UserDTO());
	}
	
}

