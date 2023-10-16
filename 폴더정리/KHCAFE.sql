CREATE TABLE cafes(
    cafe_id INT PRIMARY KEY,
    cname VARCHAR2(255) NOT NULL,
    address VARCHAR2(255),
    phone_number VARCHAR2(15),
    operating_hours VARCHAR2(255)
);

CREATE SEQUENCE cafe_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
CREATE OR REPLACE TRIGGER cafe_tigger
BEFORE INSERT ON cafes
FOR EACH ROW
BEGIN
    SELECT cafe_seq.NEXTVAL
    INTO:NEW.cafe_id
    FROM dual;
END;
/



-- 1
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('카페 서울', '서울시 강남구 역삼로 123', '02-555-1234', '월-금: 07:00-21:00, 주말: 08:00-20:00');

-- 2
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('종로 그 집', '서울시 종로구 인사동 45', '02-777-4567', '매일: 09:00-22:00');

-- 3
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('in 바다', '부산시 해운대구 해운대로 67', '051-888-7890', '월-금: 08:30-20:30, 주말: 09:00-19:00');

-- 4
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('대구 중앙', '대구시 중구 중앙대로 34', '053-222-5678', '매일: 07:30-19:30');

-- 5
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('인천행', '인천시 남동구 도화동 56', '032-333-6789', '월-금: 08:00-20:00, 주말: 09:00-18:00');

-- 6
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('광주 토박이', '광주시 서구 상무대로 78', '062-444-5678', '월-금: 07:00-22:00, 주말: 08:00-21:00');

-- 7
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('아이스 대전', '대전시 중구 대흥로 56', '042-555-7890', '매일: 09:00-20:30');

-- 8
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('오늘도 화남구', '울산시 남구 번영로 34', '052-666-3456', '월-금: 08:30-19:30, 주말: 09:00-18:00');

-- 9
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('라떼는 강서에서', '서울시 강서구 공항로 56', '02-777-2345', '매일: 07:00-21:30');

-- 10
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('부산시렵네', '부산시 서구 부전로 45', '051-888-4567', '월-금: 08:00-20:30, 주말: 09:00-19:00');

-- 11
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('캡푸치노', '대구시 수성구 수성로 67', '053-333-5678', '매일: 09:30-20:00');

-- 12
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('인키아또', '인천시 남구 구월로 78', '032-444-7890', '월-금: 08:00-22:00, 주말: 09:00-21:00');

-- 13
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('광주는 라떼 천국', '광주시 동구 서석로 56', '062-555-2345', '매일: 07:00-20:30');

-- 14
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('인 월드 계백', '대전시 서구 계백로 45', '042-888-4567', '월-금: 08:00-21:00, 주말: 09:00-20:00');

-- 15
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('hi round', '울산시 중구 신정로 34', '052-333-5678', '매일: 09:00-19:30');

-- 16
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('song pa seoul', '서울시 송파구 올림픽로 56', '02-444-7890', '월-금: 08:00-20:00, 주말: 09:00-18:00');

-- 17
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('동포카토', '부산시 동구 중앙대로 67', '051-555-2345', '매일: 07:00-22:00');

-- 18
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('휴양지 대구시', '대구시 남구 대명로 78', '053-666-4567', '월-금: 08:30-19:30, 주말: 09:00-18:00');

-- 19
INSERT INTO cafes (name, address, phone_number, operating_hours)
VALUES ('바나쁘레소', '서울시 역삼시티동', '02-666-6666', '월-금: 08:30-19:30, 주말: 09:00-18:00');




