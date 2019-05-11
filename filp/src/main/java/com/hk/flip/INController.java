package com.hk.flip;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.hk.flip.dtos.AnswerBoardDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.dtos.MsgDto;
import com.hk.flip.dtos.PagingDto;
import com.hk.flip.service.IAnswerBoardService;
import com.hk.flip.service.IMemberService;
import com.hk.flip.service.IMsgService;
import com.hk.flip.service.UserMailSendService;
import com.hk.flip.service.UserSearchService;




@Controller
public class INController {
	
	private static final Logger logger = LoggerFactory.getLogger(INController.class);
	
	@Autowired
	private IMemberService memberService;
	@Autowired
	private IAnswerBoardService ansService;
	@Autowired
	private UserMailSendService mailsender;
	@Autowired
	private UserSearchService  searchService;
	@Autowired
	private IMsgService msgService;

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

		if(dto!=null&&(dto.getMember_key()).equals("Y")) {	
			session.setAttribute("logInMember", dto );	
			return "redirect:main.do";
		}else if(dto==null){
			model.addAttribute("msg", " 아이디와패스워드가 다릅니다." );
			model.addAttribute("url","loginform.do");
			return "Redirect";
		}else {
		model.addAttribute("msg", "이메일인증을 하지 않으셨습니다.메일 인증 하신후에 서비스 이용바랍니다." );
			model.addAttribute("url","loginform.do");
			return "Redirect";
		}
		
