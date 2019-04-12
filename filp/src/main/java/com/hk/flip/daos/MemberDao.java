package com.hk.flip.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.MemberDto;

@Repository
public class MemberDao implements IMemberDao {

	@Autowired
	private SqlSessionTemplate sqlsession;
	private String namespace = "com.hk.flip.Member.";
	
	//濡쒓렇�씤
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
		return cnt>0?true:false;
	}	
	
	@Override
	public MemberDto getTProfile(String member_id) {
		return sqlsession.selectOne(namespace+"getTprofile", member_id);
	}

	@Override
	public boolean deleteMember(String id) {		
		return sqlsession.delete(namespace+"deletemember", id)>0?true:false;		
	}

	@Override
	public boolean updateMember(MemberDto dto) {
		return sqlsession.update(namespace+"updatemember", dto)>0?true:false; 
	}

}
