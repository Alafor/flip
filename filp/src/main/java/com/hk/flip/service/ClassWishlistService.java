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
		public boolean addWishlist(int member_seq, int class_seq){
			//위시리스트 중복인지 확인
			if(dao.checkWishlist(member_seq, class_seq)) {
				return false;
			}else {
				return dao.insertWishlist(member_seq, class_seq);
			}			
		}
		//위시리스트 목록 출력
		@Override 
		public List<ClassDto> viewAllWishlist(int member_seq){
			return dao.viewMyWishlist(member_seq);
		}	
		
		//위시리스트 삭제
		@Override 
		public boolean delWishlist(int member_seq, String[] seqs){
			return dao.delWishlist(seqs, member_seq);
		}
	}
