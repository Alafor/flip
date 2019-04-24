package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.ClassDto;

public interface IClassService {
	//메인 강의목록
	public List<ClassDto> mainClassList(String department);
	public List<ClassDto> mainStudyList(String department);
	public List<ClassDto> mainWantList(String department);
	//강의 상세보기
	public List<ClassDto> getCdetail(int member_seq);
	//강의 등록하기
	public String addClass(ClassDto dto);
	public List<ClassDto> searchList(String search, String department, String classType, int count);
	public String addsClass(List<ClassDto> classList);
	public int pageCount(String search, String department, String classType);
	public String chkInclassTime_Create(ClassDto dto);
}
