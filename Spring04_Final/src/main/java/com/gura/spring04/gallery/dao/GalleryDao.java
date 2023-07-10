package com.gura.spring04.gallery.dao;

import java.util.List;

import com.gura.spring04.gallery.dto.GalleryDto;

public interface GalleryDao {
	
	// 갤러리에 사진 추가하기
	public void insert(GalleryDto dto);
	// gallery 게시글 하나의 data 가져오기
	public GalleryDto getData(int num);
	// gallery 리스트 가져오기
	public List<GalleryDto> getList(GalleryDto dto);
	// 모든 row의 개수
	public int getCount();
	
}