	/*	if(dto==null){
			model.addAttribute("msg", " 아이디 없습니다." );
			model.addAttribute("url","loginform.do");
			return "Redirect";
		}else if((dto.getMember_key()).equals("Y")) {	
			session.setAttribute("logInMember", dto );	
			return "redirect:main.do";
		}else {
			model.addAttribute("msg", " 인증을 해라 ." );
			model.addAttribute("url","loginform.do");
			return "Redirect";
		}*/
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
	public String signup(Locale locale, Model model,HttpServletRequest request) {
		logger.info("회원가입하기{}.", locale);
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
		
		if(!multifile.getOriginalFilename().equals("")) {
		String origin_fname=multifile.getOriginalFilename();
		String creatUUID=UUID.randomUUID().toString().replaceAll("-", "");	
		String stored_fname = creatUUID+origin_fname.substring(origin_fname.lastIndexOf("."));
		dto.setMember_profile(stored_fname);
		String gonguFolder = "C:/Users/hk-edu/git/FLIP/filp/src/main/webapp/resources/img/member";
		File f=new File(gonguFolder+"/"+stored_fname);	
		
		boolean isS = memberService.newMember(dto);
		boolean isS2 = mailsender.mailSendWithUserKey(dto.getMember_email(),dto.getMember_id(),request);
		try {
			multifile.transferTo(f);	
		} catch (Exception e) {	
			e.printStackTrace();
		}
		if(isS&&isS2) {
			model.addAttribute("msg","축하드립니다.가입에 성공하셨습니다.입력하신 이메일에서 인증확인을 하셔야 서비스 이용이 가능합니다.");		
			model.addAttribute("url","loginform.do");
			return "Redirect";
		}else{
			model.addAttribute("msg","가입실패");
			return "error";
		}
		}else {
			dto.setMember_profile("null");
			boolean isS = memberService.newMember(dto);
			boolean isS2 = mailsender.mailSendWithUserKey(dto.getMember_email(),dto.getMember_id(),request);
			if(isS&&isS2) {
				model.addAttribute("msg","축하드립니다.가입에 성공하셨습니다.입력하신 이메일에서 인증확인을 하셔야 서비스 이용이 가능합니다.");		
				model.addAttribute("url","loginform.do");
				return "Redirect";
			}else{
				model.addAttribute("msg","가입실패");
				return "error";
			}
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
		/*String saveDirectory = request.getSession().getServletContext().getRealPath("upload");
		File f=new File(saveDirectory+"/"+stored_fname);*/
		
		String gonguFolder = "C:/Users/hk-edu/git/FLIP/filp/src/main/webapp/resources/img/member";
		File f=new File(gonguFolder+"/"+stored_fname);
		System.out.println("경로:"+f);
		try {
			multifile.transferTo(f);	
		} catch (Exception e) {	
			e.printStackTrace();
		}
		boolean isS = memberService.newT_member(dto);
		boolean isS2 = mailsender.mailSendWithUserKey(dto.getMember_email(),dto.getMember_id(),request);
		if(isS&&isS2) {
			model.addAttribute("msg","축하드립니다.가입에 성공하셨습니다.입력하신 이메일에서 인증확인을 하셔야 서비스 이용이 가능합니다.");		
			model.addAttribute("url","loginform.do");
			return "Redirect";
		}else{
			model.addAttribute("msg","가입실패");
			return "error";
		}
	}
	
	
	
	//문의게시판 페이징 처리
	@RequestMapping(value = "/ansboard.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String ansboard(Locale locale, Model model,PagingDto paging) {
		logger.info("문의게시판 이동 {}.", locale);	
		List<AnswerBoardDto> list = ansService.getAllList(paging);
		System.out.println("페이징list:"+list);
		paging.setTotal(ansService.selectTotalPaging());
		System.out.println("토탈갯수:"+paging.getTotal());
		model.addAttribute("list", list);
		model.addAttribute("p", paging);
		
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
		if(member_seq==board_member_seq||member_seq==0) {//세션에 값과 DB에 저장된 seq값으로 검색한 MEMBER_SEQ값이 같거나 0(운영자)이면 실행하기
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
		if(member_seq==board_member_seq||member_seq==0) {//세션에 값과 DB에 저장된 seq값으로 검색한 MEMBER_SEQ값이 같거나 0(운영자)이면 실행하기
			AnswerBoardDto dto = ansService.getBoard(seq);
			model.addAttribute("dto", dto);
			return "ContactUs/AnsUpdate";		
		}else {
			model.addAttribute("msg","수정할수 있는 권한이 없습니다.");
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
		if(member_seq==board_member_seq||member_seq==0) {//세션에 값과 DB에 저장된 seq값으로 검색한 MEMBER_SEQ값이 같거나 0(운영자)이면 실행하기
			boolean isS = ansService.mulDel(seq);
			
		if(isS) {
			model.addAttribute("msg","삭제를 성공했습니다.");
			 return "redirect:ansboard.do";
		}else {
			model.addAttribute("msg","삭제를 실패했습니다.");
			return "error";
		}	
	  }else {
		  model.addAttribute("msg"," 삭제할수 있는 권한이 없습니다.");
			model.addAttribute("url","ansdetail.do?seq="+seq);
			return "Redirect";
	  }
		
	}
	
	@RequestMapping(value = "/ansreplyboard.do", method = RequestMethod.POST)
	public String replyboard(Locale locale, Model model,HttpSession session,AnswerBoardDto dto) {
		logger.info("답변형게시판 댓글추가하기{}.", locale);
		MemberDto memberDto	=(MemberDto)session.getAttribute("logInMember");	
		int member_seq = memberDto.getMember_seq();//세션에 담긴 member_seq값 가져오기
		int board_member_seq  = ansService.checkedMember(dto.getBoard_seq()); 	
		if(member_seq==board_member_seq||member_seq==0) {//세션에 값과 DB에 저장된 seq값으로 검색한 MEMBER_SEQ값이 같거나 0(운영자)이면 실행하기			
		dto.setBoard_member_seq(member_seq);//jsp에서 넘어오는 파라미터가 없기때문에 세션에 값을 넣어준다
		boolean isS = ansService.replyBoard(dto);
		if(isS) {	
			return "redirect:ansboard.do";
		}else {
			model.addAttribute("msg", "글추가실패");
			return "error";
		}
		}else {
			  model.addAttribute("msg","댓글을 적을수 있는 권한이 없습니다.");
				model.addAttribute("url","ansdetail.do?seq="+dto.getBoard_seq());//실패했을때 돌아갈 페이지
				return "Redirect";
		  }
		
		
	}
	@RequestMapping(value = "/findinfo.do", method = RequestMethod.GET)
	public String findinfo(Locale locale, Model model) {
		logger.info("아이디비밀번호 찾기 폼 이동하기 {}.", locale);	
		return "FindInfo";
	}
	
	
	@RequestMapping(value = "/key_alter.do", method = RequestMethod.GET)
	public String key_alterConfirm( Model model,@RequestParam("member_id") String member_id, @RequestParam("member_key") String member_key) {

		boolean isS= mailsender.alter_userKeyService(member_id,member_key); 
		if(isS) {			
			return "LogSuccess";
		}else {
			model.addAttribute("msg","이미 인증을 하셨습니다");
			return "error";
		}
		
	}

	@RequestMapping(value = "/userSearch.do", method = RequestMethod.POST)
	@ResponseBody
	public String userIdSearch(@RequestParam("board_name") String board_name, @RequestParam("board_email") String board_email) {	
		System.out.println(board_name);
		System.out.println(board_email);
		String result = searchService.getSearchId(board_name, board_email);
		System.out.println(result);
		return result;
	}
	
	@RequestMapping(value = "/searchPassword.do", method = RequestMethod.GET)
	
	public String passwordSearch(Model model,@RequestParam("member_id")String member_id,@RequestParam("member_email")String member_email ,HttpServletRequest request) {
		System.out.println("pwid:"+member_id);
		System.out.println("email:"+member_email);
		boolean isS= mailsender.mailSendWithPassword(member_id, member_email,request);
		System.out.println("isS:"+isS);
		if(isS) {
			
			return "ChangePassword";
		}else {
			model.addAttribute("msg","실패");
			return "error";
		}
		
	}

	@RequestMapping(value = "/addclassform.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String addClassForm(Locale locale, Model model, String department) {
		logger.info("강의등록 선택페이지 이동{}.", locale);
		return "AddClassForm";
	}
	
	
	@RequestMapping(value = "/callback.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String callback(Locale locale, Model model,String access_token,String state,String token_type) {
		logger.info("네이버 로그인{}.", locale);
		String token = access_token;
		System.out.println(state);
		System.out.println(token);
		System.out.println(token_type);
		return "Callback";
	}

	@RequestMapping(value = "/naverLog.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String naverLog(Locale locale, Model model,HttpServletRequest request,String email,String name,String id,String birthday) {
		logger.info("네이버 로그인 회원체크{}.", locale);
		String member_type="S";
		String member_name=name;
		String member_email=email;
		String member_id=id;
		String member_birth=birthday;
	
		

		System.out.println("member_name:"+member_name);
		System.out.println("member_email:"+member_email);
		System.out.println("member_id:"+member_id);
		System.out.println("member_birth:"+member_birth);
		
		HttpSession session =request.getSession();
		MemberDto dto = memberService.NaverLogCheck(member_email);
		if(dto!=null&&(dto.getMember_key()).equals("Y")) {	
			session.setAttribute("logInMember", dto );	
			return "redirect:main.do";
		}else if(dto==null){
			boolean isS = memberService.NaverSignUp(member_email,member_name,member_id,member_birth,member_type);
			boolean isS2 = mailsender.mailSendWithUserKey(member_email,member_id,request);
			if(isS&&isS2) {
				model.addAttribute("msg","입력하신 네이버메일에서 인증확인을 하셔야 서비스 이용이 가능합니다.");		
				model.addAttribute("url","https://www.naver.com/");
				return "Redirect";
			}else{
				model.addAttribute("msg","가입실패");
				return "error";
			}
		}else {
		model.addAttribute("msg", "이메일인증을 하지 않으셨습니다.메일 인증 하신후에 서비스 이용바랍니다." );
			model.addAttribute("url","https://www.naver.com/");
			return "Redirect";
		}
		
		
	}
	@RequestMapping(value = "/myMsg.do", method = RequestMethod.GET)
	public String myMsg(Locale locale, Model model,HttpSession session) {
		logger.info("쪽지함 이동하기 {}.", locale);
		
		MemberDto memberDto	=(MemberDto)session.getAttribute("logInMember");
		String msg_email = memberDto.getMember_email();
		System.out.println("세션에 담긴값:"+msg_email);
		List<MsgDto> list= msgService.getmsglist(msg_email);
		System.out.println("리스트 담은값:"+list);
		model.addAttribute("list", list );
		return "MyMsg";
	}
	
	@RequestMapping(value = "/msgdetail.do", method = RequestMethod.GET)
	public String msgdetail(Locale locale, Model model,int msg_seq) {
		logger.info("쪽지 상세보기 {}.", locale);
		MsgDto dto = msgService.detailmsg(msg_seq);
		model.addAttribute("dto", dto );
		return "MsgDetail";
	}
	
	@RequestMapping(value = "/muldelMsg.do",  method = {RequestMethod.GET, RequestMethod.POST})
	public String muldelMsg(Locale locale, Model model, String[] chk) {
		logger.info("쪽지 삭제하기 {}.", locale);
		boolean isS = msgService.muldelmsg(chk);
		if(isS) {
			return "redirect:myMsg.do";
		}else {
			model.addAttribute("msg","글 삭제 실패");
			return "error";
		}	
	}
	
	
	
	
	
}
