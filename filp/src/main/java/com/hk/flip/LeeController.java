package com.hk.flip;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.SynchronousQueue;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.dtos.ReviewDto;
import com.hk.flip.service.ClassService;
import com.hk.flip.service.IClassService;
import com.hk.flip.service.IMemberService;
import com.hk.flip.service.IReviewService;
import com.hk.flip.service.ReviewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LeeController {

	@Autowired
	private IMemberService memberService;
	@Autowired
	private IClassService classService;
	@Autowired
	private IReviewService reviewService;
	
	private static final Logger logger = LoggerFactory.getLogger(LeeController.class);

	//강사 상세보기
	@RequestMapping(value = "/tdetail.do", method = RequestMethod.GET)//로그인 성공 여부 확인 후 메인으로
	public String tdetail(HttpServletRequest request,Locale locale, Model model,int member_seq) {
		logger.info("강사상세보기{}.", locale);
		System.out.println(member_seq);
		MemberDto dto=memberService.getTProfile(member_seq);
		List<ClassDto> classlist = memberService.getTclass(member_seq);
		List<ReviewDto> reviewlist = memberService.getTreview(member_seq);
		model.addAttribute("tDto", dto);
		model.addAttribute("clist", classlist);
		model.addAttribute("rDto", reviewlist);
		return "tdetail";
	}

	//강사들의 강의 상세보기
	@RequestMapping(value = "/cdetail.do", method = RequestMethod.GET)
	public String cdetail(HttpServletRequest request,Locale locale, Model model,int class_seq) {
		logger.info("강의상세보기{}.", locale);
		System.out.println(class_seq);
		List<ClassDto> getCdetail = classService.getCdetail(class_seq);
		model.addAttribute("cDto", getCdetail);
		System.out.println(getCdetail.size());
		return "cdetail";
	}

	//리뷰작성 페이지로 이동
	@RequestMapping(value = "/review.do", method = RequestMethod.GET)
	public String review(HttpServletRequest request,Locale locale, Model model,int seq) {
		logger.info("후기작성하기{}.", locale);
		model.addAttribute("rDto", seq);
		return "review";
	}
	
	//리뷰 남긴 후
	@RequestMapping(value = "/reviewinsert.do", method = RequestMethod.GET)
	public String reviewinsert(HttpServletRequest request,Locale locale, Model model,int seq, ReviewDto dto) {
		logger.info("후기 남긴 후{}.", locale);
		boolean isS=reviewService.cReview(dto);
		
		return "mypage";
	}

}
