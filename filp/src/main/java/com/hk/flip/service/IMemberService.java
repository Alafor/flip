package com.hk.flip.service;



import java.util.List;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.dtos.ReviewDto;

public interface IMemberService {

	//로그인시 아이디,패스워드 조회
	public MemberDto logCheck(String id, String password);
	//회원가입
	public boolean newMember(MemberDto dto);
	//ajax id값 비교
	public boolean overlappedID(String id);
	//강사 상세정보 - 강사프로필가져오기
	public MemberDto getTProfile(int member_seq);
	//강사 상세정보 - 강사 강의목록 가져오기
	public List<ClassDto> getTclass(int member_seq);
	//강사 상세정보 - 강사 강의후기 가져오기
	public List<ReviewDto> getTreview(int member_seq);
}
