package com.hk.flip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IMemberDao;

@Service
public class UserSearchService {
	
	@Autowired
	private IMemberDao memberDao;
	
	public String getSearchId(String board_name, String board_email) {
		
		return memberDao.getSearchId(board_name,board_email);
	}

}
