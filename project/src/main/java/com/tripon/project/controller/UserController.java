package com.tripon.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tripon.project.dto.UserDTO;
import com.tripon.project.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	private static final String HOMEPAGE = "/recruitmentlist";

	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}

	@GetMapping("/join")
	public String signup(HttpSession session) {
		if (isLogin(session)) {
			return "redirect:" + HOMEPAGE;
		}
		return "/join";
	}

	@PostMapping("/join")
	public String requestSignup(@ModelAttribute UserDTO user, HttpSession session) {
		UserDTO newUser = new UserDTO();
		newUser.setId(user.getId());
		newUser.setPassword(user.getPassword());
		newUser.setName(user.getName());
		newUser.setNickname(user.getNickname());
		newUser.setPhone(user.getPhone());
		newUser.setEmail(user.getEmail());

		boolean isSignedUp = false;
		if (userService.insertUser(newUser) > 0) {
			isSignedUp = true;
		}

		if (isSignedUp) {
			return "redirect:/login"; // 회원가입 성공 시 로그인 페이지로 리다이렉트합니다.
		} else {
			return "join"; // 회원가입 실패 시에는 다시 회원가입 페이지를 보여줍니다.
		}
	}

	private boolean isLogin(HttpSession session) {
		UserDTO user = (UserDTO) session.getAttribute("user");
		return user != null;
	}

}
