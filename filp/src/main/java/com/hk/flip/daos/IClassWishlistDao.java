package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.ClassDto;

public interface IClassWishlistDao {

	public List<ClassDto> viewMyWishlist(String id);

	public boolean insertWishlist(String id, int seq);

	public List<ClassDto> imminentWishlist(String id);

	public boolean cheakWishlist(String id, int seq);

	boolean delWishlist(String[] seqs, String id);

}
