package com.hk.flip;

import java.text.DateFormat;
import java.util.Date;
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

/**
 * Handles requests for the application home page.
 */
@Controller
public class AjaxController {
	
	private static final Logger logger = LoggerFactory.getLogger(AjaxController.class);
	
	@Autowired
	private IClassService classService;
	
	//main list ajax controller
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
}
