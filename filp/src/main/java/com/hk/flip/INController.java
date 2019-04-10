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




@Controller
public class INController {
	
	private static final Logger logger = LoggerFactory.getLogger(INController.class);
	
	@Autowired
	private IMemberService memberService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/loginform.do", method = RequestMethod.GET)//로그인폼 이동
	public String loginform(Locale locale, Model model) {
		logger.info("로그인 폼 이동하기{}.", locale);	
		return "LogIn";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)//로그인 성공여부 확인후 메인으로
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
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)//로그아웃
	public String logout(Locale locale, Model model,HttpSession session) {
		logger.info("로그아웃 하기{}.", locale);
		/*session.invalidate();*/
		session.removeAttribute("logInMember");
			return "redirect:main.do";
	}
	
	@RequestMapping(value = "/signupform.do", method = RequestMethod.GET)
	public String signupform(Locale locale, Model model) {
		logger.info("회원가입 폼 이동하기 {}.", locale);	
		return "SignUp";
	}
	
	@RequestMapping(value = "/signup.do", method = RequestMethod.POST)
	public String signup(Locale locale, Model model,MemberDto dto) {
		logger.info("회원가입하기{}.", locale);
		
		boolean isS = memberService.newMember(dto);
		if(isS) {
			return "redirect:loginform.do";
		}else{
			model.addAttribute("msg","가입실패");
			return "error";
		}
	}
	
}
