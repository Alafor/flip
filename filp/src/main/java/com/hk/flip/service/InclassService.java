package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IInclassDao;

@Service
public class InclassService implements IInclassService {

	@Autowired
	IInclassDao inclassDao;
	
	public InclassService() {
		// TODO Auto-generated constructor stub
	}

	
	///수강 신청 (null인경우 수강신청 성공) 
	public String addInclass(int member_seq,int class_seq,String member_type) {
		
		//수강신청전 중복 검사	
		if(!inclassDao.checkIsInclass(member_seq, class_seq)) {
			return "이미 수강중인 강의 입니다";
			
		//수강신청전 인원 제한 검사
		}else if(!inclassDao.checkInclassNumber(member_seq, class_seq, member_type)) {
			return "정원초과입니다 ";
			
		//수강신청전 시간이 겹치는지 검사
		}else {
			List<String> list = inclassDao.chkInclassTime_Join(member_seq, class_seq);
			if(list!=null|!(list.isEmpty())) {
				String rst="";
				for (String string : list) {
					rst = rst+",\n"+string;
				}
				rst = rst+"\n 수강신청이 겹칩니다 ";
				return rst;
			}else {
				if(!inclassDao.addInclass(member_seq, class_seq)) {
					return "수강신청에 실패하였습니다.";
				}
				return null;
			}
		}
	}
	
	//수강 취소하기 
	public boolean cancelInclass(int member_seq,int class_seq) {
		
		return inclassDao.cancelInclass(member_seq, class_seq);
		
	}
}
