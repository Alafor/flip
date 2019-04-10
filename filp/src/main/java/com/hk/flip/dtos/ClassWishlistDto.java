package com.hk.flip.dtos;

public class ClassWishlistDto {

	private String id;
	private int seq;
	
	@Override
	public String toString() {
		return "ClassWishlistDto [id=" + id + ", seq=" + seq + "]";
	}

	public ClassWishlistDto(String id, int seq) {
		this.id = id;
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public ClassWishlistDto() {
		// TODO Auto-generated constructor stub
	}

}
