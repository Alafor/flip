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

	public String getSearchId(String board_name, String board_email);//id찾기

	public boolean alter_userPassword(String board_id, String board_email, String password_key);//임시비밀번호로 바꾸기 

	public MemberDto getInfo(String member_id, String member_email);//회원정보 가져오기

	public MemberDto NaverLogCheck(String member_email);//네이버 로그인시 이메일 체크

	public boolean NaverSignUp(String member_email, String member_name, String member_id, String member_birth,//네이버 로그인시 회원가입하기
			String member_type);

	
}
