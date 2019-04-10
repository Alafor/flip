package com.hk.flip.daos;



import com.hk.flip.dtos.MemberDto;

public interface IMemberDao {

	public MemberDto logCheck(String id, String password);//로그인

	public boolean newMember(MemberDto dto);//회원가입
	
}
