SELECT	��ǰ��, �ܰ�
FROM	��ǰ
WHERE	������ü = (SELECT   ������ü
                    	    FROM    ��ǰ
                    	    WHERE  ��ǰ�� = '���޺�Ŷ');
                            
SELECT	���̸�, ������
FROM	��
WHERE	������ = (SELECT  MAX(������)  FROM  ��); 

SELECT	��ǰ��, ������ü
FROM	��ǰ
WHERE	��ǰ��ȣ  NOT  IN (SELECT	  �ֹ���ǰ   
			  FROM	  �ֹ�
			  WHERE	  �ֹ���  = 'banana'); 

SELECT	��ǰ��, �ܰ�, ������ü
FROM	��ǰ
WHERE	�ܰ�  > ALL (SELECT   �ܰ�   
		     FROM     ��ǰ
		     WHERE    ������ü  = '���ѽ�ǰ'); 
             
SELECT	���̸�
FROM	��
WHERE	EXISTS (SELECT  *   
		FROM    �ֹ�
		WHERE   �ֹ����� = '2019-03-15' 
		        AND  �ֹ�.�ֹ��� = ��.�����̵�); 

SELECT	���̸�
FROM	��
WHERE	NOT  EXISTS (SELECT  *   
		     FROM    �ֹ�
		     WHERE   �ֹ����� = '2019-03-15' 
  	       	             AND  �ֹ�.�ֹ��� = ��.�����̵�); 

INSERT  
INTO	��(�����̵�, ���̸�, ����, ���, ����, ������)
VALUES ('strawberry', '������', 30, 'vip', '������', 100);

SELECT  *  FROM  ��;  

INSERT  
INTO    ��(�����̵�, ���̸�, ����, ���, ������)
VALUES ('tomato', '������', 36, 'gold', 4000);

SELECT   *  FROM  ��;

UPDATE	��ǰ  
SET	��ǰ�� = '��ū����'
WHERE	��ǰ��ȣ = 'p03';

SELECT  *  FROM  ��ǰ;

UPDATE	��ǰ  
SET	�ܰ� = �ܰ� * 1.1;

SELECT  *  FROM  ��ǰ; 

UPDATE	�ֹ�  
SET	���� = 5
WHERE   �ֹ��� IN (SELECT	�����̵�
 		     FROM	��
		     WHERE	���̸� = '����ȭ');

SELECT  *  FROM	�ֹ�; 

DELETE
FROM	�ֹ�  
WHERE	�ֹ����� = '2019-05-22';

SELECT  *  FROM  �ֹ�; 

DELETE     
FROM	�ֹ�
WHERE	�ֹ��� IN (SELECT   �����̵�
 	             FROM    ��
		     WHERE   ���̸� = '����ȭ');

SELECT  *  FROM  �ֹ�;  

DELETE
FROM	 �ֹ�;