package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

public interface IMyPageService {
	public MemberDto viewMyMember(int member_seq);

	public boolean updateMyMember(MemberDto dto);

	public boolean delMyMember(String[] chks);

	public List<ClassDto> getAllInclassList(int member_seq);

	public boolean cancelInclass(int member_seq, int class_seq);

	public boolean deleteInclass(int seq, String email);

	public boolean deleteWishlist(int seq, String email);

	public boolean setClassTermin(int seq, String termin);

}
