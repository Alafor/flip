package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

public interface IMyPageService {
	public MemberDto viewMyMember(String id);

	public boolean updateMyMember(MemberDto dto);

	public boolean delMyMember(String id);

	public List<ClassDto> getAllInclassList(String id);

	public boolean delMyInclass(String id, String[] seqs);
}
