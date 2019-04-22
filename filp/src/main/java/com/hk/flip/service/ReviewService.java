package com.hk.flip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IReviewDao;
import com.hk.flip.daos.ReviewDao;
import com.hk.flip.dtos.ReviewDto;

@Service
public class ReviewService implements IReviewService {

	@Autowired
	private IReviewDao reviewDao;

	public ReviewService() {
		// TODO Auto-generated constructor stub
	}
	

	@Override
	public boolean cReview(ReviewDto dto) {
		return reviewDao.cReview(dto) ;
	}

}
