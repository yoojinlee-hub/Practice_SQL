CREATE VIEW	�����(�����̵�, ���̸�, ����)
AS SELECT	�����̵�, ���̸�, ����
	FROM	��
	WHERE	��� = 'vip'
WITH CHECK OPTION;

SELECT * FROM	��;
INSERT INTO ����� VALUES ('tomato', 'ȫ�浿', 50);

CREATE  VIEW	   ��ü����ǰ��(������ü, ��ǰ��)
AS  SELECT	   ������ü, COUNT(*)
	FROM	   ��ǰ
	GROUP BY  ������ü
WITH CHECK OPTION;

SELECT  *  FROM	   ��ü����ǰ��;

SELECT  *  FROM  �����  WHERE  ���� >= 30;

CREATE VIEW	��ǰ1
AS SELECT	��ǰ��ȣ, ���, ������ü
	FROM	��ǰ
WITH CHECK OPTION;

SELECT * FROM	��ǰ1;


CREATE VIEW	��ǰ2
AS SELECT	��ǰ��, ���, ������ü
	FROM	��ǰ
WITH CHECK OPTION;

SELECT * FROM	��ǰ2;

INSERT INTO	��ǰ1	VALUES ('p08', 1000, '�ż���ǰ');
SELECT * FROM	��ǰ1; 

SELECT * FROM	��ǰ;

INSERT INTO	��ǰ2	VALUES ('�ÿ��ø�', 1000, '�ż���ǰ');

DROP VIEW �����;
