package com.rubber.project.maple.dao;

import java.util.List;

import com.rubber.project.maple.dto.MapleDto;

public interface MapleDao {

	public List<MapleDto> getList(MapleDto dto);
	public void insert(MapleDto dto);
	public MapleDto getData(int num);
	public void delete(int num);
	public void update(MapleDto dto);
}
