package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IMemberDao;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.dtos.ReviewDto;

@Service
public class MemberService implements IMemberService {

	@Autowired
	private IMemberDao memberDao;

	@Override
	public MemberDto logCheck(String id, String password) {		//로그인 
		return memberDao.logCheck(id,password);
	}

	@Override
	public boolean newMember(MemberDto dto) {
		return memberDao.newMember(dto);
	}

	@Override
	public boolean overlappedID(String id) {
		return memberDao.overlappedID(id);
	}
	//강사 상세보기 -강사프로필가져오기
	@Override
	public MemberDto getTProfile(String member_name) {	
		return memberDao.getTProfile(member_name);
		
	}
	//강사 상세정보 - 강사 강의목록 가져오기
	@Override
	public List<ClassDto> getTclass(String member_name) {
		// TODO Auto-generated method stub
		return null;
	}
	//강사 상세정보 - 강사 강의후기 가져오기
	@Override
	public List<ReviewDto> getTreview(String member_name) {
		// TODO Auto-generated method stub
		return null;
	}
}
