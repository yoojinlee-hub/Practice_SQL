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

SELECT	AVG(단가)
FROM	제품;
 
SELECT	SUM(재고량)  AS  "재고량 합계"
FROM	제품
WHERE	제조업체 = '한빛제과';

SELECT	COUNT(고객아이디) AS 고객수
FROM	고객;

SELECT	COUNT(나이) AS 고객수
FROM	고객;

SELECT	COUNT(*) AS 고객수
FROM	고객;

SELECT	COUNT(DISTINCT 제조업체) AS "제조업체 수"
FROM	제품;

SELECT	주문제품, SUM(수량) AS 총주문수량
FROM	주문
GROUP BY   주문제품;

SELECT	SUM(수량) AS 총주문수량
FROM	주문
GROUP BY   주문제품;

SELECT	제조업체, COUNT(*) AS 제품수, MAX(단가) AS 최고가
FROM	제품
GROUP BY   제조업체;

SELECT	제조업체, COUNT(*) AS 제품수, MAX(단가) AS 최고가
FROM	제품
GROUP BY  제조업체  HAVING COUNT(*) >= 3;

SELECT	등급, COUNT(*) AS 고객수, AVG(적립금) AS 평균적립금
FROM	고객
GROUP BY  등급  HAVING AVG(적립금) >= 1000;

SELECT	주문제품, 주문고객, SUM(수량) AS 총주문수량
FROM	주문
GROUP BY  주문제품, 주문고객; 

SELECT	제품.제품명
FROM	제품, 주문
WHERE	주문.주문고객 = 'banana'  AND  제품.제품번호 = 주문.주문제품; 

SELECT	주문.주문제품, 주문.주문일자
FROM	고객, 주문
WHERE	고객.나이 >= 30  AND  고객.고객아이디 = 주문.주문고객; 