package com.hk.flip.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.ISearchDao;
import com.hk.flip.dtos.SearchDto;

@Service
public class SearchService implements ISreachService{
	@Autowired
	private ISearchDao searchDao;
	
	@Override
	public boolean chkSearchWord(String search) {
		SearchDto searchWord = searchDao.searchWord(search);
		Map<String,Object> updateMap=new HashMap<String, Object>();
		if(searchWord!=null) {
			updateMap.put("search_word",searchWord.getSearch_word());
			updateMap.put("search_count", searchWord.getSearch_count()+1);
			return searchDao.updateSearchWord(updateMap);
		}else{
			return searchDao.insertSearchWord(search);
		}
	}
	@Override
	public List<SearchDto> autoSearchList(String search){
		return searchDao.autoSearchList(search);
	}
}
