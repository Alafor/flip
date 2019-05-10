package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.AdminDto;
import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

public interface IAdminService {

	public List<MemberDto> getMemberList(int rn);
	public AdminDto getFlipStatus();
	public MemberDto getMemberProfil(String email);
	public List<ClassDto> getClassList(String class_termin);
	public ClassDto getClassProfil(int seq);
	public boolean updateMember(MemberDto dto);
	public boolean aMemberDelete(String member_email);
	public boolean updateClass(ClassDto dto);
	public boolean aClassDelete(int seq);
	public boolean aClassClose(int seq);
	public boolean cleanClass();
	public boolean aInclassDelete(int seq);


}
