package com.rubber.project.maple.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rubber.project.maple.dto.MapleDto;

@Repository
public class MapleDaoImpl implements MapleDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<MapleDto> getList(MapleDto dto) {
		
		return session.selectList("maple.getList", dto);
	}

	@Override
	public void insert(MapleDto dto) {
		session.insert("maple.insert", dto);
	}

	@Override
	public MapleDto getData(int num) {

		return session.selectOne("maple.getData", num);
	}

	@Override
	public void delete(int num) {
		session.delete("maple.delete", num);
	}

	@Override
	public void update(MapleDto dto) {
		session.update("maple.update", dto);
	}

}
