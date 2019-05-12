package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.CalendarDto;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.ReviewDto;
//메인 강의목록
public interface IClassDao {
	//메인 강의 목록
	public List<ClassDto> mainClassList(String department);
	//메인 스터디 목록
	public List<ClassDto> mainStudyList(String department);
	//메인 원해요 목록
	public List<ClassDto> mainWantList(String department);
	//강의 상세보기
	public ClassDto getCdetail(int class_seq);
	//강의 상세보기-후기 리스트
	public List<ReviewDto> getCreview(int class_seq);

	//검색 리스트
	public List<ClassDto> searchList(String search, String department, String classType, int count, String selArea);
	public int pageCount(String search, String department, String classType, String selArea);
	public int pageCount(String search);
	//지역검색
	public List<ClassDto> areaCount(String search, String department, String classType, String selArea);
	public int insertClass(ClassDto classDto);
	//칼린다
	public List<CalendarDto> scheduleList(int memberSeq, int month);
	
	
}
