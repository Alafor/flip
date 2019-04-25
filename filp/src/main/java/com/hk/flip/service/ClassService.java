package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	//강의 등록전 체크하기
	@Override
	public String chkInclassTime_Create(ClassDto dto) {
		System.out.println("chkInclassTime_Created의 service dto = \n"+dto);
		List<String> list = inclassDao.chkInclassTime_Create(dto);
		System.out.println("겹치는 리스트 가져오기");
		System.out.println(list);				
		if(!(list.isEmpty())) {
			String rst="";
			for (String string : list) {
				rst = rst+",\n"+string;
			}
			rst = rst+"\n 강의와 시간이 겹칩니다 ";
			return rst;
		}else {
			return null;
		}
	}
	
	//강의 등록하기 null값일때 강의 등록 성공
	@Override
	public String addClass(ClassDto dto) {
		List<String> list = inclassDao.chkInclassTime_Create(dto);
		
		if(!(list.isEmpty())) {
			for(String cdto:list) {
				System.out.println("시간 겹치는 강의 "+cdto);
			}
			String rst="";
			for (String string : list) {
				rst = rst+",\n"+string;
			}
			rst = rst+"\n 강의와 시간이 겹칩니다 ";
			return rst;
		}else {
			int insertRst=classDao.insertClass(dto);
			if(insertRst<0) {
				return "수강신청에 실패하였습니다.";
			}
			System.out.println("-------------------------insert된 강의 seq 값:"+dto.getSeq());
			inclassDao.addInclass(dto.getClass_member_seq(), dto.getSeq());
			return null;
		}
	}
	
	@Override
	public String addsClass(List<ClassDto> classList) {
		for(ClassDto dto:classList) {		
			int insertRst=classDao.insertClass(dto);
			if(insertRst<0) {
				return "수강신청에 실패하였습니다.";
			}
			inclassDao.addInclass(dto.getClass_member_seq(), insertRst);
		}
		return null;
	}
	@Override
	public List<ClassDto> searchList(String search, String department, String classType, int count){
		return classDao.searchList(search, department, classType, count);
	}
	@Override
	public int pageCount(String search, String department, String classType) {
		return classDao.pageCount(search, department, classType);
	}
	@Override
	public List<ClassDto> areaCount(String search, String department, String classType){
		return classDao.areaCount(search, department, classType);
	}
}
