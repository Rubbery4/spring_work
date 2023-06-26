package com.gura.spring04.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gura.spring04.users.dao.UsersDao;
import com.gura.spring04.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersDao dao;
	
	@Override
	public void addUser(UsersDto dto) {
		dao.insert(dto);
	}

}
