package com.rubber.project.maple.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rubber.project.maple.dto.MapleDto;
import com.rubber.project.maple.service.MapleService;

@Controller
public class MapleController {
	
	@Autowired
	private MapleService service;
	
	@RequestMapping("/maple/list")
	public String list(HttpServletRequest request) {
		service.getList(request);
		return "maple/list";
	}
	
	@RequestMapping("/maple/insertform")
	public String updateform() {
		return "maple/insertform";
	}
	
	@RequestMapping("/maple/insert")
	public String insert(MapleDto dto, HttpSession session) {
		//글 작성자는 세션에서 얻어낸다.
		String id=(String)session.getAttribute("id");
		//dto 는 글의 제목과 내용만 있으므로 글작성자는 직접 넣어준다.
		dto.setId(id);
		//서비스를 이용해서 새글을 저장한다. 
		service.saveEnhance(dto);
		return "maple/insert";
	}
	
	@RequestMapping("/maple/detail")
	public String detail(HttpServletRequest request) {
		//서비스에 HttpServletRequest 객체를 전달해서 응답에 필요한 데이타가 담기도록 하고 
		service.getDetail(request);
		//view page 로 forward 이동해서 응답
		return "maple/detail";
	}
	
	// 업데이트 요청처리
		@RequestMapping("/maple/update")
		public String update(MapleDto dto) {
			
			service.update(dto);
			
			return "redirect:/maple/detail?num="+dto.getNum();
		}
		
		@RequestMapping("/maple/delete")
		public String delete(int num) {
			service.deleteEnhance(num);
			
			return "redirect:/maple/list";
		}	
		
	
}
