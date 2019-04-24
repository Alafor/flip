package com.hk.flip.daos;



import java.util.List;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.dtos.ReviewDto;

public interface IMemberDao {

	public MemberDto logCheck(String id, String password);//로그인

	public boolean newMember(MemberDto dto);//회원가입
	
	public boolean overlappedID(String id);

	public boolean updateMember(MemberDto dto);

	public MemberDto getTProfile(int member_seq);//강사상세정보-강사프로필

	public List<ClassDto> getTclass(int member_seq);//강사상세정보-강사 강의목록

	public List<ReviewDto> getTreview(int member_seq);//강사상세정보 - 강사 강의후기목록

	public boolean deleteMember(String[] chks);

	public boolean newT_member(MemberDto dto);//강사회원가입

	public boolean GetKey(String member_id, String member_key);//메일인증키 난수설정

	public boolean alter_userkey(String member_id, String member_key);//메일 인증하기

	
}
