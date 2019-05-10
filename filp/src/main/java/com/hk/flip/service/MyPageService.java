package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IClassWishlistDao;
import com.hk.flip.daos.IInclassDao;
import com.hk.flip.daos.IMemberDao;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

@Service
public class MyPageService implements IMyPageService {
	
	@Autowired
	IInclassDao dao;
	@Autowired
	IMemberDao memberDao;
	@Autowired
	IClassWishlistDao classWishlistDao;
	public MyPageService() {
		// TODO Auto-generated constructor stub
	}
	

	//내 정보 가져오기
	@Override
	public MemberDto viewMyMember(int member_seq) {
		return memberDao.getTProfile(member_seq);
	}
	
	//내정보 수정
	@Override
	public boolean updateMyMember(MemberDto dto) {
		return memberDao.updateMember(dto);
	}
	
	//회원 탈퇴
	@Override
	public boolean delMyMember(String[] chks) {
		return memberDao.deleteMember(chks);
	}
	
	//내 수강 리스트 가져오기
	@Override
	public List<ClassDto> getAllInclassList(int member_seq){
		return dao.getAllMyInclass(member_seq);
	}
	
	//내 위시리스트 가져오기
	@Override
	public List<ClassDto> getAllWishList(int member_seq) {
		return classWishlistDao.viewMyWishlist(member_seq);
	}
	//내 수강삭제
	@Override
	public boolean cancelInclass(int member_seq, int class_seq){
		return dao.cancelInclass(member_seq, class_seq);
	}


	@Override
	public boolean deleteInclass(int seq, String email) {
		return dao.deleteInclass(seq,email);
	}


	@Override
	public boolean deleteWishlist(int seq, String email) {
		return dao.deleteWishlist(seq,email);
	}


	@Override
	public boolean setClassTermin(int seq, String termin) {
		return dao.setClassTermin(seq,termin);
		
	}


	@Override
	public boolean deleteInclass_T(int seq, String email) {
		return dao.deleteInclass_T(seq,email);
	}
	
}
