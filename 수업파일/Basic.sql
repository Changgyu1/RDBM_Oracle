--1.
SELECT DEPARTMENT_NAME AS 학과_명, CATEGORY AS 계열
FROM TB_DEPARTMENT;

--2.

--3.
SELECT S.STUDENT_NAME
FROM TB_STUDENT S, TB_DEPARTMENT D
WHERE D.DEPARTMENT_NO = '001'
;