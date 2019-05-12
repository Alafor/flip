package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.SearchDto;

public interface ISreachService {
	public boolean chkSearchWord(String search);
	public List<SearchDto> autoSearchList(String search);
}
