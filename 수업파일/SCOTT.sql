/*
--��� �μ� ���� ��ȸ (DEPARTMENT)
SELECT * FROM department;
--��� ��� ���� ��ȸ (EMPLOYEE)
SELECT * FROM EMPLOYEE;
--��� �޿� ��� ��ȸ (SALGRADE)
SELECT * FROM SALGRADE;
--Ư�� �μ��� ��� ��� ���� ��ȸ (�� : �μ���ȣ 20)
SELECT * FROM EMPLOYEE WHERE DNO = 20;
--Ư�� �޿� ��޿� ���ϴ� ��� ���� ��ȸ (��; �޿� ��� 3�� ���� ���)
SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 
(SELECT LOSAL FROM SALGRADE WHERE GRADE = 3)
AND (SELECT HISAL FROM SALGRADE WHERE GRADE = 3);
*/

--��� ���� ���� (��: ��� ��ȣ 7369�� �޿��� 1000���� �޿� ������Ʈ)
-- ������Ʈ ���̺� ������Ʈ�ҳ���       �÷�  = �����ҳ��� ��� �÷� = �����ؾ��� �κ�;
UPDATE EMPLOYEE SET SALARY = 1000 WHERE ENO = 7369;

--�����ȣ�� 7369 �� ����� �޿��� 2000���� ������Ʈ
UPDATE EMPLOYEE SET SALARY = 2000 WHERE ENO = 7369;

--�μ���ȣ�� 10�� ������� �޿��� 3000���� ������Ʈ
UPDATE EMPLOYEE SET SALARY = 3000 WHERE DNO = 10;

--Ư���μ��� ��� ����� ���� ������Ʈ (��: �μ� ��ȣ 30�� ���� ��� ����� ������ 'manager'
UPDATE EMPLOYEE SET JOB = 'MANAGER' WHERE DNO = 30;

--Ư�� ����� ��� ������Ʈ(��: �����ȣ 7499�� ��縦 �����ȣ 7566���� ����)
UPDATE EMPLOYEE SET manager = 7566 WHERE ENO = 7499;

--Ư�� �μ��� ��� ����� �޿� �λ� (�μ���ȣ 20�� ���� ��� ����� �޿��� 10%�λ� (*1.10))
UPDATE EMPLOYEE SET SALARY = (SALARY*1.10) WHERE DNO = 20;

--Ư�� ����� �޿��� ������ ������Ʈ ( �����ȣ 7788 �޿�(SALARY)�� 3500�� ������(COMMISSION) 500����)
UPDATE EMPLOYEE SET SALARY = 3500,COMMISSION = 500 WHERE ENO = 7788;

--Ư�� ����� ������� ���� (��: ��� ��ȣ 7521�� ������ڸ� '2022-01-15'�� ����):
UPDATE EMPLOYEE SET HIREDATE = TO_DATE('2022-01-15','YYYY-MM-DD') WHERE ENO = 7521;
--Ư�� �޿� ����� �ּ� �޿� ���� (��: �޿� ��� 1�� �ּ� �޿��� 700���� 750���� ����):
UPDATE SALGRADE SET LOSAL = 750 WHERE GRADE = 1;
--SALGRADE ���̺� Ȱ��

--Ư�� �μ��� ������� �ٸ� �μ��� �̵� (��: �μ� ��ȣ 40�� ���� ��� ����� �μ� ��ȣ 10���� �̵�)
INSERT INTO "EMPLOYEE"(ENO, ENAME, JOB, MANAGER, HIREDATE, SALARY,  DNO)
VALUES (7777, 'PARK', 'CLERK', 7839, TO_DATE('2023-10-06','YYYY-MM-DD'), 5000, 40);
UPDATE EMPLOYEE SET DNO = 10 WHERE DNO = 40;

--Ư�� �޿� ��� ���� (��: �޿� ��� 5 ����):
DELETE FROM salgrade WHERE GRADE = 5;

--Ư�� �μ��� ���� ����� ��� ���� ���� (��: �μ� ��ȣ 30�� ���� ��� ��� ����):
DELETE FROM EMPLOYEE WHERE DNO = 30;

--���ο� ����� EMPLOYEE ���̺� �߰��ϴ� SQL��:
INSERT INTO "EMPLOYEE" (ENO, ENAME, JOB, MANAGER, HIREDATE, SALARY, DNO)
VALUES (1577, 'YUM', 'MANAGER', 7499, TO_DATE('1080-05-25','YYYY-MM-DD'), 8000, 40);
INSERT INTO "EMPLOYEE" (ENO, ENAME, JOB, MANAGER, HIREDATE, SALARY, DNO)
VALUES (1567, 'AYUM', 'SMITH', 7499, TO_DATE('1380-05-13','YYYY-MM-DD'), 5000, 20);
INSERT INTO "EMPLOYEE" (ENO, ENAME, JOB, MANAGER, HIREDATE, SALARY, DNO)
VALUES (1857, 'YUMA', 'SMITH', 7299, TO_DATE('1200-07-25','YYYY-MM-DD'), 6000, 10);

--SMITH�� ������� ã��
SELECT * FROM EMPLOYEE
WHERE ename = 'SMITH';

--��� ����� �̸��� �޿��� �����ϴ� SQL��:
SELECT ENAME,SALARY FROM EMPLOYEE;

--EMPLOYEE ���̺��� �μ� ��ȣ�� 10�̰� ������ 'ANALYST'�� ������� ��� �޿��� ����
--SELECT���� AVG(SALARY)���
UPDATE EMPLOYEE SET SALARY = 2500 WHERE ENO = 7788;

SELECT AVG(SALARY) FROM EMPLOYEE
WHERE DNO = 20 AND JOB = 'ANALYST';

--EMPLOYEE ���̺��� �޿��� 1500���� 2500 ������ ������� �̸��� �޿��� ����
//SELECT ENAME, SALARY FROM EMPLOYEE WHERE BETWEEN 1500 AND 2500;
SELECT ENAME,JOB FROM EMPLOYEE
WHERE SALARY >= 1500 AND SALARY <= 2500;


--EMPLOYEE ���̺��� �����ڰ� ���� ����� �̸��� ����
--WHERE ���� IS NULL���
SELECT ENAME FROM EMPLOYEE WHERE MANAGER IS NULL;
