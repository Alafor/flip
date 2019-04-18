package com.hk.flip;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.service.IClassService;
import com.hk.flip.service.IClassWishlistService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SeoController {

	private static final Logger logger = LoggerFactory.getLogger(SeoController.class);

	@Autowired
	private IClassService classService;
//	@Autowired
//	private IClassWishlistService classwishlistService;
	
	@RequestMapping(value = "/main.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mainOpen(Locale locale, Model model, String department) {
		logger.info("Started main{}.", locale);
		if(department==null) {
			return "main";
		}else {
		List<ClassDto> classList = classService.mainClassList(department);
		List<ClassDto> studyList = classService.mainStudyList(department);
		List<ClassDto> wantList = classService.mainWantList(department);
		System.out.println("classdto="+classList);
		model.addAttribute("classlist", classList);
		model.addAttribute("studylist", studyList);
		model.addAttribute("wantlist", wantList);
		return "main";
		}
	}
	
//	@RequestMapping(value = "/mainchange.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public String mainChangeCategoryList(Locale locale, Model model, String department) {
//		logger.info("Started main{}.", locale);
//		System.out.println(department);
//		if(department==null) {
//			return "mainclasslist";
//		}else {
//		List<ClassDto> classList = classService.mainClassList(department);
//		List<ClassDto> studyList = classService.mainStudyList(department);
//		List<ClassDto> wantList = classService.mainWantList(department);
//
//		model.addAttribute("classlist", classList);
//		model.addAttribute("studylist", studyList);
//		model.addAttribute("wantlist", wantList);
//		return "mainclasslist";
//		}
//	}
	@ResponseBody
	@RequestMapping(value = "/mainAjax.do", method = {RequestMethod.GET, RequestMethod.POST})
	public Map mainAjax(Locale locale, Model model, String department) {
		logger.info("Ajax main{}.", locale);
		System.out.println("department: "+department);
		List<ClassDto> classList = classService.mainClassList(department);
		List<ClassDto> studyList = classService.mainStudyList(department);
		List<ClassDto> wantList = classService.mainWantList(department);
		Map<String, List<ClassDto>> ajaxMap = new HashMap<String, List<ClassDto>>();
		ajaxMap.put("classList", classList);
		ajaxMap.put("studyList", studyList);
		ajaxMap.put("wantList", wantList);
		System.out.println("classList:"+classList);
		System.out.println("studyList:"+studyList);
		System.out.println("wantList:"+wantList);
		return ajaxMap;
	}
	
//	@RequestMapping(value = "/main.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public String mainOpen(Locale locale, Model model, String department) {
//		logger.info("Started main{}.", locale);
//		List<ClassDto> classList = classService.mainClassList(department);
//		System.out.println("classdto="+classList);
//		model.addAttribute("classlist", classList);
//		return "main_test";
//	}
}

