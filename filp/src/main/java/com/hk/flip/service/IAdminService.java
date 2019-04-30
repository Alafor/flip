package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.AdminDto;
import com.hk.flip.dtos.MemberDto;

public interface IAdminService {

	public List<MemberDto> getMemberList(int rn);
	public AdminDto getFlipStatus();
	public MemberDto getMemberProfil(String email);


}
