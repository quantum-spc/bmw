package web.baemin.review.service;

import web.baemin.review.dto.Review;

import java.util.List;

public interface ReviewService {


    List<Review> reviewList();

    Review reviewRead(String id);

    void reviewInsert(Review review);

    void reviewUpdate(Review review);

}