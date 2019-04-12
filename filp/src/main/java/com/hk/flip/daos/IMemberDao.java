package com.hk.flip.daos;



import java.util.List;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.dtos.ReviewDto;

public interface IMemberDao {

	public MemberDto logCheck(String id, String password);//로그인

	public boolean newMember(MemberDto dto);//회원가입
	
	public MemberDto getTProfile(String member_name);//강사상세정보-강사프로필
	
	public List<ClassDto> getTclass(String member_name);//강사상세정보-강사 강의목록

	public List<ReviewDto> getTreview(String member_name);//강사상세정보 - 강사 강의후기목록

	public boolean overlappedID(String id);

	boolean deleteMember(String id);

	boolean updateMember(MemberDto dto);

	
}
