-- 101. 실수로 지운 데이터 복구하기3

-- 테이블 지우기
DROP TABLE EMP;

-- 휴지통에서 테이블 확인하기
SELECT ORIGINAL_NAME, DROPTIME
FROM USER_RECYCLEBIN;

-- 휴지통에서 복원하기 (이름 변경 가능)
FLASHBACK TABLE EMP TO BEFORE DROP RENAME TO EMP;