package com.rubber.project.maple.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rubber.project.maple.dao.MapleDao;
import com.rubber.project.maple.dto.MapleDto;

@Service
public class MapleServiceImpl implements MapleService {
	@Autowired
	private MapleDao mapleDao;

	@Override
	public void getList(HttpServletRequest request) {
		MapleDto dto = new MapleDto();
		List<MapleDto> list = mapleDao.getList(dto);
		request.setAttribute("list", list);
	}

	@Override
	public void getDetail(HttpServletRequest request) {
		int num=Integer.parseInt(request.getParameter("num"));
		MapleDto dto = new MapleDto();
		dto.setNum(num);
		MapleDto resultDto = mapleDao.getData(num);
		
		request.setAttribute("dto", resultDto);
		
	}

	@Override
	public void saveEnhance(MapleDto dto) {
		mapleDao.insert(dto);
	}

	@Override
	public void deleteEnhance(int num) {
		
		mapleDao.delete(num);
	}

	@Override
	public void getData(HttpServletRequest request) { 
		int num=Integer.parseInt(request.getParameter("num"));
		MapleDto dto = mapleDao.getData(num);
		request.setAttribute("dto", dto);
	}
	
	@Override
	public void update(MapleDto dto) {
		mapleDao.update(dto);
	}
	
	
}
