--특정 이름이 있는 아이디 비번 취미 바꾸기
MERGE
INTO ID_PW I
USING MEMBERINFO M
ON (M.MNO = I.MNO AND M.MNAME = '박창규')
WHEN MATCHED THEN
UPDATE SET USER_ID = 'MONKSAMPLE', USER_PW = 'M123SS';

