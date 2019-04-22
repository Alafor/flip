package com.hk.flip;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.hk.flip.dtos.AnswerBoardDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.service.IAnswerBoardService;
import com.hk.flip.service.IMemberService;




@Controller
public class INController {
	
	private static final Logger logger = LoggerFactory.getLogger(INController.class);
	
	@Autowired
	private IMemberService memberService;
	@Autowired
	private IAnswerBoardService ansService;
	
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
		System.out.println("dto:"+dto);
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
		session.invalidate();
		/*session.removeAttribute("logInMember");*/
			return "redirect:main.do";
	}
	
	@RequestMapping(value = "/signupform.do", method = RequestMethod.GET)
	public String signupform(Locale locale, Model model) {
		logger.info("회원가입 폼 이동하기 {}.", locale);	
		return "SignUp";
	}
	
	@RequestMapping(value = "/t_signupform.do", method = RequestMethod.GET)
	public String t_signupform(Locale locale, Model model) {
		logger.info("강사 회원가입 폼 이동하기 {}.", locale);	
		return "T_SignUp";
	}
	
	@RequestMapping(value = "/signup.do", method = RequestMethod.POST)
	public String signup(Locale locale, Model model,MemberDto dto) {
		logger.info("회원가입하기{}.", locale);
		boolean isS = memberService.newMember(dto);
		if(isS) {
			model.addAttribute("msg","축하드립니다.가입에 성공하셨습니다.");
			model.addAttribute("url","loginform.do");
			return "Redirect";
		}else{
			model.addAttribute("msg","가입실패");
			return "error";
		}
	}
	
	@RequestMapping(value = "/handler.do", method = RequestMethod.POST)
	public void handler(Locale locale, Model model,HttpServletRequest request,HttpServletResponse response,String id) throws IOException {
		logger.info("아이디 중복 확인 {}.", locale);
		PrintWriter writer = response.getWriter();
		System.out.println("id:"+id);
		boolean isS = memberService.overlappedID(id);
		if(isS) {
			writer.print("not_usable");
		} else {
			writer.print("usable");
		}
		
	}
	
	
	@RequestMapping(value = "/t_signup.do", method = RequestMethod.POST)
	public String t_signup(Locale locale, Model model,HttpServletRequest request) {
		logger.info("강사회원가입하기{}.", locale);
		MemberDto dto = new  MemberDto();
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
		MultipartFile multifile = multi.getFile("member_profile");
		dto.setMember_type(multi.getParameter("member_type"));
		dto.setMember_id(multi.getParameter("member_id"));
		dto.setMember_password(multi.getParameter("member_password"));
		dto.setMember_name(multi.getParameter("member_name"));
		dto.setMember_birth(multi.getParameter("member_birth"));
		dto.setMember_phone(multi.getParameter("member_phone"));
		dto.setMember_email(multi.getParameter("member_email"));
		dto.setMember_info(multi.getParameter("member_info"));

		String origin_fname=multifile.getOriginalFilename();
		String creatUUID=UUID.randomUUID().toString().replaceAll("-", "");
		String stored_fname = creatUUID+origin_fname.substring(origin_fname.lastIndexOf("."));
		dto.setMember_profile(stored_fname);
		String saveDirectory = request.getSession().getServletContext().getRealPath("upload");
		File f=new File(saveDirectory+"/"+stored_fname);
		System.out.println("경로:"+f);
		try {
			multifile.transferTo(f);	
		} catch (Exception e) {	
			e.printStackTrace();
		}
		boolean isS = memberService.newT_member(dto);
		if(isS) {
			model.addAttribute("msg","축하드립니다.가입에 성공하셨습니다.");
			model.addAttribute("url","loginform.do");
			return "Redirect";
		}else{
			model.addAttribute("msg","가입실패");
			return "error";
		}
	}
	
	@RequestMapping(value = "/ansboard.do", method = RequestMethod.GET)
	public String ansboard(Locale locale, Model model) {
		logger.info("문의게시판 이동 {}.", locale);	
		List<AnswerBoardDto> list = ansService.getAllList();
		System.out.println("list:"+list);
		model.addAttribute("list", list);
		return "ContactUs/AnsBoard";
	}
	
	@RequestMapping(value = "/ansinsertform.do", method = RequestMethod.GET)
	public String ansinsertform(Locale locale, Model model) {
		logger.info("문의입력창 이동 {}.", locale);		
		return "ContactUs/AnsInsert";
	}
	
	
	@RequestMapping(value = "/ansinsert.do", method = RequestMethod.POST)
	public String ansinsert(Locale locale, Model model,AnswerBoardDto dto,HttpServletRequest request,HttpSession session) {
		logger.info("문의내용 추가하기 {}.", locale);
		
			MemberDto memberDto	=(MemberDto)session.getAttribute("logInMember");
			
			int board_member_seq = memberDto.getMember_seq();
		System.out.println("board_member_seq:"+board_member_seq);
		dto.setBoard_member_seq(board_member_seq);
		System.out.println("문의추가dto:"+dto);
		boolean isS = ansService.ansinsert(dto);
		if(isS) {
			model.addAttribute("msg","입력되었습니다.빠른시간 답변 드리겠습니다.");
			model.addAttribute("url","ansboard.do");
			return "Redirect";
		}else {
			model.addAttribute("msg","입력에 실패했습니다.다시 입력해주세요");
			return "error";
		}
	}
	
	@RequestMapping(value = "/anssecret.do", method = RequestMethod.GET)
	public String anssecret(Locale locale, Model model,HttpSession session,int seq) {
		logger.info("비밀글 상세보기 이동 {}.", locale);
		MemberDto memberDto	=(MemberDto)session.getAttribute("logInMember");
		int member_seq = memberDto.getMember_seq();
		int board_member_seq  = ansService.checkedMember(seq);
		System.out.println("비밀글board_member_seq:"+board_member_seq);
		if(member_seq==board_member_seq) {
			return "redirect:ansdetail.do?seq="+seq;
		}else {
			model.addAttribute("msg","비밀글입니다.본인외에는 열람하실수 없습니다.");
			model.addAttribute("url","ansboard.do");
			return "Redirect";
		}
		
	}
	
	@RequestMapping(value = "/ansdetail.do", method = RequestMethod.GET)
	public String ansdetail(Locale locale, Model model,int seq) {
		logger.info("문의글 상세 보기 {}.", locale);
		AnswerBoardDto dto = ansService.getBoard(seq);
		model.addAttribute("dto", dto);
		return "ContactUs/AnsDetail";
	}
	
	
	@RequestMapping(value = "/ansupdateform.do", method = RequestMethod.GET)
	public String ansupdateform(Locale locale, Model model,HttpSession session,int seq) {
		logger.info("수정하기 폼  이동 {}.", locale);
		MemberDto memberDto	=(MemberDto)session.getAttribute("logInMember");
		int member_seq = memberDto.getMember_seq();
		int board_member_seq  = ansService.checkedMember(seq);
		if(member_seq==board_member_seq) {
			AnswerBoardDto dto = ansService.getBoard(seq);
			model.addAttribute("dto", dto);
			return "ContactUs/AnsUpdate";		
		}else {
			model.addAttribute("msg","작성자외에는 수정하실수 없습니다.");
			model.addAttribute("url","ansdetail.do?seq="+seq);
			return "Redirect";
		}
	}
	
	//
	@RequestMapping(value = "/ansupdate.do", method = RequestMethod.POST)
	public String ansupdate(Locale locale, Model model,AnswerBoardDto dto) {
		logger.info("문의글 수정하기  {}.", locale);
		
		boolean isS = ansService.updateBoard(dto);
		if(isS) {
			 return "redirect:ansdetail.do?seq="+dto.getBoard_seq();
		}else {
			model.addAttribute("msg","수정을 실패했습니다.다시 입력해주세요");
			return "error";
		}
	
	}
	
	@RequestMapping(value = "/ansmuldel.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String muldel(Locale locale, Model model,HttpSession session, int seq) {
		logger.info("문의글 삭제하기  {}.", locale);
		MemberDto memberDto	=(MemberDto)session.getAttribute("logInMember");
		int member_seq = memberDto.getMember_seq();
		int board_member_seq  = ansService.checkedMember(seq);
		if(member_seq==board_member_seq) {
			boolean isS = ansService.mulDel(seq);
			
		if(isS) {
			model.addAttribute("msg","삭제를 성공했습니다.");
			 return "redirect:ansboard.do";
		}else {
			model.addAttribute("msg","삭제를 실패했습니다.");
			return "error";
		}	
	  }else {
		  model.addAttribute("msg","작성자외에는 삭제하실수 없습니다.");
			model.addAttribute("url","ansdetail.do?seq="+seq);
			return "Redirect";
	  }
		
	}
	
	@RequestMapping(value = "/ansreplyboard.do", method = RequestMethod.POST)
	public String replyboard(Locale locale, Model model,AnswerBoardDto dto) {
		logger.info("답변형게시판 답글추가하기{}.", locale);
		boolean isS = ansService.replyBoard(dto);
		if(isS) {	
			return "redirect:boardlist.do";
		}else {
			model.addAttribute("msg", "글추가실패");
			return "error";
		}
	}
	
	
}
