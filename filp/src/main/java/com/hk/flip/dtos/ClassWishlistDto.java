package com.hk.flip.dtos;

public class ClassWishlistDto {

	private String wishlist_id;
	private int seq;
	
	@Override
	public String toString() {
		return "ClassWishlistDto [wishlist_id=" + wishlist_id + ", seq=" + seq + "]";
	}

	public ClassWishlistDto(String wishlist_id, int seq) {
		this.wishlist_id = wishlist_id;
		this.seq = seq;
	}

	public String getWishlist_id() {
		return wishlist_id;
	}

	public void setWishlist_id(String wishlist_id) {
		this.wishlist_id = wishlist_id;
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
