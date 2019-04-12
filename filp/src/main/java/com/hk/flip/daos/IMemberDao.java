package com.hk.flip.daos;



import com.hk.flip.dtos.MemberDto;

public interface IMemberDao {

	public MemberDto logCheck(String id, String password);//로그인

	public boolean newMember(MemberDto dto);//회원가입

<<<<<<< HEAD
	public boolean overlappedID(String id);//ajax id값비교

=======
>>>>>>> branch 'master' of https://github.com/Alafor/FLIP.git
	MemberDto viewMyMember(String id);
	
	public MemberDto getTProfile(String member_id);//강사정보가져오기
}
