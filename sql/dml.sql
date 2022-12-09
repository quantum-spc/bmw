
SELECT * FROM users;
INSERT INTO users VALUES('0001','user01','pw1234','01011112222','user01@gmail.com','고마운분','회원',null,'2022-12-06','2022-12-06','일반');
INSERT INTO users VALUES('0002','user02','pw1234','01022223333','user02@gmail.com','귀한분','회원',null,'2022-12-06','2022-12-06','휴면');
INSERT INTO users VALUES('0003','user03','pw1234','01033334444','user03@gmail.com','더귀한분','회원',null,'2022-12-06','2022-12-06','탈퇴');
INSERT INTO users VALUES('0004','user04','pw1234','01044445555','user04@gmail.com','천생연분','회원',null,'2022-12-06','2022-12-06','정지');
INSERT INTO users VALUES('0005','user05','pw1234','01055556666','user05@gmail.com','고마운분','사장',null,'2022-12-06','2022-12-06','일반');

SELECT * FROM address;
INSERT INTO address VALUES('1001','0001','서울 영등포구 당산로 지하 121','2022-12-06','2022-12-06','일반');
INSERT INTO address VALUES('1002','0002','서울 영등포구 당산로31길 33','2022-12-06','2022-12-06','일반');
INSERT INTO address VALUES('1003','0003','서울 영등포구 국회대로29길 5','2022-12-06','2022-12-06','일반');
INSERT INTO address VALUES('1004','0004','서울 영등포구 국회대로 597','2022-12-06','2022-12-06','일반');
INSERT INTO address VALUES('1005','0005','서울 영등포구 국회대로 615','2022-12-06','2022-12-06','일반');

SELECT * FROM coupon;
INSERT INTO coupon VALUES('2001','0001','신규 가입 쿠폰','1000원 할인','1000','10000','2022-12-06','2022-12-31','2022-12-06','일반');
INSERT INTO coupon VALUES('2002','0002','친구 초대 이벤트 쿠폰','1500원 할인','1500','11000','2022-12-06','2022-12-31','2022-12-06','일반');
INSERT INTO coupon VALUES('2003','0003','더귀한분 쿠폰','2000원 할인','2000','12000','2022-12-06','2022-12-31','2022-12-06','일반');
INSERT INTO coupon VALUES('2004','0004','천생연분 쿠폰','2500원 할인','2500','13000','2022-12-06','2022-12-31','2022-12-06','일반');
INSERT INTO coupon VALUES('2005','0005','사장님 전용 쿠폰','3000원 할인','3000','15000','2022-12-06','2022-12-31','2022-12-06','일반');

SELECT * FROM dibs;
INSERT INTO dibs VALUES('3001','1001','9001','2022-12-06','2022-12-06','일반');
INSERT INTO dibs VALUES('3002','1002','9002','2022-12-06','2022-12-06','일반');
INSERT INTO dibs VALUES('3003','1003','9003','2022-12-06','2022-12-06','일반');
INSERT INTO dibs VALUES('3004','1004','9004','2022-12-06','2022-12-06','일반');
INSERT INTO dibs VALUES('3005','1005','9005','2022-12-06','2022-12-06','일반');

SELECT * FROM menu;
INSERT INTO menu VALUES('4001','9001','1인용 찜닭','12000','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');
INSERT INTO menu VALUES('4002','9002','족발','22000','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');
INSERT INTO menu VALUES('4003','9003','김치찌개','15000','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');
INSERT INTO menu VALUES('4004','9004','왕돈까스','13000','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');
INSERT INTO menu VALUES('4005','9005','포테이토 피자','18000','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');


SELECT * FROM orders;
INSERT INTO orders VALUES('6001','0001','9001','0',null,'2022-12-06','2022-12-06','일반');
INSERT INTO orders VALUES('6002','0002','9002','0',null,'2022-12-06','2022-12-06','일반');
INSERT INTO orders VALUES('6003','0003','9003','0',null,'2022-12-06','2022-12-06','일반');
INSERT INTO orders VALUES('6004','0004','9004','0',null,'2022-12-06','2022-12-06','일반');
INSERT INTO orders VALUES('6005','0005','9005','0',null,'2022-12-06','2022-12-06','일반');

SELECT * FROM order_menu;
INSERT INTO order_menu VALUES('6001','4001');
INSERT INTO order_menu VALUES('6002','4002');
INSERT INTO order_menu VALUES('6003','4003');
INSERT INTO order_menu VALUES('6004','4004');
INSERT INTO order_menu VALUES('6005','4005');

SELECT * FROM review;
INSERT INTO review VALUES('8001','0001','9001','4001','4.0','맛있었어요!','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');
INSERT INTO review VALUES('8002','0002','9002','4002','4.5','족발 맛있네요','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');
INSERT INTO review VALUES('8003','0003','9003','4003','3.5','김치가 짜요','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');
INSERT INTO review VALUES('8004','0004','9004','4004','2.5','고기가 질기네요','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');
INSERT INTO review VALUES('8005','0005','9005','4005','3.0','무난한 피자입니다..','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','2022-12-06','2022-12-06','일반');

SELECT * FROM store;
INSERT INTO store VALUES('9001','0','혼밥하기 좋은날','서울 영등포구 영중로 125','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','021234566','안녕하세요. 맛있게 드세요!','10000',null,null,NULL,'3.5','1253','126','2022-12-06','2022-12-06','일반');
INSERT INTO store VALUES('9002','1','장수 왕족발/보쌈','서울 영등포구 여의도동 15-22','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','021234566','안녕하세요. 맛있게 드세요!','11000',null,null,NULL,'3.6','103','182','2022-12-06','2022-12-06','일반');
INSERT INTO store VALUES('9003','2','제일 김치찌개','서울 영등포구 여의도동 37','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','021234566','안녕하세요. 맛있게 드세요!','12000',null,null,NULL,'2.5','13','712','2022-12-06','2022-12-06','일반');
INSERT INTO store VALUES('9004','3','명동 왕돈까스','서울 영등포구 신길동 464-1','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','021234566','안녕하세요. 맛있게 드세요!','13000',null,null,NULL,'4.5','18','412','2022-12-06','2022-12-06','일반');
INSERT INTO store VALUES('9005','4','웃음꽃 피자','서울 영등포구 신길동 4945','https://i.pinimg.com/564x/49/70/31/4970315bc64284052adc2dd17cfa1d03.jpg','021234566','안녕하세요. 맛있게 드세요!','14000',null,null,NULL,'4.7','253','1562','2022-12-06','2022-12-06','일반');

SELECT * FROM store_type;
INSERT INTO store_type VALUES('0','1인분');
INSERT INTO store_type VALUES('1','족발/보쌈');
INSERT INTO store_type VALUES('2','찜/탕/찌개');
INSERT INTO store_type VALUES('3','돈까스/회/일식');
INSERT INTO store_type VALUES('4','피자');
INSERT INTO store_type VALUES('5','고기/구이');
INSERT INTO store_type VALUES('6','야식');
INSERT INTO store_type VALUES('7','양식');
INSERT INTO store_type VALUES('8','치킨');
INSERT INTO store_type VALUES('9','중식');
INSERT INTO store_type VALUES('10','아시안');
INSERT INTO store_type VALUES('11','백반/죽/국수');
INSERT INTO store_type VALUES('12','도시락');
INSERT INTO store_type VALUES('13','분식');
INSERT INTO store_type VALUES('14','카페/디저트');
INSERT INTO store_type VALUES('15','패스트푸드');