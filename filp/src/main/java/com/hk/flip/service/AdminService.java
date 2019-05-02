package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hk.flip.dtos.AdminDto;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

@Service
public class AdminService implements IAdminService {

	@Autowired
	IAdminDao adminDao;
	
	@Override
	public List<MemberDto> getMemberList(int rn) {
		// TODO Auto-generated method stub
		return adminDao.getMemberList(rn);
	}

	@Override
	public AdminDto getFlipStatus() {
		// TODO Auto-generated method stub
		AdminDto adminDto = adminDao.getFlipStatus();
		return adminDto;
	}

	@Override
	public MemberDto getMemberProfil(String email) {
		// TODO Auto-generated method stub
		return adminDao.getMemberProfil(email);
	}

	@Override
	public List<ClassDto> getClassList(int rn) {
		// TODO Auto-generated method stub
		return adminDao.getClassList(rn);
	}

	@Override
	public ClassDto getClassProfil(int seq) {
		// TODO Auto-generated method stub
		return adminDao.getClassProfil(seq);
	}

	@Override
	public boolean updateMember(MemberDto dto) {
		// TODO Auto-generated method stub
		return adminDao.updateMember(dto);
	}

	@Override
	public boolean aMemberDelete(String member_email) {
		// TODO Auto-generated method stub
		return adminDao.aMemberDelete(member_email);
	}

}
