package com.hk.flip.dtos;

public class InclassDto {

	private int seq;
	private int inclass_member_seq;
	
	public InclassDto(int seq, int inclass_member_seq) {
		this.seq = seq;
		this.inclass_member_seq = inclass_member_seq;
	}

	public InclassDto() {
		// TODO Auto-generated constructor stub
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) { 
		this.seq = seq;
	}

	public int getinclass_member_seq() {
		return inclass_member_seq;
	}

	public void setinclass_member_seq(int inclass_member_seq) {
		this.inclass_member_seq = inclass_member_seq;
	}

}
