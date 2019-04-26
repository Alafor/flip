package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.ClassDto;
//메인 강의목록
public interface IClassDao {
	//메인 강의 목록
	public List<ClassDto> mainClassList(String department);
	//메인 스터디 목록
	public List<ClassDto> mainStudyList(String department);
	//메인 원해요 목록
	public List<ClassDto> mainWantList(String department);
	//강의 상세보기
	public List<ClassDto> getCdetail(int class_seq);

	//검색 리스트
	public List<ClassDto> searchList(String search, String department, String classType, int count, String selArea);
	public int pageCount(String search, String department, String classType, String selArea);
	//지역검색
	public List<ClassDto> areaCount(String search, String department, String classType, String selArea);
	public int insertClass(ClassDto classDto);
}
