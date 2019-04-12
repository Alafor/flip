package com.hk.flip.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.hk.flip.daos.IClassWishlistDao;
import com.hk.flip.daos.IMemberDao;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

public class ClassWishlistService implements IClassWishlistService {

	@Autowired
	IClassWishlistDao dao;
	
	public ClassWishlistService() {
		// TODO Auto-generated constructor stub
	}

	//위시리스트 추가
	@Override 
	public boolean addWishlist(String id, int seq){
		//위시리스트 중복인지 확인
		if(dao.cheakWishlist(id, seq)) {
			return false;
		}else {
			return dao.insertWishlist(id, seq);
		}			
	}
	//위시리스트 목록 출력
	@Override 
	public List<ClassDto> viewAllWishlist(String id){
		return dao.viewMyWishlist(id);
	}	
	
	//위시리스트 삭제
	@Override 
	public boolean delWishlist(String id, String[] seqs){
		return dao.delWishlist(seqs, id);
	}
}
