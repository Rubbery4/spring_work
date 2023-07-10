package com.rubber.project.maple.service;

import javax.servlet.http.HttpServletRequest;

import com.rubber.project.maple.dto.MapleDto;

public interface MapleService {
	
	public void getList(HttpServletRequest request);
	public void getDetail(HttpServletRequest request);
	public void saveEnhance(MapleDto dto);
	public void deleteEnhance(int num);
	public void getData(HttpServletRequest request);
	public void update(MapleDto dto);
}
