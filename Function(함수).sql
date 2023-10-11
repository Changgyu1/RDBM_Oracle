 --ORDER BY : 결과 정렬
 --이름을 오름차순으로 정렬
 SELECT * FROM fridaytable ORDER BY birthdate;
 
 --COUNT 행의 수를 세어줍니다.
 SELECT COUNT(*) AS row_COUNT FROM fridaytable;
 
 -- 테이블 구조 변경하기
 -- 열의 크기 늘리기
-- description 열의 크기를 늘리기
--ALTER TABLE fridaytable MODIFY description VARCHAR2(200);

 --SUM 숫자 열의 합을 계산
 --모든 id 값을 합산
 SELECT SUM(id) AS id_sum FROM fridaytable;
 
 --TO_CHAR 날짜를 문자열로 변환
 SELECT name, TO_CHAR(birthdate, 'YYYY-MM-DD') AS birthdate_str From fridaytable;
 
 --LENGTH : 문자열의 길이 반환
 SELECT description, LENGTH(description) AS name_len FROM fridaytable;
 
 INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (6, 'Jane Smith', '만나써 반가워요!', TO_DATE('2007-05-05', 'YYYY-MM-DD'));
 
 -- UPPER 문자열을 대문자로 변환
 SELECT name, UPPER(name) AS upper_name FROM fridaytable;
 -- LOWER 문자열을 소문자로 변환
 SELECT name, LOWER(name) AS lower_name FROM fridaytable;
 --ROUNT 숫자를 반올림
 --birthdate 열의 연도를 반올림하여 출력
 --EXTRACT 날짜 값에서 연도를 추출
 SELECT name, ROUND(EXTRACT(YEAR FROM birthdate)) AS BirthYEAR FROM fridaytable;
 
 
 
--NVL (Null Value) : null 값을 다른 값으로 대체
Select ename, nvl(commission, 0) as commission
from employee;

--NEXT DAY 다음 주어진 요일 날짜 찾기
--select ename, next_day(sysdate, 'FRIDAY') as next_day from dual;

--TRUNC : 날짜 또는 숫자의 소수부 제거
SELECT ENAME, TRUNC(salary) as TRUNC_SALAY from employee;

--Floor, CEIL, ROUND : 숫자 반올림 및 내림
select ename, floor(salary) as FLOOR_SALary from employee;
select ename, CEIL(salary) as CEIL_SALARY from employee;
select ename, round(salary, 2) as round_Salary from employee;

-- ABS :  절대값 계산 -를 없앰
select ename, abs(commission) as ABS_COMMITION from employee;
