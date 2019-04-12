package com.hk.flip.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.dtos.ReviewDto;

@Repository
public class MemberDao implements IMemberDao {

	@Autowired
	private SqlSessionTemplate sqlsession;
	private String namespace = "com.hk.flip.Member.";
	
	//
	@Override
	public MemberDto logCheck(String id, String password) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("id", id);
		map.put("password", password);
		return sqlsession.selectOne(namespace+"login",map);
	}
	
	@Override
	public boolean newMember(MemberDto dto) {	
		int cnt = sqlsession.insert(namespace+"signupmember",dto);	
		return cnt>0?true:false;
	}

	@Override
	public boolean overlappedID(String id) {
		int cnt = sqlsession.selectOne(namespace+"idcheck",id);
		System.out.println("cnt:"+cnt);
		return cnt>0?true:false;
	}	
	
	//강의 상세보기 페이지-강사 프로필
	@Override
	public MemberDto getTProfile(String member_name) {
		return sqlsession.selectOne(namespace+"getTProfile", member_name);
	}
	
	//강의 상세보기 페이지-강사 강의목록
	@Override
	public List<ClassDto> getTclass(String member_name) {
	return sqlsession.selectList(namespace+"getTclass", member_name);
	}
	
	//강의 상세보기 페이지-강사 강의후기
	@Override
	public List<ReviewDto> getTreview(String member_name) {
	return sqlsession.selectList(namespace+"getTreview", member_name);
	}
	

	@Override
	public boolean deleteMember(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateMember(MemberDto dto) {
		// TODO Auto-generated method stub
		return false;
	}
}
