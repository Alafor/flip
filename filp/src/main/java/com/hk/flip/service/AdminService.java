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
		return adminDao.getMemberProfil(email);
	}

	@Override
	public List<ClassDto> getClassList(String class_termin) {
		return adminDao.getClassList(class_termin);
	}

	@Override
	public ClassDto getClassProfil(int seq) {
		return adminDao.getClassProfil(seq);
	}

	@Override
	public boolean updateMember(MemberDto dto) {
		return adminDao.updateMember(dto);
	}

	@Override
	public boolean aMemberDelete(String member_email) {
		return adminDao.aMemberDelete(member_email);
	}

	@Override
	public boolean updateClass(ClassDto dto) {
		return adminDao.updateClass(dto);
	}

	@Override
	public boolean aClassDelete(int seq) {
		return adminDao.aClassDelete(seq);
	}

	@Override
	public boolean aClassClose(int seq) {
		return adminDao.aClassClose(seq);
	}

	@Override
	public boolean cleanClass() {
		return adminDao.cleanClass();
	}

	@Override
	public boolean aInclassDelete(int seq) {
		return adminDao.aInclassDelete(seq);
	}

	@Override
	public List<MemberDto> getUsersEmail(String searchValue) {
		return adminDao.getUsersEmail(searchValue);
	}


}
