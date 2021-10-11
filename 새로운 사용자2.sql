SELECT	제품명, 단가
FROM	제품
WHERE	제조업체 = (SELECT   제조업체
                    	    FROM    제품
                    	    WHERE  제품명 = '달콤비스킷');
                            
SELECT	고객이름, 적립금
FROM	고객
WHERE	적립금 = (SELECT  MAX(적립금)  FROM  고객); 

SELECT	제품명, 제조업체
FROM	제품
WHERE	제품번호  NOT  IN (SELECT	  주문제품   
			  FROM	  주문
			  WHERE	  주문고객  = 'banana'); 

SELECT	제품명, 단가, 제조업체
FROM	제품
WHERE	단가  > ALL (SELECT   단가   
		     FROM     제품
		     WHERE    제조업체  = '대한식품'); 
             
SELECT	고객이름
FROM	고객
WHERE	EXISTS (SELECT  *   
		FROM    주문
		WHERE   주문일자 = '2019-03-15' 
		        AND  주문.주문고객 = 고객.고객아이디); 

SELECT	고객이름
FROM	고객
WHERE	NOT  EXISTS (SELECT  *   
		     FROM    주문
		     WHERE   주문일자 = '2019-03-15' 
  	       	             AND  주문.주문고객 = 고객.고객아이디); 

INSERT  
INTO	고객(고객아이디, 고객이름, 나이, 등급, 직업, 적립금)
VALUES ('strawberry', '최유경', 30, 'vip', '공무원', 100);

SELECT  *  FROM  고객;  

INSERT  
INTO    고객(고객아이디, 고객이름, 나이, 등급, 적립금)
VALUES ('tomato', '정은심', 36, 'gold', 4000);

SELECT   *  FROM  고객;

UPDATE	제품  
SET	제품명 = '통큰파이'
WHERE	제품번호 = 'p03';

SELECT  *  FROM  제품;

UPDATE	제품  
SET	단가 = 단가 * 1.1;

SELECT  *  FROM  제품; 

UPDATE	주문  
SET	수량 = 5
WHERE   주문고객 IN (SELECT	고객아이디
 		     FROM	고객
		     WHERE	고객이름 = '정소화');

SELECT  *  FROM	주문; 

DELETE
FROM	주문  
WHERE	주문일자 = '2019-05-22';

SELECT  *  FROM  주문; 

DELETE     
FROM	주문
WHERE	주문고객 IN (SELECT   고객아이디
 	             FROM    고객
		     WHERE   고객이름 = '정소화');

SELECT  *  FROM  주문;  

DELETE
FROM	 주문;