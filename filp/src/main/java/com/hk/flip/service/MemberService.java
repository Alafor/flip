package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IMemberDao;
import com.hk.flip.dtos.MemberDto;

@Service
public class MemberService implements IMemberService {

	@Autowired
	private IMemberDao memberDao;

	@Override
	public MemberDto logCheck(String id, String password) {		//로그인 
		return memberDao.logCheck(id,password);
	}

	@Override
	public boolean newMember(MemberDto dto) {
		return memberDao.newMember(dto);
	}

	@Override
	public boolean overlappedID(String id) {
		return memberDao.overlappedID(id);
	}

}
