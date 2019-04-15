package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.ClassDto;

public interface IClassWishlistDao {

	public List<ClassDto> viewMyWishlist(int seq);

	public boolean insertWishlist(int member_seq, int class_seq);

	public List<ClassDto> imminentWishlist(int member_seq);

	public boolean cheakWishlist(int member_seq, int class_seq);

	boolean delWishlist(String[] class_seqs, int member_seq);





}
