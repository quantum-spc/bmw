CREATE TABLE `board` (
     `id` BIGINT(19) NOT NULL AUTO_INCREMENT,
     `reg_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 날짜',
     `title` VARCHAR(255) NULL DEFAULT NULL COMMENT '제목',
     `content` VARCHAR(255) NULL DEFAULT NULL COMMENT '내용',
     PRIMARY KEY (`id`) USING BTREE
)
;
CREATE TABLE `users` (
	`user_id`	bigint(20)	NOT NULL,
	`login_id`	varchar(100)	NOT NULL,
	`password`	varchar(255)	NOT NULL,
	`phone`	varchar(11)	NOT NULL,
	`email`	varchar(100)	NOT NULL,
	`grade`	varchar(100)	NOT NULL	DEFAULT '고마운분'	COMMENT '고마운분/귀한분/더귀한분/천생연분',
	`role`	varchar(100)	NOT NULL	DEFAULT '회원'	COMMENT '회원/사장',
	`current_address`	varchar(255)	NULL,
	`created_date`	timestamp	NOT NULL,
	`modified_date`	timestamp	NOT NULL,
	`status`	varchar(255)	NOT NULL	DEFAULT '일반'	COMMENT '일반/휴면/탈퇴/정지'
);

CREATE TABLE `address` (
	`address_id`	bigint(20)	NOT NULL,
	`user_id`	bigint(20)	NOT NULL,
	`address`	varchar(255)	NOT NULL,
	`created_date`	date	NOT NULL,
	`modified_date`	date	NOT NULL,
	`status`	varchar(255)	NOT NULL	DEFAULT '일반'
);

CREATE TABLE `orders` (
	`order_id`	bigint(20)	NOT NULL,
	`user_id`	bigint(20)	NOT NULL,
	`store_id`	bigint(20)	NOT NULL,
	`total_price`	int(11)	NULL	DEFAULT 0	COMMENT '주문메뉴 테이블의 주문메뉴가격을 합친 가격',
	`requests`	varchar(255)	NULL,
	`reated_date`	timestamp	NOT NULL,
	`modified_date`	timestamp	NOT NULL,
	`status`	varchar(255)	NOT NULL	DEFAULT '정상'
);

CREATE TABLE `menu` (
	`menu_id`	bigint(20)	NOT NULL,
	`store_id`	bigint(20)	NOT NULL,
	`name`	varchar(255)	NOT NULL,
	`price`	int(11)	NOT NULL,
	`menu_url`	text	NULL,
	`created_date`	timestamp	NOT NULL,
	`modified_date`	timestamp	NOT NULL,
	`status`	varchar(255)	NOT NULL	DEFAULT '일반'
);

CREATE TABLE `store` (
	`store_id`	bigint(20)	NOT NULL,
	`food_category_cd`	int(20)	NOT NULL,
	`name`	varchar(255)	NOT NULL,
	`address`	varchar(255)	NOT NULL,
	`store_picture_url`	text	NULL,
	`phone`	varchar(20)	NOT NULL,
	`content`	text	NULL,
	`min_delivery_price`	int(11)	NOT NULL,
	`store_distance`	decimal(3,1)	NULL,
	`delivery_tip`	int(11)	NULL,
	`delivery_time`	int(3)	NULL,
	`rating`	decimal(2,1)	NOT NULL	DEFAULT 0	COMMENT '평균이기 때문에 소수점 단위',
	`dibs_count`	int(11)	NOT NULL	DEFAULT 0,
	`review_count`	int(11)	NOT NULL	DEFAULT 0,
	`created_date`	timestamp	NOT NULL,
	`modified_date`	timestamp	NOT NULL,
	`status`	varchar(255)	NOT NULL	DEFAULT '일반'
);

CREATE TABLE `coupon` (
	`coupon_id`	bigint(20)	NOT NULL,
	`user_id`	bigint(20)	NOT NULL,
	`name`	varchar(255)	NOT NULL,
	`content`	varchar(255)	NULL,
	`deducted_price`	int(11)	NOT NULL,
	`min_delivery_price`	int(11)	NOT NULL	DEFAULT 0,
	`created_date`	timestamp	NOT NULL,
	`expired_date`	timestamp	NOT NULL,
	`modified_date`	timestamp	NOT NULL,
	`status`	varchar(255)	NOT NULL	DEFAULT '가능'
);

CREATE TABLE `dibs` (
	`dibs_id`	bigint(20)	NOT NULL,
	`user_id`	bigint(20)	NOT NULL,
	`store_id`	bigint(20)	NOT NULL,
	`created_date`	timestamp	NOT NULL,
	`modifided_date`	timestamp	NOT NULL,
	`status`	varchar(255)	NOT NULL	DEFAULT '일반'
);

CREATE TABLE `review` (
	`review_id`	bigint(20)	NOT NULL,
	`user_id`	bigint(20)	NOT NULL,
	`store_id`	bigint(20)	NOT NULL,
	`menu_id`	bigint(20)	NOT NULL,
	`rating`	decimal(2,1)	NOT NULL	COMMENT '1점 단위',
	`content`	text	NULL,
	`picture_url`	text	NULL,
	`created_date`	timestamp	NOT NULL,
	`modified_date`	timestamp	NOT NULL,
	`status`	varchar(255)	NOT NULL	DEFAULT '일반'
);

CREATE TABLE `store_type` (
	`food_category_cd`	int(20)	NOT NULL,
	`food_category_name`	varchar(20)	NOT NULL
);

CREATE TABLE `order_menu` (
	`order_id`	bigint(20)	NOT NULL,
	`menu_id`	bigint(20)	NOT NULL
);

ALTER TABLE `users` ADD CONSTRAINT `PK_USERS` PRIMARY KEY (
	`user_id`
);

ALTER TABLE `address` ADD CONSTRAINT `PK_ADDRESS` PRIMARY KEY (
	`address_id`
);

ALTER TABLE `orders` ADD CONSTRAINT `PK_ORDERS` PRIMARY KEY (
	`order_id`
);

ALTER TABLE `menu` ADD CONSTRAINT `PK_MENU` PRIMARY KEY (
	`menu_id`
);

ALTER TABLE `store` ADD CONSTRAINT `PK_STORE` PRIMARY KEY (
	`store_id`,
	`food_category_cd`
);

ALTER TABLE `coupon` ADD CONSTRAINT `PK_COUPON` PRIMARY KEY (
	`coupon_id`
);

ALTER TABLE `dibs` ADD CONSTRAINT `PK_DIBS` PRIMARY KEY (
	`dibs_id`
);

ALTER TABLE `review` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`review_id`
);

ALTER TABLE `store_type` ADD CONSTRAINT `PK_STORE_TYPE` PRIMARY KEY (
	`food_category_cd`
);

ALTER TABLE `order_menu` ADD CONSTRAINT `PK_ORDER_MENU` PRIMARY KEY (
	`order_id`,
	`menu_id`
);