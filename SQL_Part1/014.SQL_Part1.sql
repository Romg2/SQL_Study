-- 014. 비교 연산자 배우기5
-- IN
SELECT ENAME, SAL, JOB
FROM EMP
WHERE JOB IN ('SALESMAN', 'ANALYST', 'MANAGER');

-- NOT IN
SELECT ENAME, SAL, JOB
FROM EMP
WHERE JOB NOT IN ('SALESMAN', 'ANALYST', 'MANAGER');