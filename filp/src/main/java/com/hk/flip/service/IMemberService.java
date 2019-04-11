package com.hk.flip.service;



import com.hk.flip.dtos.MemberDto;

public interface IMemberService {

	//로그인시 아이디,패스워드 조회
	public MemberDto logCheck(String id, String password);
	//회원가입
	public boolean newMember(MemberDto dto);

}
