INSERT INTO 고객 VALUES ('apple', '정소화', 20, 'gold', '학생', 1000);
INSERT INTO 고객 VALUES ('banana', '김선우', 25, 'vip', '간호사', 2500);
INSERT INTO 고객 VALUES ('carrot', '고명석', 28, 'gold', '교사', 4500);
INSERT INTO 고객 VALUES ('orange', '김용욱', 22, 'silver', '학생', 0);
INSERT INTO 고객 VALUES ('melon', '성원용', 35, 'gold', '회사원', 5000);
INSERT INTO 고객 VALUES ('peach', '오형준', NULL, 'silver', '의사', 300);
INSERT INTO 고객 VALUES ('pear', '채광주', 31, 'silver', '회사원', 500);

INSERT INTO 제품 VALUES ('p01', '그냥만두', 5000, 4500, '대한식품');
INSERT INTO 제품 VALUES ('p02', '매운쫄면', 2500, 5500, '민국푸드');
INSERT INTO 제품 VALUES ('p03', '쿵떡파이', 3600, 2600, '한빛제과');
INSERT INTO 제품 VALUES ('p04', '맛난초콜릿', 1250, 2500, '한빛제과');
INSERT INTO 제품 VALUES ('p05', '얼큰라면', 2200, 1200, '대한식품');
INSERT INTO 제품 VALUES ('p06', '통통우동', 1000, 1550, '민국푸드');
INSERT INTO 제품 VALUES ('p07', '달콤비스킷', 1650, 1500, '한빛제과');

INSERT INTO 주문 VALUES ('o01', 'apple', 'p03', 10, '서울시 마포구', '19/01/01');
INSERT INTO 주문 VALUES ('o02', 'melon', 'p01', 5, '인천시 계양구', '19/01/10');
INSERT INTO 주문 VALUES ('o03', 'banana', 'p06', 45, '경기도 부천시', '19/01/11');
INSERT INTO 주문 VALUES ('o04', 'carrot', 'p02', 8, '부산시 금정구', '19/02/01');
INSERT INTO 주문 VALUES ('o05', 'melon', 'p06', 36, '경기도 용인시', '19/02/20');
INSERT INTO 주문 VALUES ('o06', 'banana', 'p01', 19, '충청북도 보은군', '19/03/02');
INSERT INTO 주문 VALUES ('o07', 'apple', 'p03', 22, '서울시 영등포구', '19/03/15');
INSERT INTO 주문 VALUES ('o08', 'pear', 'p02', 50, '강원도 춘천시', '19/04/10');
INSERT INTO 주문 VALUES ('o09', 'banana', 'p04', 15, '전라남도 목포시', '19/04/11');
INSERT INTO 주문 VALUES ('o10', 'carrot', 'p03', 20, '경기도 안양시', '19/05/22');


SELECT	고객아이디, 고객이름, 등급
FROM	고객;

SELECT	고객아이디, 고객이름, 나이, 등급, 직업, 적립금
FROM	고객;

SELECT	*
FROM	고객;

SELECT	ALL   제조업체
FROM　　제품;

SELECT	DISTINCT   제조업체
FROM	제품;

SELECT	제품명, 단가 AS 가격
FROM	제품;

SELECT	제품명, 단가 + 500 AS "조정 단가"
FROM	제품;

SELECT	제품명, 단가*1.1 "조정 단가"
FROM	제품;

SELECT	제품명, 재고량, 단가
FROM	제품
WHERE 	제조업체 = '한빛제과'; 

SELECT	주문제품, 수량, 주문일자, 주문고객
FROM	주문
WHERE	주문고객 = 'apple'  AND  수량 >= 15;

SELECT  주문제품, 수량, 주문일자, 주문고객
FROM    주문
WHERE   주문고객 = 'apple'  OR  수량 >= 15;

SELECT	제품명, 단가, 제조업체
FROM	제품
WHERE	단가 >= 2000  AND  단가 <= 3000;

SELECT	고객이름, 나이, 등급, 적립금
FROM	고객
WHERE	고객이름 LIKE '김%' OR "등급"='gold';

SELECT	고객아이디, 고객이름, 등급
FROM	고객
WHERE	고객아이디 LIKE '_____';

SELECT	고객이름
FROM	고객
WHERE	나이 IS NULL;

SELECT	고객이름
FROM	고객
WHERE	나이 IS NOT NULL;

SELECT	고객이름, 등급, 나이
FROM	고객
ORDER BY   나이  DESC;

SELECT	주문고객, 주문제품, 수량, 주문일자
FROM	주문
WHERE	수량 >= 10
ORDER BY  주문제품 ASC, 수량 DESC;
