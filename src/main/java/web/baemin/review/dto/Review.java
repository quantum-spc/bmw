package web.baemin.review.dto;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Review {

    private Long review_id;

    private Long user_id;

    private int rating;

    private String content;

    private String picture_url;

}
