package com.hk.flip.dtos;

public class ClassWishlistDto {

	private int wishlist_member_seq;
	private int seq;
	
	@Override
	public String toString() {
		return "ClassWishlistDto [wishlist_member_seq=" + wishlist_member_seq + ", seq=" + seq + "]";
	}

	public ClassWishlistDto(int wishlist_member_seq, int seq) {
		this.wishlist_member_seq = wishlist_member_seq;
		this.seq = seq;  
	}

	public int getwishlist_member_seq() {
		return wishlist_member_seq;
	}

	public void setwishlist_member_seq(int wishlist_member_seq) {
		this.wishlist_member_seq = wishlist_member_seq;
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
