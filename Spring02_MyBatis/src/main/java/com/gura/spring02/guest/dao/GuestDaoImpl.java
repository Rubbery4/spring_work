package com.gura.spring02.guest.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.spring02.guest.dto.GuestDto;

@Repository
public class GuestDaoImpl implements GuestDao {

	// MyBatis 기반으로 DB 연동을 하기 위한 핵심 의존객체를 Dependency Inection 받는다.
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(GuestDto dto) {
		session.insert("guest.insert", dto);
	}

	@Override
	public void update(GuestDto dto) {
		session.update("guest.update", dto);
	}

	@Override
	public void delete(GuestDto dto) {
		session.delete("guest.delete", dto);
	}

	@Override
	public GuestDto getData(int num) {
		GuestDto dto = session.selectOne("guest.getData", num);
		return dto;
	}

	@Override
	public List<GuestDto> getList() {
		// 방명록 목록을 얻어와서
		List<GuestDto> list = session.selectList("guest.getList");
		// 리턴해주기
		return list;
	}

	
}
