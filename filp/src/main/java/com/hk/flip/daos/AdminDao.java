package com.hk.flip.daos;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.AdminDto;
import com.hk.flip.dtos.MemberDto;
import com.hk.flip.service.IAdminDao;

@Repository
public class AdminDao implements IAdminDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	String namespace = "com.hk.flip.Admin.";
	
	@Override
	public AdminDto getFlipStatus() {
		AdminDto adminDto = new AdminDto();
		adminDto = sqlSession.selectOne(namespace+"getflipstatus");
		return adminDto;
	}

	@Override
	public List<MemberDto> getMemberList(int rn) {
		 List<MemberDto> list = new ArrayList();
		 list = sqlSession.selectList(namespace+"memberlist");
		return list;
	}

}
