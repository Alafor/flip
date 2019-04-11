package com.hk.flip;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.flip.dtos.MemberDto;
import com.hk.flip.service.IMemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LeeController {
	
	@Autowired
	private IMemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(LeeController.class);
	
	
	@RequestMapping(value = "/tdetail.do", method = RequestMethod.POST)//로그인 성공여부 확인후 메인으로
	public String tdetail(HttpServletRequest request,Locale locale, Model model,String member_id) {
		logger.info("강사상세보기{}.", locale);
		MemberDto dto=memberService.getTProfile(member_id);
		model.addAttribute("tDto", dto);
		return "tdetail";
	}
	
}
