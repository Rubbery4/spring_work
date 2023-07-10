package com.gura.spring04.gallery.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring04.gallery.dto.GalleryDto;
import com.gura.spring04.gallery.service.GalleryService;


@Controller
public class GalleryController {
	
	@Autowired
	private GalleryService service;
	

	@RequestMapping("/gallery/list")
	public String getList(HttpServletRequest request) {
		service.getList(request);
		return "gallery/list";
	}
	
	@RequestMapping("/gallery/upload_form")
	public String uploadForm() {
		
		return "gallery/upload_form";
	}
	
	@RequestMapping("/gallery/upload_form2")
	public String uploadForm2() {
		
		return "gallery/upload_form2";
	}
	
	@RequestMapping("/gallery/upload_form3")
	public String uploadForm3() {
		
		return "gallery/upload_form3";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="gallery/ajax_upload")
	@ResponseBody
	public Map<String , Object> ajaxUpload(GalleryDto dto, HttpServletRequest request) {
		// 서비스를 이용해서 업로드된 이미지를 저장하고
		service.saveImage(dto, request);
		// {"isSuccess":true} 형식의 json 문자열 응답
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("isSuccess", true);
		return map;
	}
	
	
	@RequestMapping("/gallery/upload_form4")
	public String uploadForm4() {
		
		return "gallery/upload_form4";
	}
	
	
	@RequestMapping(method = RequestMethod.POST, value="/gallery/upload")
	public String upload(GalleryDto dto, HttpServletRequest request) {
		service.saveImage(dto, request);
		return "gallery/upload";
	}
	
	@RequestMapping(value = "/gallery/detail", method = RequestMethod.GET)
	public ModelAndView detail(int num, ModelAndView mView) {
		service.getDetail(num, mView);
		mView.setViewName("gallery/detail");
		return mView;
	}

}
