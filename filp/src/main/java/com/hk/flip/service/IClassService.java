package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.ClassDto;

public interface IClassService {
	//메인 강의목록
	public List<ClassDto> mainClassList(String department);
	public List<ClassDto> mainStudyList(String department);
	public List<ClassDto> mainWantList(String department);
}
