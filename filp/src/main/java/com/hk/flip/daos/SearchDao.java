package com.hk.flip.daos;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.SearchDto;

@Repository
public class SearchDao implements ISearchDao{
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	private String nameSpace = "com.hk.flip.Search.";
	
	public SearchDao() {

	}
	//기존 검색어 검색
	@Override
	public SearchDto searchWord(String search) {
		return sqlsession.selectOne(nameSpace+"wordSelect",search);
	}
	//검색어 없을시 새롭게 저장
	@Override
	public boolean insertSearchWord(String search) {
		return sqlsession.insert(nameSpace+"newWord",search)>0?true:false;
	}
	//검색어 있을시 기존 검색어 카운트 1더하기
	@Override
	public boolean updateSearchWord(Map<String,Object> updateMap) {
		return sqlsession.insert(nameSpace+"countUpdate",updateMap)>0?true:false;
	}
	@Override
	public List<SearchDto> autoSearchList(String search){
		return sqlsession.selectList(nameSpace+"autoSearchList",search);
	}
}
