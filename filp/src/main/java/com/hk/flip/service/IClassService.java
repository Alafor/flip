package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.CalendarDto;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.InclassDto;
import com.hk.flip.dtos.ReviewDto;

public interface IClassService {
	//메인 강의목록
	public List<ClassDto> mainClassList(String department);
	public List<ClassDto> mainStudyList(String department);
	public List<ClassDto> mainWantList(String department);
	//강의 상세보기
	public ClassDto getCdetail(int member_seq);
	//강의 상세보기-강의 후기 가져오기
	public List<ReviewDto> getCReview(int class_seq);
	//강의 등록하기
	public String addClass(ClassDto dto);
	public List<ClassDto> searchList(String search, String department, String classType, int count,String selArea);
	public String addsClass(List<ClassDto> classList);
	public int pageCount(String search, String department, String classType, String selArea);
	public String chkInclassTime_Create(ClassDto dto);
	public List<ClassDto> areaCount(String search, String department, String classType, String selArea);
	//스케줄
	public List<List<CalendarDto>> scheduleList(List<InclassDto> myClass);
}
