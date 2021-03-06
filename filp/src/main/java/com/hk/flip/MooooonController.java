package com.hk.flip;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hk.flip.dtos.AdminDto;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.DataTableWrapperDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.dtos.MsgDto;
import com.hk.flip.service.IAdminService;
import com.hk.flip.service.IClassService;
import com.hk.flip.service.IInclassService;
import com.hk.flip.service.IMemberService;
import com.hk.flip.service.IMoons_service;
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
	@Autowired
	private IClassService classService;
	@Autowired
	private IAdminService adminService;
	@Autowired
	private IInclassService inclassService;
	@Autowired
	private IMoons_service moons_service;
	
	@Scheduled(cron="0 41 16 * * ? ")
	public void doSchedule() {
	   logger.info("Spring Schedule Start!");
	   if(!adminService.cleanClass()) {
		   
	   }
	   
	   
	}
	
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model,HttpServletRequest request,HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		MemberDto memberDto = (MemberDto)request.getSession().getAttribute("logInMember");
		System.out.println(memberDto);
		String type = memberDto.getMember_type();
		int member_seq = memberDto.getMember_seq();
		String member_name = memberDto.getMember_name();
		System.out.println("로그인 타입:"+type);
		System.out.println("member_seq:"+member_seq);
		model.addAttribute("inclassList",myPageService.getAllInclassList(member_seq) );		
		model.addAttribute("myWishList",myPageService.getAllWishList(member_seq) );		
		model.addAttribute("member", myPageService.viewMyMember(member_seq));
		if(type.equals("S")) {
			return "s_mypage";
		}else if(type.equals("T")){
			return "t_mypage";
		}else {
			adminService.cleanClass();
			AdminDto adminDto = adminService.getFlipStatus();
			model.addAttribute("admindata",adminDto);			
			return "admin/A_mypage";
		}
	}
	
	@RequestMapping(value = "/test-loginform.do", method = RequestMethod.GET)
	public String loginform(Locale locale, Model model) {
		logger.info("로그인 폼 이동하기{}.", locale);	
		return "testlogin";
	}
	
	@RequestMapping(value = "/class_addform.do", method = RequestMethod.GET)
	public String class_addform(Locale locale, Model model,HttpServletRequest request) {
		logger.info("강의등록폼이동{}.", locale);
		String member_type= ((MemberDto)request.getSession().getAttribute("logInMember")).getMember_type();
		String class_type = (String)request.getParameter("classType");
		System.out.println("classType"+class_type);
		if(class_type.equals("C")) {
			if(member_type.equals("S")) {
				model.addAttribute("msg","강의 등록 권한이 없습니다.");		
				model.addAttribute("url","addclassform.do");
				return "Redirect";
			}
			return "AddClass_C";
		}else if(class_type.equals("S")) {
			if(member_type.equals("T")) {
				model.addAttribute("msg","스터디 등록 권한이 없습니다.");		
				model.addAttribute("url","addclassform.do");
				return "Redirect";
			}
			return "AddClass_S";
		}else {
			if(member_type.equals("T")) {
				model.addAttribute("msg","강사 초빙 강의 등록 권한이 없습니다.");		
				model.addAttribute("url","addclassform.do");
				return "Redirect";
			}
			return "AddClass_W";
		}
	}
	
	@RequestMapping(value = "/class_add_C.do", method = RequestMethod.POST)
	public String class_add(Locale locale, Model model,HttpServletRequest request) {
		logger.info("강의등록이동{}.", locale);
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
		ClassDto classdto = new ClassDto(); 
		int memberSeq = ((MemberDto)request.getSession().getAttribute("logInMember")).getMember_seq();
		
		String[] class_starttime = multi.getParameterValues("class_starttime");
		classdto.setClass_member_seq(memberSeq);
		classdto.setClass_type(multi.getParameter("class_type"));
		classdto.setClass_depa(multi.getParameter("class_depa"));
		classdto.setClass_name(multi.getParameter("class_name"));
		classdto.setClass_info(multi.getParameter("class_info"));
		classdto.setClass_area(multi.getParameter("class_area"));
		classdto.setClass_week(multi.getParameter("class_week"));
		classdto.setClass_time(Integer.parseInt(multi.getParameter("class_time")));
		classdto.setClass_participation(Integer.parseInt(multi.getParameter("class_participation")));
		classdto.setClass_price(Integer.parseInt(multi.getParameter("class_price")));
		classdto.setClass_detail(multi.getParameter("class_detail"));
		classdto.setClass_sd(request.getParameter("class_sd"));
		classdto.setClass_cd(request.getParameter("class_cd"));
		
		MultipartFile multifile = multi.getFile("member_profile");
		String origin_fname=multifile.getOriginalFilename();
		String origin_fextends=origin_fname.substring(origin_fname.lastIndexOf("."));
		String creatUUID=UUID.randomUUID().toString().replaceAll("-", "");
		String stored_fname = creatUUID+origin_fextends;
		classdto.setClass_img(stored_fname);
//		String saveDirectory = request.getSession().getServletContext().getRealPath("upload");
//		File f=new File(saveDirectory+"/class/"+stored_fname);
		String gonguFolder = "C:/Users/hk-edu/git/FLIP/filp/src/main/webapp/resources/img/class";
		File f=new File(gonguFolder+"/"+stored_fname);
		try {
			multifile.transferTo(f);	
		} catch (Exception e) {	
			e.printStackTrace();
		}
		System.out.println("경로:"+f);
		
		List<ClassDto> list = new ArrayList<ClassDto>();
		for(String s :class_starttime) {
			System.out.println("리스트에 담길 수업 시작 시간:"+s);
			classdto.setClass_starttime(s);			
			String rst=classService.addClass(classdto);
			if(rst	!=null) {
				System.out.println(classdto+"강의 등록 실패 "+rst);
				model.addAttribute("msg","강의 등록에 실패했습니다.");		
				model.addAttribute("url","main.do");
				return "Redirect";
			};
		}
		model.addAttribute("msg",class_starttime.length+"개의 강의가 등록 되었습니다.");		
		model.addAttribute("url","main.do");
		return "Redirect";
	}
	
	@RequestMapping(value = "/class_add.do", method = RequestMethod.POST)
	public String class_add(Locale locale, Model model,HttpServletRequest request,ClassDto classDto) {
		logger.info("강의등록이동(W,S){}.", locale);
		
		int memberSeq = ((MemberDto)request.getSession().getAttribute("logInMember")).getMember_seq();
		classDto.setClass_member_seq(memberSeq);
		String rst="";
		String class_depa = classDto.getClass_depa();
		int random = (int)(Math.random()*3)+1;
		classDto.setClass_img(class_depa+"/"+random+".jpg");
		if(classDto.getClass_type().equals("W")){
			rst = classService.addClass(classDto);
			if(rst==null) {
				System.out.println(classDto+"원해요 수강 성공");
			}else {
				System.out.println(memberSeq+"수강 실패 "+rst);
				model.addAttribute("msg","강의 등록에 실패했습니다.");		
				model.addAttribute("url","main.do");
				return "Redirect";
			}
			///S
		}else {
			rst = classService.addClass(classDto);
			if(rst==null) {
				System.out.println(classDto+"스터디 수강 성공");
			}else {
				System.out.println(memberSeq+"수강 실패 "+rst);
				model.addAttribute("msg","강의 등록에 실패했습니다.");		
				model.addAttribute("url","main.do");
				return "Redirect";
			}
		}
		model.addAttribute("msg","강의가 등록 되었습니다.");	
		model.addAttribute("url","main.do");
		return "Redirect";
	}
	@RequestMapping(value = "/regist_class.do", method = RequestMethod.POST)
	public String regist_class(Locale locale, Model model,HttpServletRequest request,int seq) {
		logger.info("강의등록이동(W,S){}.", locale);
		MemberDto memberDto = (MemberDto)request.getSession().getAttribute("logInMember");
		int member_seq = memberDto.getMember_seq();
		String email = memberDto.getMember_email();
		if(inclassService.regist_class(member_seq,seq)) {
			myPageService.deleteWishlist(seq,email);
			model.addAttribute("msg","수강 신청에 성공했습니다.");		
			model.addAttribute("url","cdetail.do?class_seq="+seq);
			return "Redirect";
		}else {
			model.addAttribute("msg","수강 신청에 실패했습니다.");		
			model.addAttribute("url","cdetail.do?class_seq="+seq);
			return "Redirect";
		}
		
	}
	@ResponseBody
	@RequestMapping(value = "/chkclasstime.do", method = RequestMethod.POST)//로그인 성공여부 확인후 메인으로
	public Map chkclasstime(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession) {
		logger.info("시간체크 에이작스.", locale);
		Map map = new HashMap<String, String>();
		ClassDto classdto = new ClassDto(); 
		MemberDto memberDto = (MemberDto) httpSession.getAttribute("logInMember");
		System.out.println(memberDto);
		int member_seq = memberDto.getMember_seq();
		SimpleDateFormat fomat = new SimpleDateFormat("yyyy/MM/dd");
//		Date sd = new Date();
//		Date cd =new Date();
//		try {
//			sd = fomat.parse(request.getParameter("class_sd"));
//			cd = fomat.parse(request.getParameter("class_cd"));
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		classdto.setClass_member_seq(member_seq);
		String strSeq = (request.getParameter("seq"));
		String rst = "";
		System.out.println("chkclasstime if 앞 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		if(strSeq!=null&&strSeq.length()!=0) {
			System.out.println("strSeq::member_seq="+strSeq+"::"+member_seq);
			int seq = Integer.parseInt(strSeq);
			rst = classService.chkInclassTime_Join(member_seq,seq);
			System.out.println("rst::::::::"+rst);
		}else {
			classdto.setClass_starttime(request.getParameter("class_starttime"));
			classdto.setClass_sd(request.getParameter("class_sd"));
			classdto.setClass_cd(request.getParameter("class_cd"));
			classdto.setClass_time(Integer.parseInt(request.getParameter("class_time")));
			classdto.setClass_week(request.getParameter("class_week"));
			System.out.println("아작스에서 넘기기전 classdto::\n"+classdto);
			rst = classService.chkInclassTime_Create(classdto);
		}
			if(rst==null) {
				map.put("rst","개설가능");
				return map;
			}else {
				map.put("rst",rst);
				return map;
			}
		
	}
	
	@RequestMapping(value = "/memberMgt.do", method = RequestMethod.GET)//로그인 성공여부 확인후 메인으로
	public String memberMgt(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession) {
		logger.info("관리자 회원 관리.", locale);
//		List<MemberDto> list = adminService.getMemberList(10);
		return "admin/memberMgt";
	}
	
	@RequestMapping(value = "/classMgt.do", method = RequestMethod.GET)//로그인 성공여부 확인후 메인으로
	public String classMgt(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession) {
		logger.info("관리자 회원 관리.", locale);
		String class_termin = request.getParameter("class_termin");
		String class_type = request.getParameter("class_type");
		model.addAttribute("class_termin", class_termin);
		return "admin/classMgt";
	}
	
	@ResponseBody
	@RequestMapping(value = "/getUserListAjax.do", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public String getUserListAjax(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,HttpSession httpSession) throws JsonProcessingException, UnsupportedEncodingException {
		logger.info("유저 목록 AJAX.", locale);		
		List<MemberDto> list = adminService.getMemberList(10);
//		for(MemberDto dto:list) {
//			System.out.println(list);
//		}
		//인코딩 확인
//		for(int i =0 ;i<list.size();i++) {
//		String text = i+"+++"+list.get(i).getMember_name();
//		  String encode = "";
//		  String [] charsets = {"UTF-8","EUC-KR","ISO-8859-1", "CP1251", "KSC5601"};
//
//		  for ( String charset: charsets ) {
//		    encode = URLEncoder.encode(text, charset);
//		    System.out.println("origin["+text+"], "+"encoded["+encode+"], charset["+charset+"]");
//		  }
//		}
		DataTableWrapperDto wrapper = new DataTableWrapperDto();
		wrapper.setAaData(list);
		 ObjectMapper obm  = new ObjectMapper();
		 
		String userListJson = obm.writeValueAsString(wrapper);
		System.out.println("userListJson:::"+userListJson);
		return userListJson;
	}
	
	//관리자 회원 정보 수정
	@RequestMapping(value = "/AMemberUpdate.do", method = RequestMethod.POST)//로그인 성공여부 확인후 메인으로
	public String AMemberUpdate(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession, MemberDto dto) {
		logger.info("관리자 회원 정보 수정.", locale);
		String member_type = request.getParameter("member_type");
//		if(member_type.length()>0) {
//			if(!(adminService.updateMember(dto))) {
//				model.addAttribute("msg","회원정보 변경에 실패했습니다.");		
//				model.addAttribute("url","memberMgt.do");
//				return "Redirect";
//			}else {
//				System.out.println("회원정보 변경 성공");
//			return "admin/memberMgt";
//			}
			////T인경우
	
			MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
			
			dto.setMember_id(multi.getParameter("member_id"));
			dto.setMember_name(multi.getParameter("member_name"));
			dto.setMember_password(multi.getParameter("member_password"));
			dto.setMember_birth(multi.getParameter("member_birth"));
			dto.setMember_phone(multi.getParameter("member_phone"));
			dto.setMember_info(multi.getParameter("member_info"));
			String old_fileName = multi.getParameter("old_file");
			MultipartFile multifile = multi.getFile("member_profile");
			if(!multifile.isEmpty()) {
				if(old_fileName!=null||old_fileName.length()!=0) {
					File old_file = new File("C:/Users/hk-edu/git/FLIP/filp/src/main/webapp/resources/img/class/"+old_fileName);	        
					if( old_file.exists() ){
						if(old_file.delete()){
							System.out.println("파일삭제 성공");
						}else{
							System.out.println("파일삭제 실패");
						}
					}else{
						System.out.println("파일이 존재하지 않습니다.");
					}
				}
				String origin_fname=multifile.getOriginalFilename();
				String origin_fextends=origin_fname.substring(origin_fname.lastIndexOf("."));
				String creatUUID=UUID.randomUUID().toString().replaceAll("-", "");
				String stored_fname = creatUUID+origin_fextends;
				dto.setMember_profile(stored_fname);
		//		String saveDirectory = request.getSession().getServletContext().getRealPath("upload");
		//		File f=new File(saveDirectory+"/class/"+stored_fname);
				String gonguFolder = "C:/Users/hk-edu/git/FLIP/filp/src/main/webapp/resources/img/member";
				File f=new File(gonguFolder+"/"+stored_fname);
				try {
					multifile.transferTo(f);	
				} catch (Exception e) {	
					e.printStackTrace();
				}
				System.out.println("경로:"+f);
			}
		
		if(!(adminService.updateMember(dto))) {
			model.addAttribute("msg","회원정보 변경에 실패했습니다.");		
			model.addAttribute("url","memberMgt.do");
			return "Redirect";
		}else {
			System.out.println("회원정보 변경 성공");
		return "admin/memberMgt";
		}
	}
	//관리자 강의 정보 수정
	@RequestMapping(value = "/AClassUpdate.do", method = RequestMethod.POST)//로그인 성공여부 확인후 메인으로
	public String AClassUpdate(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession) {
		logger.info("관리자 강의 정보 수정.", locale);
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
		ClassDto classdto = new ClassDto(); 
		classdto.setSeq(Integer.parseInt(multi.getParameter("seq")));
		classdto.setClass_depa(multi.getParameter("class_depa"));
		classdto.setClass_name(multi.getParameter("class_name"));
		classdto.setClass_info(multi.getParameter("class_info"));
		classdto.setClass_area(multi.getParameter("class_area"));
		classdto.setClass_detail(multi.getParameter("class_detail"));
		String old_fileName = multi.getParameter("old_file");
		
		File old_file = new File("C:/Users/hk-edu/git/FLIP/filp/src/main/webapp/resources/img/class/"+old_fileName);
        
        if( old_file.exists() ){
            if(old_file.delete()){
                System.out.println("파일삭제 성공");
            }else{
                System.out.println("파일삭제 실패");
            }
        }else{
            System.out.println("파일이 존재하지 않습니다.");
        }
		
		MultipartFile multifile = multi.getFile("member_profile");
		String origin_fname=multifile.getOriginalFilename();
		String origin_fextends=origin_fname.substring(origin_fname.lastIndexOf("."));
		String creatUUID=UUID.randomUUID().toString().replaceAll("-", "");
		String stored_fname = creatUUID+origin_fextends;
		classdto.setClass_img(stored_fname);
//		String saveDirectory = request.getSession().getServletContext().getRealPath("upload");
//		File f=new File(saveDirectory+"/class/"+stored_fname);
		String gonguFolder = "C:/Users/hk-edu/git/FLIP/filp/src/main/webapp/resources/img/class";
		File f=new File(gonguFolder+"/"+stored_fname);
		try {
			multifile.transferTo(f);	
		} catch (Exception e) {	
			e.printStackTrace();
		}
		System.out.println("경로:"+f);
		
		if(!(adminService.updateClass(classdto))) {
			model.addAttribute("msg","회원정보 변경에 실패했습니다.");		
			model.addAttribute("url","classMgt.do");
			return "Redirect";
		}else {
			System.out.println("회원정보 변경 성공");
			model.addAttribute("msg","회원정보 변경에 성공했습니다.");		
			model.addAttribute("url","classMgt.do");
			return "Redirect";
		}
	}
	
	//관리자 회원 정보 삭제
	@RequestMapping(value = "/aMemberDelete.do", method = RequestMethod.GET)//로그인 성공여부 확인후 메인으로
	public String aMemberDelete(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession, String member_email,String termin) {
		logger.info("관리자 회원 삭제 요청.", locale);
		if(!(adminService.aMemberDelete(member_email))) {
			model.addAttribute("msg","회원정보 변경에 실패했습니다.");		
			model.addAttribute("url","memberMgt.do?class_termin="+termin);
			return "Redirect";
		}else {
			model.addAttribute("msg","회원 삭제 성공");
			model.addAttribute("url","memberMgt.do?class_termin="+termin);
			return "Redirect";
		}
	}
	
	//관리자 강의 정보 삭제
	@RequestMapping(value = "/aClassDelete.do", method = RequestMethod.GET)//로그인 성공여부 확인후 메인으로
	public String aClassDelete(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession, int seq, String termin) {
		logger.info("관리자 강의 정보 삭제 요청.", locale);
		if(!(adminService.aClassDelete(seq))) {
			model.addAttribute("msg","강의 삭제에 실패했습니다.");		
			model.addAttribute("url","classMgt.do?class_termin="+termin);
			return "Redirect";
		}else {
			model.addAttribute("msg","강의 삭제 성공");
			model.addAttribute("url","classMgt.do?class_termin="+termin);
			return "Redirect";
		}
	}
		
	//관리자 폐강
	@RequestMapping(value = "/aClassClose.do", method = RequestMethod.GET)//로그인 성공여부 확인후 메인으로
	public String aClassClose(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession, int seq, String termin) {
		logger.info("관리자 폐강 요청.", locale);
		if(!(adminService.aClassClose(seq))) {
			model.addAttribute("msg","폐강 실패했습니다.");		
			model.addAttribute("url","classMgt.do?class_termin="+termin);
			return "Redirect";
		}else {
			model.addAttribute("msg","폐강 성공");
			model.addAttribute("url","classMgt.do?class_termin="+termin);
			return "Redirect";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/getClassListAjax.do", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public String getClassListAjax(@RequestParam String class_termin,HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,HttpSession httpSession) throws JsonProcessingException, UnsupportedEncodingException {
		logger.info("유저 목록 AJAX.", locale);
		System.out.println("class_termin::"+class_termin);
		List<ClassDto> list = adminService.getClassList(class_termin);
		DataTableWrapperDto wrapper = new DataTableWrapperDto();
		wrapper.setAaData(list);
		ObjectMapper obm  = new ObjectMapper();
		String userListJson = obm.writeValueAsString(wrapper);
		System.out.println("userListJson:::"+userListJson);
		return userListJson;
	}
	
	@RequestMapping(value = "/AMemberDetail.do", method = RequestMethod.GET)//
	public String AMemberDetail(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession
			,String email,String member_type) {
		logger.info("관리자 회원 정보 열람.", locale);
//		MemberDto memberDto = (MemberDto) httpSession.getAttribute("logInMember");
//		if(memberDto.getMember_type()==null|(!memberDto.getMember_type().equals("A"))) {
//			model.addAttribute("msg","권한이 없습니다.");
//			model.addAttribute("url","main.do");
//			return "Redirect";
//		}
		MemberDto dto = adminService.getMemberProfil(email);
		model.addAttribute("member", dto);
//		if(member_type.equals("T")) {
//			return "admin/memberDetail_T";
//		}else {
//			return "admin/memberDetail_S";
//		}
			return "admin/memberDetail";
	}
	
	@RequestMapping(value = "/AClassDetail.do", method = RequestMethod.GET)//
	public String AClassDetail(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession,int seq) {
		logger.info("관리자 회원 정보 열람.", locale);
//		MemberDto memberDto = (MemberDto) httpSession.getAttribute("logInMember");
//		if(memberDto.getMember_type()==null|(!memberDto.getMember_type().equals("A"))) {
//			model.addAttribute("msg","권한이 없습니다.");
//			model.addAttribute("url","main.do");
//			return "Redirect";
//		}
		String class_type = request.getParameter("class_type");
		ClassDto dto = adminService.getClassProfil(seq);
		model.addAttribute("dto", dto);
		System.out.println(dto);
		if(class_type.equals("C")) {
			return "admin/classDetail_C";
		}else {
			return "admin/classDetail_W_S";
		}
	}
	
	@RequestMapping(value = "/memberDetail.do", method = RequestMethod.GET)//
	public String memberUpdate(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession
			,String email) {
		logger.info("회원 정보 수정폼.", locale);
//		MemberDto memberDto = (MemberDto) httpSession.getAttribute("logInMember");
//		if(memberDto.getMember_type()==null|(!memberDto.getMember_type().equals("A"))) {
//			model.addAttribute("msg","권한이 없습니다.");
//			model.addAttribute("url","main.do");
//			return "Redirect";
//		}
		MemberDto dto = adminService.getMemberProfil(email);
		model.addAttribute("member", dto);
		return "memberDetail";
	}
	
	//관리자 회원 정보 수정
	@RequestMapping(value = "/memberUpdate.do", method = RequestMethod.POST)//로그인 성공여부 확인후 메인으로
	public String memberUpdate(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession) {
		logger.info("관리자 회원 정보 수정.", locale);
		String member_type = request.getParameter("member_type");
		MemberDto dto = new MemberDto();
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
		dto.setMember_email(multi.getParameter("member_email"));
		dto.setMember_password(multi.getParameter("member_password"));
		dto.setMember_birth(multi.getParameter("member_birth"));
		dto.setMember_phone(multi.getParameter("member_phone"));
		dto.setMember_info(multi.getParameter("member_info"));
		String old_fileName = multi.getParameter("old_file");
		File old_file = new File("C:/Users/hk-edu/git/FLIP/filp/src/main/webapp/resources/img/class/"+old_fileName);
        if( old_file.exists() ){
            if(old_file.delete()){
                System.out.println("파일삭제 성공");
            }else{
                System.out.println("파일삭제 실패");
            }
        }else{
            System.out.println("파일이 존재하지 않습니다.");
        }
	
		MultipartFile multifile = multi.getFile("member_profile");
		if(!multifile.isEmpty()) {
			String origin_fname=multifile.getOriginalFilename();
			String origin_fextends=origin_fname.substring(origin_fname.lastIndexOf("."));
			String creatUUID=UUID.randomUUID().toString().replaceAll("-", "");
			String stored_fname = creatUUID+origin_fextends;
			dto.setMember_profile(stored_fname);
	//		String saveDirectory = request.getSession().getServletContext().getRealPath("upload");
	//		File f=new File(saveDirectory+"/class/"+stored_fname);
			String gonguFolder = "C:/Users/hk-edu/git/FLIP/filp/src/main/webapp/resources/img/member";
			File f=new File(gonguFolder+"/"+stored_fname);
			try {
				multifile.transferTo(f);	
			} catch (Exception e) {	
				e.printStackTrace();
			}
			System.out.println("경로:"+f);
		}
		if(member_type.equals("T")) {
			dto.setMember_info(multi.getParameter("member_info"));			
		}
		if(!(adminService.updateMember(dto))) {
			model.addAttribute("msg","회원정보 변경에 실패했습니다.");		
			model.addAttribute("url","mypage.do");
			return "Redirect";
		}else {
			System.out.println("회원정보 변경 성공");
		return "redirect:mypage.do";
		}
	}
	
	@RequestMapping(value = "/cancelClass.do", method = RequestMethod.GET)//
	public String cancelClass(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession
			,int seq,String email) {
		logger.info("회원 정보 수정폼.", locale);
		MemberDto memberDto = (MemberDto) httpSession.getAttribute("logInMember");
		System.out.println("cancelClass.do"+memberDto+" seq ++ email  "+seq+"++"+email);
		if(memberDto.getMember_type()==null||!(memberDto.getMember_email().equals(email))) {
			model.addAttribute("msg","권한이 없습니다.");
			model.addAttribute("url","main.do");
			return "Redirect";
		}
		if(memberDto.getMember_type().equals("T")) {
			if(!myPageService.deleteInclass_T(seq, email)){
				model.addAttribute("msg","강의 삭제는 개강 3일 전까지만 가능합니다.");		
				model.addAttribute("url","mypage.do");
				return "Redirect";
			}else {
				adminService.aClassDelete(seq);
				adminService.aInclassDelete(seq);
				System.out.println("inclass 삭제 성공");				
				model.addAttribute("msg","강의 삭제에 성공했습니다.");		
				model.addAttribute("url","mypage.do");
				return "Redirect";
			}
		}else {
			if(!(myPageService.deleteInclass(seq,email))) {
				model.addAttribute("msg","강의 삭제에 실패했습니다.");		
				model.addAttribute("url","mypage.do");
				return "Redirect";
			}else {
				System.out.println("inclass 삭제 성공");				
				model.addAttribute("msg","강의 삭제에 성공했습니다.");		
				model.addAttribute("url","mypage.do");
				return "Redirect";
			}
		}
	}
	
	@RequestMapping(value = "/cancelWishlist.do", method = RequestMethod.GET)//
	public String cancelWishlist(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession
			,int seq,String email) {
		logger.info("회원 정보 수정폼.", locale);
		MemberDto memberDto = (MemberDto) httpSession.getAttribute("logInMember");
		if(memberDto.getMember_type()==null|!(memberDto.getMember_email().equals(email))) {
			model.addAttribute("msg","권한이 없습니다.");
			model.addAttribute("url","main.do");
			return "Redirect";
		}
		if(!(myPageService.deleteWishlist(seq,email))) {
			model.addAttribute("msg","강의 삭제에 실패했습니다.");		
			model.addAttribute("url","mypage.do");
			return "Redirect";
		}else {
			System.out.println("강의 삭제 성공");
			model.addAttribute("msg","강의 삭제에 성공했습니다.");		
			model.addAttribute("url","mypage.do");
			return "Redirect";
		}
	}
	//대영씨 내꺼에 만들어 논거 지우기 뭐해서 옮겨놨어요 ㅎ
	@RequestMapping(value = "/A_sendMsgForm.do", method = RequestMethod.GET)
	public String A_sendMsgForm(Locale locale, Model model) {
		logger.info("{}.", locale);
		return "admin/sendMsgForm";
	}
	
	@RequestMapping(value = "/A_sendMsg.do", method = RequestMethod.POST)
	public String A_sendMsg(Locale locale, Model model,MsgDto msg) {
		logger.info("{}.", locale);
		boolean rst;
		if(msg.getMsg_to().equals("A")) {			
			rst = moons_service.sendAllMSG(msg);
		}else {
			rst = moons_service.sendMSG(msg);
		}
		if(rst) {
			model.addAttribute("msg","메세지 전송에 성공했습니다.");		
			model.addAttribute("url","A_sendMsgForm.do");
			return "Redirect";
		}else {
			model.addAttribute("msg","메세지 전송에 실패했습니다.");		
			model.addAttribute("url","A_sendMsgForm");
			return "Redirect";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/userSerch.do", method = RequestMethod.POST)//로그인 성공여부 확인후 메인으로
	public String userSerch(HttpServletRequest request,Locale locale, Model model,HttpSession httpSession) throws JsonProcessingException {
		logger.info("시간체크 에이작스.", locale);
		String searchValue = request.getParameter("searchValue");
		System.out.println("searchValue~~~~~~~~~~~~~~~~~~~"+searchValue);
		Map<String, String> map = new HashMap<String, String>();
		List<MemberDto> list = adminService.getUsersEmail(searchValue);
		List<String> list2 = new ArrayList<String>();

		for(MemberDto dto:list) {
			list2.add(dto.getMember_email());
		}
		System.out.println("~~~~~~~~~");
		System.out.println(list2);
		System.out.println("~~~~~~~~~");
		
		String json = new ObjectMapper().writeValueAsString(list2);
		System.out.println(json);
		return json;
	}
}
