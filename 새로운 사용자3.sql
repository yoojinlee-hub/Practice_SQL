CREATE VIEW	우수고객(고객아이디, 고객이름, 나이)
AS SELECT	고객아이디, 고객이름, 나이
	FROM	고객
	WHERE	등급 = 'vip'
WITH CHECK OPTION;

SELECT * FROM	고객;
INSERT INTO 우수고객 VALUES ('tomato', '홍길동', 50);

CREATE  VIEW	   업체별제품수(제조업체, 제품수)
AS  SELECT	   제조업체, COUNT(*)
	FROM	   제품
	GROUP BY  제조업체
WITH CHECK OPTION;

SELECT  *  FROM	   업체별제품수;

SELECT  *  FROM  우수고객  WHERE  나이 >= 30;

CREATE VIEW	제품1
AS SELECT	제품번호, 재고량, 제조업체
	FROM	제품
WITH CHECK OPTION;

SELECT * FROM	제품1;


CREATE VIEW	제품2
AS SELECT	제품명, 재고량, 제조업체
	FROM	제품
WITH CHECK OPTION;

SELECT * FROM	제품2;

INSERT INTO	제품1	VALUES ('p08', 1000, '신선식품');
SELECT * FROM	제품1; 

SELECT * FROM	제품;

INSERT INTO	제품2	VALUES ('시원냉면', 1000, '신선식품');

DROP VIEW 우수고객;
