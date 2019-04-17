package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IClassDao;
import com.hk.flip.dtos.ClassDto;

@Service
public class ClassService implements IClassService {
	
	@Autowired
	private IClassDao classDao;
	
	public ClassService() {
		// TODO Auto-generated constructor stub
	}
	//메인 강의목록
	@Override
	public List<ClassDto> mainClassList(String department){
		return classDao.mainClassList(department);
	}
	@Override
	public List<ClassDto> mainStudyList(String department) {
		// TODO Auto-generated method stub
		return classDao.mainStudyList(department);
	}
	@Override
	public List<ClassDto> mainWantList(String department) {
		// TODO Auto-generated method stub
		return classDao.mainWantList(department);
	}

}
