package com.hk.flip.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

public interface IClassWishlistService {

	public boolean addWishlist(String id, int seq);

	public List<ClassDto> viewAllWishlist(String id);

	public boolean delWishlist(String id, String[] seqs);

	
}
