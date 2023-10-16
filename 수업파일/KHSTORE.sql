

/*
CREATE TABLE FridayTABLE (
id NUMBER(5) PRIMARY KEY,
name VARCHAR2(50),
description VARCHAR2(100),
birthdate DATE
);

INSERT INTO fridaytable (id, name, description, birthdate)
VALUES (1, '박창규', '금요일천사', TO_DATE('1970-05-25','YYYY-MM-DD'));

INSERT INTO fridaytable (id, name, description, birthdate)
VALUES (2, '나세희', '8월의 요정', TO_DATE('1997-08-16','YYYY-MM-DD'));

INSERT INTO fridaytable (id, name, description, birthdate)
VALUES (3, '주서경', '11월의 악마', TO_DATE('2002-11-29','YYYY-MM-DD'));

INSERT INTO fridaytable (id, name, description, birthdate)
VALUES (4, '김민수', '2월의 요정', TO_DATE('2000-02-07','YYYY-MM-DD'));

INSERT INTO fridaytable (id, name, description, birthdate)
VALUES (5, '이미혜', '2월의 천사', TO_DATE('2001-02-09','YYYY-MM-DD'));
*/
--오름차순 정렬 // --ORDER BY : 결과 정렬
SELECT * FROM fridaytable ORDER BY id;

--count 행의 수를 세어줍니다.
SELECT COUNT(*) AS row_COUNT FROM fridaytable;

--테이블 구조 변경하기 // --열의 크기 늘리기
ALTER TABLE fridaytable MODIFY description VARCHAR2(200);

--SUM 숫자 열의 합을 계산 // --모든 id 값을 합산
SELECT SUM(id) AS id_sum FROM fridaytable;

--TO_CHAR 날짜를 문자열로 변환
SELECT name, TO_CHAR(birthdate, 'YYYY-MM-DD') AS birthdate_str FROM fridaytable;

--LENGTH : 문자열의 길이 반환
SELECT description, LENGTH(description) AS description_len FROM fridaytable;

INSERT INTO fridaytable (id, name, description, birthdate)
VALUES (6, 'Jane Smith', '만나쒀 반카워유!~', TO_DATE('2007-05-05','YYYY-MM-DD'));

-- UPPER 문자열을 대문자로 변환
SELECT name, UPPER(name) AS upper_name FROM fridaytable;

-- LOWER 문자열을 소문자로 변환
SELECT name, LOWER(name) AS upper_name FROM fridaytable;

-- ROUNT 숫자를 반올림 // --birthdate 열의 연도를 반올림하여 출력 
-- EXTRACT = 날짜 값에서 연도를 추출
SELECT name, ROUND(EXTRACT(YEAR FROM birthdate)) AS BirthYEAR FROM fridaytable;

-- MIN MAX
SELECT MIN(id) AS id_sum FROM fridaytable;
SELECT MAX(id) AS id_sum FROM fridaytable;