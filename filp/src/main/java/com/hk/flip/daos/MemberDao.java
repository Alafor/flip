package com.hk.flip.daos;

import java.util.HashMap;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.MemberDto;

@Repository
public class MemberDao implements IMemberDao {

	@Autowired
	private SqlSessionTemplate sqlsession;
	private String namespace = "com.hk.flip.Member";
	
	//로그인
	@Override
	public MemberDto logCheck(String id, String password) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("id", id);
		map.put("password", password);
		return sqlsession.selectOne(namespace+"login",map);
	}

	//회원가입
	@Override
	public boolean newMember(MemberDto dto) {		
		int cnt = sqlsession.insert(namespace+"signupmember",dto);
		return cnt>0?true:false;
	}

	//내정보 보기창 - 개인정보 출력
	@Override
	public MemberDto viewMyMember(String id) {
		MemberDto memberDto = sqlsession.selectOne(namespace+"selectmember", id);	
		return memberDto;
	}
	
	public boolean chageMyMember(MemberDto dto) {
		Map<String,MemberDto> map = new HashMap<String,MemberDto>();
		map.put("memberDto", dto);			
		return sqlsession.update(namespace+"updatemember", map)>0?true:false;
	}
	
	public boolean deleteMember(String id) {
		return sqlsession.delete(namespace+"deletemember", id)>0?true:false;
	}
}
