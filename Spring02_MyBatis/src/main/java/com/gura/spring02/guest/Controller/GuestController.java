package com.gura.spring02.guest.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring02.guest.dao.GuestDao;
import com.gura.spring02.guest.dto.GuestDto;
import com.gura.spring02.guest.service.GuestService;

@Controller
public class GuestController {

	@Autowired
	private GuestService service;
	
	// 방명록 수정폼 요청 처리
	@RequestMapping("/guest/updateform")
	public ModelAndView updateform(ModelAndView mView, int num) {
		// 서비스를 이용해서 ModelAndView 객체에 글하나의 정보를 담아온다
		service.getGuestInfo(mView, num);
		// view page 의 위치도 ModelAndView 객체에 담아서 리턴해야 한다.
		mView.setViewName("guest/updateform");
		// 모델(data) 와 view page 의 정보가 모두 담긴 ModelAndView 객체를 리턴해주면
		// spring 이 알아서 처리해준다.
		return mView;
	}
	
	// 방명록 수정 요청 처리
	@RequestMapping(method = RequestMethod.POST, value = "/guest/update") 
	public String update(GuestDto dto) {
		// 서비스를 이용해서 글정보를 추가한다
		service.addGuest(dto);
		
		return "guest/update";
	}
	
	// 방명록 삭제 요청처리
	@RequestMapping(method = RequestMethod.POST, value = "/guest/delete")
	public String delete(GuestDto dto) {
		service.deleteGuest(dto);
		// 목록 보기로 리다이렉트 응답
		return "redirect:/guest/list";
	}
	
	// 방명록 추가 요청처리
	@RequestMapping(method = RequestMethod.POST, value = "/guest/insert")
	public String insert(GuestDto dto) {
		service.addGuest(dto);
		return "guest/insert";
	}
	
	// 방명록 추가 폼 요청 처리
	@RequestMapping("/guest/insertform")
	public String insertfomr() {
		return "guest/insertform";
	}
	
	// 회원 목록 보기 요청 처리
	@RequestMapping("/guest/list")
	public ModelAndView list(ModelAndView mView) {
		// 서비스의 메소드를 호출해서 ModelAndView 객체의 참조값을 전달하면 방명록 목록이 담긴다.
		service.getGuestList(mView);
		mView.setViewName("guest/list");
		/*
		 * 두개의 정보가 모두 담긴 ModelAndView 객체를 리턴해주면
		 * addObject(key, value) 를 통해서 담은 정보는 request scope 에 담기고
		 * setViewName(view page 위치) 를 통해서 담은 정보는 해당 view page 로 forward 이동해서 응답된다.
		 */
		return mView;
	}
}
