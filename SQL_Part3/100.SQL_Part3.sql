-- 100. 실수로 지운 데이터 복구하기2

-- 테이블을 플래쉬백 가능한 상태로 설정
ALTER TABLE EMP ENABLE ROW MOVEMENT;

-- 설정 적용 확인
SELECT ROW_MOVEMENT
FROM USER_TABLES
WHERE TABLE_NAME = 'EMP';

-- 테이블을 10분 전으로 되돌리기
FLASHBACK TABLE EMP
TO TIMESTAMP (SYSTIMESTAMP - INTERVAL '10' MINUTE(2));

-- 특정 시점으로 되돌리기
FLASHBACK TABLE EMP
TO TIMESTAMP TO_TIMESTAMP('21/04/19 17:40:00', 'RR/MM/DD HH24:MI:SS');