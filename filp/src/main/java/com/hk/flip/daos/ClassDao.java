package com.hk.flip.daos;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.ClassDto;

@Repository
public class ClassDao implements IClassDao {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	String nameSpace = "com.hk.flip.Class.";
	
	public ClassDao() {
		
	}
	
	//메인 강의목록
	@Override
	public List<ClassDto> mainClassList(String department){
		Map<String, String> departmentMap = new HashMap<String, String>();
		departmentMap.put("department", department);
		return sqlsession.selectList(nameSpace+"mainclasslist", departmentMap);
	}
	
	//메인 스터디 목록
	@Override
	public List<ClassDto> mainStudyList(String department){
		Map<String, String> departmentMap = new HashMap<String, String>();
		departmentMap.put("department", department);
		return sqlsession.selectList(nameSpace+"mainstudylist",departmentMap);
	}
	
	//메인 원해요 목록
	@Override
	public List<ClassDto> mainWantList(String department){
		Map<String, String> departmentMap = new HashMap<String, String>();
		departmentMap.put("department", department);
		return sqlsession.selectList(nameSpace+"mainwantlist",departmentMap);
	}
	
	//강사들의 강의 상세보기 페이지
	@Override
	public List<ClassDto> getCdetail(int class_seq){
		return sqlsession.selectList(nameSpace+"getCdetail", class_seq);
	}
	
	//강의 등록
	@Override
	public int insertClass(ClassDto classDto) {
		String class_type = classDto.getClass_type();
		if(class_type.equals("C")) {
			return sqlsession.insert(nameSpace + "c_classinsert",classDto);
		}else if(class_type.equals("W")) {
			return sqlsession.insert(nameSpace + "w_classinsert",classDto);
		}else {
			return sqlsession.insert(nameSpace + "s_classinsert",classDto);
		}
	}
	
	//검색 리스트
	@Override
	public List<ClassDto> searchList(String search, String department, String classType, int count, String selArea){
		Map<String, String> searchFilter = new HashMap<String, String>();
		searchFilter.put("search", search);
		searchFilter.put("department",department);
		searchFilter.put("classType", classType);
		searchFilter.put("count", String.valueOf(count));
		searchFilter.put("selArea", selArea);
		return sqlsession.selectList(nameSpace + "searchlist",searchFilter);
	}
	//페이징 페이지 카운트
	@Override
	public int pageCount(String search, String department, String classType, String selArea) {
		Map<String, String> searchFilter = new HashMap<String, String>();
		searchFilter.put("search", search);
		searchFilter.put("department",department);
		searchFilter.put("classType", classType);
		searchFilter.put("selArea", selArea);
		return sqlsession.selectOne(nameSpace + "pageCount",searchFilter);
	}
	@Override
	public List<ClassDto> areaCount(String search, String department, String classType, String selArea) {
		Map<String, String> searchFilter = new HashMap<String, String>();
		searchFilter.put("search", search);
		searchFilter.put("department",department);
		searchFilter.put("classType", classType);
		searchFilter.put("selArea", selArea);
		return sqlsession.selectList(nameSpace + "areaCount",searchFilter);
	}
	
}
