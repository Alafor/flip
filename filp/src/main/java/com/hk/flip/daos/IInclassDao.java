package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.InclassDto;

public interface IInclassDao {

	public boolean addInclass(int member_seq, int class_seq);

	public boolean checkInclassNumber(int member_seq, int class_seq, String member_type);
	
	public boolean checkIsInclass(int member_seq, int class_seq);
	
	public List<String> chkInclassTime_Join(int member_seq, int class_seq);
	
	public List<String> chkInclassTime_Create(ClassDto dto);

	public List<ClassDto> getAllMyInclass(int member_seq);

	public boolean cancelInclass(int member_seq, int class_seq);
	
	public List<InclassDto> myClass(int memberSeq);

	public boolean deleteInclass(int seq, String email);

	public boolean deleteWishlist(int seq, String email);

	public boolean setClassTermin(int seq, String termin);











}
