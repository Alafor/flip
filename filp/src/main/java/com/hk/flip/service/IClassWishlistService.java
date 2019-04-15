package com.hk.flip.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

public interface IClassWishlistService {

	public boolean addWishlist(int member_seq, int class_seq);

	public List<ClassDto> viewAllWishlist(int member_seq);

	public boolean delWishlist(int member_seq, String[] seqs);
	
}
