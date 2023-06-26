package com.gura.spring04.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gura.spring04.users.dto.UsersDto;
import com.gura.spring04.users.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService service;
	
	/*
	 * 	GET 방식 /users/signup_form 요청을 처리할 메소드
	 * 	- 요청 방식이 다르면 실행되지 않는다.
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/users/signup_form")
	public String signupForm() {
		
		return "users/signup_form";
	}
	
	// 방명록 추가 요청처리
		@RequestMapping(method = RequestMethod.POST, value = "/users/signup")
		public String insert(UsersDto dto) {
			service.addUser(dto);
			return "users/signup";
		}
}
