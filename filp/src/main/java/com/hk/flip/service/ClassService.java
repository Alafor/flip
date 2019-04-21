package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IClassDao;
import com.hk.flip.daos.IInclassDao;
import com.hk.flip.dtos.ClassDto;

@Service
public class ClassService implements IClassService {
	
	@Autowired
	private IInclassDao inclassDao;
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
	//강의 상세보기
	@Override
	public List<ClassDto> getCdetail(int class_seq) {
		// TODO Auto-generated method stub
		return classDao.getCdetail(class_seq);
	}
	//강의 등록하기 null값일때 강의 등록 성공
	@Override
	public String addClass(ClassDto dto) {
		int member_seq = dto.getClass_member_seq();
		int class_seq = dto.getSeq();
		String member_type = dto.getClass_type();
	
		List<String> list = inclassDao.chkInclassTime_Create(dto);
		if(list!=null|!(list.isEmpty())) {
			String rst="";
			for (String string : list) {
				rst = rst+",\n"+string;
			}
			rst = rst+"\n 강의와 시간이 겹칩니다 ";
			return rst;
		}else {
			if(!classDao.addClass(dto)) {
				return "수강신청에 실패하였습니다.";
			}
			return null;
		}
	}
	@Override
	public List<ClassDto> searchList(String search, String department, String classType){
		return classDao.searchList(search, department, classType);
	}
}
