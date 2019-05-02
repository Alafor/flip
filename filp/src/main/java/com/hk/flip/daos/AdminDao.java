package com.hk.flip.daos;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.AdminDto;
import com.hk.flip.dtos.ClassDto;
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
		 List<MemberDto> list = new ArrayList<MemberDto>();
		 list = sqlSession.selectList(namespace+"getmemberlist");
		return list;
	}

	@Override
	public MemberDto getMemberProfil(String email) {
		MemberDto memberDto = new MemberDto();
		memberDto = sqlSession.selectOne(namespace+"getmemberprofil", email);
		return memberDto;
	}
	@Override
	public List<ClassDto> getClassList(int rn) {
		List<ClassDto> list = new ArrayList<ClassDto>();
		list = sqlSession.selectList(namespace+"getclasslist");
		return list;
	}
	
	@Override
	public ClassDto getClassProfil(int email) {
		ClassDto classDto = new ClassDto();
		classDto = sqlSession.selectOne(namespace+"getclassprofil", email);
		return classDto;
	}

	@Override
	public boolean updateMember(MemberDto dto) {
		return sqlSession.update(namespace+"updatemember", dto)>0?true:false;
	}

	@Override
	public boolean aMemberDelete(String member_email) {
		return sqlSession.delete(namespace+"deletemember", member_email)>0?true:false;
	}



}
