package com.hk.flip;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hk.flip.dtos.CalendarDto;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.InclassDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.dtos.SearchDto;
import com.hk.flip.service.IClassService;
import com.hk.flip.service.IClassWishlistService;
import com.hk.flip.service.IInclassService;
import com.hk.flip.service.ISreachService;
import com.hk.utils.Util;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SeoController {

	private static final Logger logger = LoggerFactory.getLogger(SeoController.class);

	@Autowired
	private IClassService classService;
	@Autowired
	private IInclassService inclassService;
	@Autowired
	private IClassWishlistService classwishlistService;
	@Autowired
	private ISreachService searchService;
	//main list
	@RequestMapping(value = "/main.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mainOpen(Locale locale, Model model, String department, HttpServletRequest request) {
		logger.info("Started main{}.", locale);
		System.out.println(department);
		List<ClassDto> classList = classService.mainClassList(department);
		List<ClassDto> studyList = classService.mainStudyList(department);
		List<ClassDto> wantList = classService.mainWantList(department);
		System.out.println("classdto="+classList);
		model.addAttribute("classlist", classList);
		model.addAttribute("studylist", studyList);
		model.addAttribute("wantlist", wantList);
		return "main";
	}
	@RequestMapping(value="/searchCount.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchCount(Locale local, Model model, String search) {
		System.out.println("search~~~~~~~"+search);
		if(!search.equals("")) {
			int searchList=classService.pageCount(search);
			if(searchList!=0) {
				if(searchService.chkSearchWord(search)) {
					System.out.println("검색어 리스트 수정 성공");
				}else {
					System.out.println("검색어 리스트 수정 실패");
				}
			}
		}
		return "forward:/searchlist.do";
	}
	//search list
	@RequestMapping(value = "/searchlist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchlist(Locale locale, Model model,String search, String department, String classType, HttpServletRequest request,String num, String selArea) {
		logger.info("search list 시작{}.", locale);
		String addArea = "";
		Map<String, String> paramList = new HashMap<String, String>();
		paramList.put("search", search);
		paramList.put("category", department);
		paramList.put("classType", classType);
		paramList.put("pagenum", num);
		System.out.println("search: "+search+", department: "+department+", classType: "+ classType);
		System.out.println("****num출력: "+num);
		model.addAttribute("paramList",paramList);
		String[] areas = request.getParameterValues("selectedarea");
		if(areas!=null) {
			for(int i=0;i<areas.length;i++) {
				if(i==areas.length-1) {
					addArea+=areas[i];
				}else {
					addArea+=(areas[i]+"%7c");
				}
			}
			System.out.println("addArea: "+addArea);
			model.addAttribute("addArea",addArea);	
		}
		return "all_list";
	}
	
	//search list load()	
	@RequestMapping(value = "/listload.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String listload(Locale locale, Model model,String search, String department, String classType, String num, String selArea) {
		logger.info("Started main{}.", locale);
		int allPageCount = classService.pageCount(search, department, classType,selArea);
		int pageCount = allPageCount/16;
		int checkFloat = allPageCount%16;
		int thisPage=Integer.parseInt(num);
		int nowBlock = thisPage/5;
		int endPage=0;
		System.out.println("checkFloat: "+checkFloat);
		List<ClassDto> areaList = classService.areaCount(search, department, classType,selArea);
		//현재 보는 페이지 블록계산
		if(thisPage%5==0) {
			nowBlock-=1;
		}
		int beginPage=nowBlock*5+1;
		//전체 페이지 계산
		if(checkFloat>0) {
			pageCount+=1;
			System.out.println("allpageCount: "+pageCount);
		}
		
		endPage=beginPage+4;
		
		if(pageCount/5==nowBlock) {
			endPage=pageCount;
		}
		System.out.println("nowblock:"+nowBlock);
		System.out.println("pageCount: "+pageCount);
		System.out.println("beginPage: "+beginPage);
		System.out.println("endPage: "+endPage);
		System.out.println("sel*********:"+selArea);
		System.out.println("checkechek thisPage: "+thisPage);
		List<ClassDto> searchList = classService.searchList(search, department, classType, thisPage, selArea);
		System.out.println("SeoController 검색 조건 파라미터 - searchlist:"+search+", category:"+department+", classType:"+classType+", selArea: "+selArea+",thisPage: "+thisPage);
		System.out.println("출력출력:"+searchList);
		Map<String, String> paramList = new HashMap<String, String>();
		paramList.put("search", search);
		paramList.put("category", department);
		paramList.put("classType", classType);
		model.addAttribute("paramList",paramList);
		model.addAttribute("searchList",searchList);
		model.addAttribute("thisPage",thisPage);
		model.addAttribute("allPageCount",allPageCount);
		model.addAttribute("areaList",areaList);
		model.addAttribute("nowBlock",nowBlock+1);
		model.addAttribute("pageCount",pageCount);
		model.addAttribute("beginpage",beginPage);
		model.addAttribute("endpage",endPage);
		return "listload";
	}	
	
	//캘린더
	@RequestMapping(value = "/scheduleCalendar.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mySchedule(Locale locale, Model model, HttpServletRequest request, String year, String month) {
		logger.info("Schedual select{}.", locale);
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto)session.getAttribute("logInMember");
		System.out.println("세션확인"+memberDto);
		int memberSeq = memberDto.getMember_seq();
		Map<String, Object> calendars=Util.getCalendar(year, month);
		System.out.println("controller"+calendars);
		List<InclassDto> myClass = inclassService.myClass(memberSeq);
		List<CalendarDto> mySchedule = classService.scheduleList(myClass,calendars);
		for(int i=0;i<mySchedule.size();i++) {
			System.out.println("스케쥴표"+i+":"+mySchedule.get(i));
		}
		
		model.addAttribute("mySchedule",mySchedule);
		model.addAttribute("calendars",calendars);
		return "mySchedule";
	}
	//메인에서 위시리스트 담기
	@RequestMapping(value = "/insertwhishlist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insertwhishlist(Locale locale, Model model,HttpServletRequest request, String class_seq) {
			HttpSession session = request.getSession();
			MemberDto memberDto = (MemberDto)session.getAttribute("logInMember");
			if(memberDto==null) {
				model.addAttribute("msg","로그인이 필요합니다.");
				model.addAttribute("url","login.do");
				return "Redirect";
			}else{
				int member_seq = memberDto.getMember_seq();
				if(memberDto.getMember_type().equals("T")) {
					model.addAttribute("msg","강사는 강의에 참여할 수 없습니다.");
					model.addAttribute("url","mainform.do");
					return "Redirect";
				}
				boolean success =  classwishlistService.addWishlist(member_seq, Integer.parseInt(class_seq));
				if(success) {
					model.addAttribute("msg","위시리스트에 담았습니다. 확인하시겠습니까?");
					return "Redirect";
				}else{
					model.addAttribute("msg","이미 위시리스트 있는 수업입니다.");
					model.addAttribute("url","main.do");
					return "Redirect";
				}
			}
	}
	
	@ResponseBody
	@RequestMapping(value = "/autoComplete.do", method = {RequestMethod.GET, RequestMethod.POST},produces="text/plain;charset=UTF-8")
	public String autoComplete(Locale locale, Model model,HttpServletRequest request, String search) throws JsonProcessingException {
		logger.info("ajaxajax select{}.", locale);
		Map<String,List<SearchDto>> autoMap = new HashMap<String,List<SearchDto>>();
		System.out.println("컨트롤러 들어옴");
		List<SearchDto> autoSearchList = searchService.autoSearchList(search);
		List<String> searchJsonList = new ArrayList<String>();
		for(SearchDto dto:autoSearchList) {
			searchJsonList.add(dto.getSearch_word());
		}
		System.out.println(autoSearchList);
		autoMap.put("autoList", autoSearchList);
		ObjectMapper obj = new ObjectMapper();
		String json = obj.writeValueAsString(searchJsonList);
		return json;
		
	}
}

