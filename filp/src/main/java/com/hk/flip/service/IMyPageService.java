package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

public interface IMyPageService {
	public MemberDto viewMyMember(int member_seq);

	public boolean updateMyMember(MemberDto dto);

	public boolean delMyMember(String[] chks);

	public List<ClassDto> getAllInclassList(int member_seq);

	public boolean delMyInclass(String id, String[] seqs);




}
