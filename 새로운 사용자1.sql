INSERT INTO �� VALUES ('apple', '����ȭ', 20, 'gold', '�л�', 1000);
INSERT INTO �� VALUES ('banana', '�輱��', 25, 'vip', '��ȣ��', 2500);
INSERT INTO �� VALUES ('carrot', '���', 28, 'gold', '����', 4500);
INSERT INTO �� VALUES ('orange', '����', 22, 'silver', '�л�', 0);
INSERT INTO �� VALUES ('melon', '������', 35, 'gold', 'ȸ���', 5000);
INSERT INTO �� VALUES ('peach', '������', NULL, 'silver', '�ǻ�', 300);
INSERT INTO �� VALUES ('pear', 'ä����', 31, 'silver', 'ȸ���', 500);

INSERT INTO ��ǰ VALUES ('p01', '�׳ɸ���', 5000, 4500, '���ѽ�ǰ');
INSERT INTO ��ǰ VALUES ('p02', '�ſ��̸�', 2500, 5500, '�α�Ǫ��');
INSERT INTO ��ǰ VALUES ('p03', '��������', 3600, 2600, '�Ѻ�����');
INSERT INTO ��ǰ VALUES ('p04', '�������ݸ�', 1250, 2500, '�Ѻ�����');
INSERT INTO ��ǰ VALUES ('p05', '��ū���', 2200, 1200, '���ѽ�ǰ');
INSERT INTO ��ǰ VALUES ('p06', '����쵿', 1000, 1550, '�α�Ǫ��');
INSERT INTO ��ǰ VALUES ('p07', '���޺�Ŷ', 1650, 1500, '�Ѻ�����');

INSERT INTO �ֹ� VALUES ('o01', 'apple', 'p03', 10, '����� ������', '19/01/01');
INSERT INTO �ֹ� VALUES ('o02', 'melon', 'p01', 5, '��õ�� ��籸', '19/01/10');
INSERT INTO �ֹ� VALUES ('o03', 'banana', 'p06', 45, '��⵵ ��õ��', '19/01/11');
INSERT INTO �ֹ� VALUES ('o04', 'carrot', 'p02', 8, '�λ�� ������', '19/02/01');
INSERT INTO �ֹ� VALUES ('o05', 'melon', 'p06', 36, '��⵵ ���ν�', '19/02/20');
INSERT INTO �ֹ� VALUES ('o06', 'banana', 'p01', 19, '��û�ϵ� ������', '19/03/02');
INSERT INTO �ֹ� VALUES ('o07', 'apple', 'p03', 22, '����� ��������', '19/03/15');
INSERT INTO �ֹ� VALUES ('o08', 'pear', 'p02', 50, '������ ��õ��', '19/04/10');
INSERT INTO �ֹ� VALUES ('o09', 'banana', 'p04', 15, '���󳲵� ������', '19/04/11');
INSERT INTO �ֹ� VALUES ('o10', 'carrot', 'p03', 20, '��⵵ �Ⱦ��', '19/05/22');

SELECT	AVG(�ܰ�)
FROM	��ǰ;
 
SELECT	SUM(���)  AS  "��� �հ�"
FROM	��ǰ
WHERE	������ü = '�Ѻ�����';

SELECT	COUNT(�����̵�) AS ����
FROM	��;

SELECT	COUNT(����) AS ����
FROM	��;

SELECT	COUNT(*) AS ����
FROM	��;

SELECT	COUNT(DISTINCT ������ü) AS "������ü ��"
FROM	��ǰ;

SELECT	�ֹ���ǰ, SUM(����) AS ���ֹ�����
FROM	�ֹ�
GROUP BY   �ֹ���ǰ;

SELECT	SUM(����) AS ���ֹ�����
FROM	�ֹ�
GROUP BY   �ֹ���ǰ;

SELECT	������ü, COUNT(*) AS ��ǰ��, MAX(�ܰ�) AS �ְ�
FROM	��ǰ
GROUP BY   ������ü;

SELECT	������ü, COUNT(*) AS ��ǰ��, MAX(�ܰ�) AS �ְ�
FROM	��ǰ
GROUP BY  ������ü  HAVING COUNT(*) >= 3;

SELECT	���, COUNT(*) AS ����, AVG(������) AS ���������
FROM	��
GROUP BY  ���  HAVING AVG(������) >= 1000;

SELECT	�ֹ���ǰ, �ֹ���, SUM(����) AS ���ֹ�����
FROM	�ֹ�
GROUP BY  �ֹ���ǰ, �ֹ���; 

SELECT	��ǰ.��ǰ��
FROM	��ǰ, �ֹ�
WHERE	�ֹ�.�ֹ��� = 'banana'  AND  ��ǰ.��ǰ��ȣ = �ֹ�.�ֹ���ǰ; 

SELECT	�ֹ�.�ֹ���ǰ, �ֹ�.�ֹ�����
FROM	��, �ֹ�
WHERE	��.���� >= 30  AND  ��.�����̵� = �ֹ�.�ֹ���; 