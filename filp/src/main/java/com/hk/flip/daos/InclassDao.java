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
	public boolean addInclass(int member_seq,int class_seq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_seq", Integer.toString(member_seq));
		map.put("seq", Integer.toString(class_seq));
		return sqlSession.insert(nameSpace+"insertinclass", map)>0?true:false;
	}
	
	//내수강 보기
	@Override
	public List<ClassDto> getAllMyInclass(int member_seq){
		List<ClassDto> list = sqlSession.selectList(nameSpace+"getinclasslist", member_seq);
		return list;
	}
	
	//수강삭제 
		@Override
		public boolean delMyinclass(int member_seq, String[] class_seqs) {
			Map<String,String[]> map = new HashMap<String, String[]>();
			String[] member_seqs = {Integer.toString(member_seq)};
			map.put("member_seqs", member_seqs);
			map.put("class_seqs",class_seqs);
			return sqlSession.delete(nameSpace+"delmyinclass", map)>0?true:false;
		}
}
