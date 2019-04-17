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
import com.hk.flip.service.IMyPageService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MooooonController {
	
	private static final Logger logger = LoggerFactory.getLogger(MooooonController.class);
	
	@Autowired
	private IMemberService memberService;
	
	@Autowired
	private IMyPageService myPageService;
	
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model,HttpServletRequest request,HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		String type = ((MemberDto)request.getSession().getAttribute("logInMember")).getMember_type();
		int member_seq = ((MemberDto)request.getSession().getAttribute("dto")).getMember_seq();
		             /*대영씨 주제 넘게 제가 수정좀 했습니다.*/
		
		System.out.println("로그인 타입:"+type);
		
		if(type.equals("S")) {
			model.addAttribute("inclassList", myPageService.getAllInclassList(member_seq));
			return "s_mypage";
		}else if(type.equals("T")){
			
			return "t_mypage";
		}else {
			return "A_mypage";
		}
	}
	
	@RequestMapping(value = "/test-loginform.do", method = RequestMethod.GET)
	public String loginform(Locale locale, Model model) {
		logger.info("로그인 폼 이동하기{}.", locale);	
		return "testlogin";
	}
	
	@RequestMapping(value = "/test-login.do", method = RequestMethod.POST)//로그인 성공여부 확인후 메인으로
	public String login(HttpServletRequest request,Locale locale, Model model,String id,String password) {
		logger.info("로그인 하기{}.", locale);
		HttpSession session =request.getSession();
		MemberDto dto = memberService.logCheck(id,password);
		if(dto!=null) {	
			session.setAttribute("logInMember", dto );		
			return "redirect:main.do";
		}else{
			model.addAttribute("msg", "로그인실패" );
			return "loginError";
		}
	}
}
