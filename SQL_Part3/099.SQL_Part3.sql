-- 099. 실수로 지운 데이터 복구하기


-- 현 데이터 확인
SELECT ENAME, SAL
FROM EMP
WHERE ENAME = 'KING';

-- 데이터 수정
UPDATE EMP
SET SAL = 0
WHERE ENAME = 'KING';

COMMIT;

-- 과거 5분전 데이터 확인
SELECT ENAME, SAL
FROM EMP
AS OF TIMESTAMP (SYSTIMESTAMP - INTERVAL '5' MINUTE)
-- 시간 지정해도 가능
-- AS OF TIMESTAMP '21/04/19 17:40:00'
WHERE ENAME = 'KING';