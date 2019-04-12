package com.hk.flip.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.hk.flip.dtos.ClassDto;

public class InclassDao implements IInclassDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	String nameSpace = "com.hk.flip.Inclass";
	
	public InclassDao() {
		// TODO Auto-generated constructor stub
	}
	
	//수강신청전 기존 강의와 겹치는지 검사
	@Override
	public boolean checkInclass(String id, int seq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("seq", Integer.toString(seq));
		if(sqlSession.selectOne(nameSpace+"chkinclass", map)==null) {
			return true;
		}else {
			return false;
		}
	}
	
	//수강신청
	@Override
	public boolean addInclass(String id,int seq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("seq", Integer.toString(seq));
		return sqlSession.insert(nameSpace+"insertinclass", map)>0?true:false;
	}
	
	//내수강 보기
	@Override
	public List<ClassDto> getAllMyInclass(String id){
		List<ClassDto> list = sqlSession.selectList(nameSpace+"getinclasslist", id);
		return list;
	}
	
	//수강삭제 
	@Override
	public boolean delMyinclass(String id, String[] seqs) {
		Map<String,String[]> map = new HashMap<String, String[]>();
		String[] ids = {id};
		map.put("id", ids);
		map.put("seqs",seqs);
		return sqlSession.delete(nameSpace+"delmyinclass", map)>0?true:false;
	}
}
