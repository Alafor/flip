package com.hk.flip.daos;

import java.util.List;
import java.util.Map;

import com.hk.flip.dtos.SearchDto;

public interface ISearchDao {
	//기존 검색어 검색
	public SearchDto searchWord(String search);
	//검색어 없을시 새롭게 저장
	public boolean insertSearchWord(String search);
	//검색어 있을시 기존 검색어 카운트 1더하기
	public boolean updateSearchWord(Map<String,Object> updateMap);
	public List<SearchDto> autoSearchList(String search);
}
