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
	public MemberDto getTProfile(int member_seq) {
		return sqlsession.selectOne(namespace+"getTProfile", member_seq);
	}
	
	//강의 상세보기 페이지-강사 강의목록
	@Override
	public List<ClassDto> getTclass(int member_seq) {
	return sqlsession.selectList(namespace+"getTclass", member_seq);
	}
	
	//강의 상세보기 페이지-강사 강의후기
	@Override
	public List<ReviewDto> getTreview(int member_seq) {
	return sqlsession.selectList(namespace+"getTreview", member_seq);
	}
	

	@Override
	public boolean deleteMember(String[] chks) {
		return sqlsession.delete(namespace+"getTProfile", chks)>0?true:false;
	}

	@Override
	public boolean updateMember(MemberDto dto) {
		return sqlsession.update(namespace+"updatemember", dto)>0?true:false;
	}

	@Override
	public boolean newT_member(MemberDto dto) {
		int cnt =  sqlsession.insert(namespace+"t_signupmember",dto);
		return cnt>0?true:false;
	}

	@Override
	public boolean GetKey(String member_id, String member_key) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("member_id", member_id);
		map.put("member_key", member_key);
		int cnt = sqlsession.update(namespace+"getkey",map);
		return cnt>0?true:false;
	}

	@Override
	public boolean alter_userkey(String member_id, String member_key) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("member_id", member_id);
		map.put("member_key", member_key);
		int cnt = sqlsession.update(namespace+"alter_userkey",map);
		return cnt>0?true:false;
	}

	@Override
	public String getSearchId(String board_name, String board_email) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("member_name", board_name);
		map.put("member_email", board_email);
		return  sqlsession.selectOne(namespace+"searchid", map);	
	}

	@Override
	public boolean alter_userPassword(String board_id, String board_email, String password_key) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("member_id", board_id);
		map.put("member_email", board_email);
		map.put("member_password", password_key);
		int cnt= sqlsession.update(namespace+"alter_userpassword", map);
		return cnt>0?true:false;
	}

	@Override
	public MemberDto getInfo(String board_id, String board_email) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("member_id", board_id);
		map.put("member_email", board_email);
		return sqlsession.selectOne(namespace+"getinfo", map);
	}
}
