package com.gura.spring04.gallery.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.gura.spring04.gallery.dto.GalleryDto;

public interface GalleryService {
	public void getList(HttpServletRequest request);
	public void saveImage(GalleryDto dto, HttpServletRequest request);
	public void getDetail(int num, ModelAndView mView);
}
