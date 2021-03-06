-- 035. IF문을 SQL로 구현하기2

-- SAL 구간에 따라 보너스 추가
SELECT ENAME, SAL,
CASE WHEN SAL >= 3000 THEN 500
     WHEN SAL >= 2000 THEN 300
     WHEN SAL >= 1000 THEN 200
ELSE 0 END AS BONUS
FROM EMP;

-- NULL의 유무에 따라 보너스 추가(CASE,NVL)
SELECT ENAME, COMM,
CASE WHEN COMM IS NULL THEN 500
ELSE 0 END AS BONUS,
NVL2(COMM,0,500) AS BONUS2
FROM EMP;

-- JOB에 따라 보너스 추가
SELECT ENAME, JOB,
CASE WHEN JOB IN ('SALESMAN', 'ANALYST') THEN 500
     WHEN JOB = 'CLERK' THEN 400
     ELSE 0 END AS BONUS
FROM EMP;