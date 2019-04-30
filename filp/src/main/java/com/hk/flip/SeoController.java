package com.hk.flip;

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

import com.hk.flip.dtos.CalendarDto;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.InclassDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.service.IClassService;
import com.hk.flip.service.IInclassService;

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
//	@Autowired
//	private IClassWishlistService classwishlistService;
	
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
	
	//search list
	@RequestMapping(value = "/searchlist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchlist(Locale locale, Model model,String search, String department, String classType, HttpServletRequest request) {
		logger.info("search list 시작{}.", locale);
		String addArea = "";
		Map<String, String> paramList = new HashMap<String, String>();
		paramList.put("search", search);
		paramList.put("category", department);
		paramList.put("classType", classType);
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
		int pageCount = classService.pageCount(search, department, classType,selArea);
		List<ClassDto> areaList = classService.areaCount(search, department, classType,selArea);
		if(num==null || Integer.parseInt(num)<=0) {
			num="1";
		}else if(Integer.parseInt(num)>pageCount) {
			num=String.valueOf(pageCount);
		}
		System.out.println("sel*********:"+selArea);
		List<ClassDto> searchList = classService.searchList(search, department, classType, Integer.parseInt(num),selArea);
		System.out.println("**검색 조건 파라미터 - searchlist:"+search+", category:"+department+", classType:"+classType+", selArea: "+selArea);
		System.out.println("출력출력:"+searchList);
		Map<String, String> paramList = new HashMap<String, String>();
		paramList.put("search", search);
		paramList.put("category", department);
		paramList.put("classType", classType);
		model.addAttribute("paramList",paramList);
		model.addAttribute("searchList",searchList);
		model.addAttribute("thisPage",num);
		model.addAttribute("pageCount",pageCount);
		model.addAttribute("areaList",areaList);
		return "listload";
	}	
	
	//캘린더
	@RequestMapping(value = "/scheduleCalendar.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mySchedule(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Schedual select{}.", locale);
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto)session.getAttribute("logInMember");
		System.out.println("세션확인"+memberDto);
		int memberSeq = memberDto.getMember_seq();
		List<InclassDto> myClass = inclassService.myClass(memberSeq);
		List<List<CalendarDto>> mySchedule = classService.scheduleList(myClass);
		for(int i=0;i<mySchedule.size();i++) {
			for(int j=0;j<mySchedule.get(i).size();j++) {
				System.out.println("스케쥴표"+i+"안에"+j+":"+mySchedule.get(i).get(j));
			}
		}
		return "mySchedule";
	}
}

