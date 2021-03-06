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
	public MemberDto getTProfile(int member_seq) {	
		return memberDao.getTProfile(member_seq);
		
	}
	//강사 상세정보 - 강사 강의목록 가져오기
	@Override
	public List<ClassDto> getTclass(int member_seq) {
		return memberDao.getTclass(member_seq);
	}
	//강사 상세정보 - 강사 강의후기 가져오기
	@Override
	public List<ReviewDto> getTreview(int member_seq) {
		return memberDao.getTreview(member_seq);
	}

	@Override
	public boolean newT_member(MemberDto dto) {
		return memberDao.newT_member(dto);
	}

	@Override
	public MemberDto NaverLogCheck(String member_email) {
		return memberDao.NaverLogCheck(member_email);
	}

	@Override
	public boolean NaverSignUp(String member_email, String member_name, String member_id, String member_birth,
			String member_type) {
		return memberDao.NaverSignUp(member_email,member_name,member_id,member_birth,member_type);
	}

	@Override
	public boolean overlappedEmail(String email) {
		return memberDao.overlappedEmail(email);
	}
}
