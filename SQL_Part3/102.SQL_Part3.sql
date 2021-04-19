-- 102. 실수로 지운 데이터 복구하기4

-- 현재 시각 확인
SELECT SYSTIMESTAMP FROM DUAL;

-- 데이터 변경
UPDATE EMP SET SAL = 9000 WHERE ENAME = 'SCOTT';
COMMIT;
UPDATE EMP SET JOB = 'PRO' WHERE ENAME = 'SCOTT';
COMMIT;

-- 데이터 변경 내역 확인
-- 플래쉬백 골든타임인 15분 이전을 적으면 오류 발생
SELECT ENAME, JOB, SAL, VERSIONS_STARTTIME, VERSIONS_ENDTIME, VERSIONS_OPERATION
FROM EMP
VERSIONS BETWEEN TIMESTAMP
        TO_TIMESTAMP('2021-04-19 18:19:00', 'RRRR-MM-DD HH24:MI:SS')
        AND MAXVALUE
WHERE ENAME = 'SCOTT'
ORDER BY VERSIONS_STARTTIME;

-- 데이터 되돌리기
FLASHBACK TABLE EMP
TO TIMESTAMP TO_TIMESTAMP('2021-04-19 18:19:00', 'RRRR-MM-DD HH24:MI:SS');
COMMIT;