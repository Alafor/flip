package com.hk.flip.daos;

import java.util.ArrayList;
import java.util.List;

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
		return sqlsession.selectList(nameSpace+"mainclasslist", department);
	}
	
	
}
